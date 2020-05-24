part of jikan;

class Seasons extends EndpointBase {
  @override
  String get _path => 'season';

  Seasons(JikanBase api) : super(api);

  Future<Season> getSeason([int year, String season]) async {
    var path;
    if (year == null && season == null) {
      path = '$_path';
    } else {
      path = '$_path/$year/$season';
    }

    var jsonResponse = await _get(path);
    var map = json.decode(jsonResponse);

    return Season.fromJson(map);
  }
}
