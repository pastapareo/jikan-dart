part of jikan;

class Characters extends EndpointBase {
  @override
  String get _path => 'character';

  Characters(JikanBase api) : super(api);

  Future<Character> getCharacter(int id) async {
    var jsonResponse = await _get('$_path/$id');
    var map = json.decode(jsonResponse);

    return Character.fromJson(map);
  }
}
