part of jikan;

class Persons extends EndpointBase {
  @override
  String get _path => 'person';

  Persons(JikanBase api) : super(api);

  Future<Person> getPerson(int id) async {
    var jsonResponse = await _get('$_path/$id');
    var map = json.decode(jsonResponse);

    return Person.fromJson(map);
  }
}
