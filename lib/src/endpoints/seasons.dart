part of jikan;

class Seasons extends EndpointBase {
  @override
  String get _path => 'season';

  Seasons(JikanBase api) : super(api);

  Future<Season> getSeason(int year, String season) async {
    var jsonResponse = await _get('$_path/$year/$season');
    var map = json.decode(jsonResponse);

    return Season.fromJson(map);
  }
}
