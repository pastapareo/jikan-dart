part of jikan;

abstract class JikanBase {
  static const String _baseUrl = 'https://api.jikan.moe/v3';
  final http.Client _client;

  Seasons _seasons;
  Animes _animes;
  Persons _persons;
  Characters _characters;

  Seasons get seasons => _seasons;
  Animes get animes => _animes;
  Persons get persons => _persons;
  Characters get characters => _characters;

  JikanBase(this._client) {
    _seasons = Seasons(this);
    _animes = Animes(this);
    _persons = Persons(this);
    _characters = Characters(this);
  }

  Future<String> _get(String path) {
    return _getImpl('${_baseUrl}/$path', const {});
  }

  Future<String> _getImpl(String url, Map<String, String> headers) async {
    final response = await (await _client).get(url, headers: headers);
    return handleErrors(response);
  }

  String handleErrors(http.Response response) {
    final responseBody = utf8.decode(response.bodyBytes);

    if (response.statusCode != 200) {
      var jsonMap = json.decode(responseBody);
      throw JikanException.fromJikan(
        JikanError.fromJson(jsonMap),
      );
    }

    return responseBody;
  }
}
