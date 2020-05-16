part of jikan;

class Animes extends EndpointBase {
  @override
  String get _path => 'anime';
  String get _character_staff_path => 'characters_staff';
  String get _episodes_path => 'episodes';
  String get _news_path => 'news';
  String get _pictures_path => 'pictures';
  String get _videos_path => 'videos';
  String get _stats_path => 'stats';
  String get _forum_path => 'forum';
  String get _moreinfo_path => 'moreinfo';
  String get _reviews_path => 'reviews';
  String get _recommendations_path => 'recommendations';
  String get _userupdates_path => 'userupdates';

  Animes(JikanBase api) : super(api);

  Future<Anime> getAnime(int id) async {
    var jsonResponse = await _api._get('$_path/$id');
    var map = json.decode(jsonResponse);

    return Anime.fromJson(map);
  }

  Future<AnimeCharactersStaff> getAnimeCharacterStaff(int id) async {
    var jsonResponse = await _get('$_path/$id/$_character_staff_path');
    var map = json.decode(jsonResponse);

    return AnimeCharactersStaff.fromJson(map);
  }

  Future<AnimeEpisodes> getAnimeEpisodes(int id, {int page}) async {
    page ??= 1;
    var jsonResponse = await _get('$_path/$id/$_episodes_path/$page');
    var map = json.decode(jsonResponse);

    return AnimeEpisodes.fromJson(map);
  }

  Future<AnimeNews> getAnimeNews(int id) async {
    var jsonResponse = await _get('$_path/$id/$_news_path');
    var map = json.decode(jsonResponse);

    return AnimeNews.fromJson(map);
  }

  Future<AnimePictures> getAnimePictures(int id) async {
    var jsonResponse = await _get('$_path/$id/$_pictures_path');
    var map = json.decode(jsonResponse);

    return AnimePictures.fromJson(map);
  }

  Future<AnimeVideos> getAnimeVideos(int id) async {
    var jsonResponse = await _get('$_path/$id/$_videos_path');
    var map = json.decode(jsonResponse);

    return AnimeVideos.fromJson(map);
  }

  Future<AnimeStats> getAnimeStats(int id) async {
    var jsonResponse = await _get('$_path/$id/$_stats_path');
    var map = json.decode(jsonResponse);

    return AnimeStats.fromJson(map);
  }

  Future<AnimeReviews> getAnimeReviews(int id) async {
    var jsonResponse = await _get('$_path/$id/$_reviews_path');
    var map = json.decode(jsonResponse);

    return AnimeReviews.fromJson(map);
  }

  Future<AnimeMoreInfo> getAnimeMoreInfo(int id) async {
    var jsonResponse = await _get('$_path/$id/$_moreinfo_path');
    var map = json.decode(jsonResponse);

    return AnimeMoreInfo.fromJson(map);
  }

  Future<AnimeForumTopics> getAnimeForumTopics(int id, {int page}) async {
    page ??= 1;
    var jsonResponse = await _get('$_path/$id/$_forum_path/$page');
    var map = json.decode(jsonResponse);

    return AnimeForumTopics.fromJson(map);
  }

  Future<AnimeRecommendations> getAnimeRecommendations(int id) async {
    var jsonResponse = await _get('$_path/$id/$_recommendations_path');
    var map = json.decode(jsonResponse);

    return AnimeRecommendations.fromJson(map);
  }

  Future<AnimeUserUpdates> getAnimeUserUpdates(int id, {int page}) async {
    page ??= 1;
    var jsonResponse = await _get('$_path/$id/$_userupdates_path/$page');
    var map = json.decode(jsonResponse);

    return AnimeUserUpdates.fromJson(map);
  }
}
