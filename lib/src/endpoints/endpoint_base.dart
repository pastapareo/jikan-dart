part of jikan;

abstract class EndpointBase {
  String get _path;

  final JikanBase _api;

  EndpointBase(this._api);

  Future<String> _get(String path) => _api._get(path);

  String _buildQuery(Map<String, dynamic> query) {
    final filteredQuery = Map.fromIterable(
      query.keys.where((key) => query[key] != null),
      value: (key) => query[key],
    );

    return List.generate(
      filteredQuery.keys.length,
      (i) => '${filteredQuery.keys.toList()[i]}=${filteredQuery.values.toList()[i]}',
    ).join('&');
  }
}
