// GENERATED CODE - DO NOT MODIFY BY HAND

part of jikan.models;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeSimple _$AnimeSimpleFromJson(Map<String, dynamic> json) {
  return AnimeSimple()
    ..malId = json['mal_id'] as int
    ..title = json['title'] as String
    ..imageUrl = json['image_url'] as String
    ..synopsis = json['synopsis'] as String
    ..type = json['type'] as String
    ..airingStart = json['airing_start'] == null
        ? null
        : DateTime.parse(json['airing_start'] as String)
    ..episodes = json['episodes'] as int
    ..members = json['members'] as int
    ..genres = (json['genres'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..source = json['source'] as String
    ..producers = (json['producers'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..score = (json['score'] as num)?.toDouble()
    ..licensors = (json['licensors'] as List)?.map((e) => e as String)?.toList()
    ..r18 = json['r18'] as bool
    ..kids = json['kids'] as bool
    ..continuing = json['continuing'] as bool;
}

Anime _$AnimeFromJson(Map<String, dynamic> json) {
  return Anime()
    ..malId = json['mal_id'] as int
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..url = json['url'] as String
    ..imageUrl = json['image_url'] as String
    ..trailerUrl = json['trailer_url'] as String
    ..title = json['title'] as String
    ..titleEnglish = json['title_english'] as String
    ..titleJapanese = json['title_japanese'] as String
    ..titleSynonyms =
        (json['title_synonyms'] as List)?.map((e) => e as String)?.toList()
    ..type = json['type'] as String
    ..source = json['source'] as String
    ..episodes = json['episodes'] as int
    ..status = json['status'] as String
    ..airing = json['airing'] as bool
    ..aired = json['aired'] == null
        ? null
        : Aired.fromJson(json['aired'] as Map<String, dynamic>)
    ..duration = json['duration'] as String
    ..rating = json['rating'] as String
    ..score = (json['score'] as num)?.toDouble()
    ..scoreBy = json['score_by'] as int
    ..rank = json['rank'] as int
    ..popularity = json['popularity'] as int
    ..members = json['members'] as int
    ..favorites = json['favorites'] as int
    ..synopsis = json['synopsis'] as String
    ..background = json['background'] as String
    ..premiered = json['premiered'] as String
    ..broadcast = json['broadcast'] as String
    ..related = json['related'] == null
        ? null
        : RelatedAnime.fromJson(json['related'] as Map<String, dynamic>)
    ..producers = (json['producers'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..licensors = (json['licensors'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..studios = (json['studios'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..genres = (json['genres'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..openingThemes =
        (json['opening_themes'] as List)?.map((e) => e as String)?.toList()
    ..endingThemes =
        (json['ending_themes'] as List)?.map((e) => e as String)?.toList();
}

AnimeCharactersStaff _$AnimeCharactersStaffFromJson(Map<String, dynamic> json) {
  return AnimeCharactersStaff()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..characters = (json['characters'] as List)
        ?.map((e) =>
            e == null ? null : Character.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..staff = (json['staff'] as List)
        ?.map(
            (e) => e == null ? null : Staff.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

AnimeEpisodes _$AnimeEpisodesFromJson(Map<String, dynamic> json) {
  return AnimeEpisodes()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..lastPage = json['episodes_last_page'] as int
    ..episodes = (json['episodes'] as List)
        ?.map((e) =>
            e == null ? null : Episode.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

AnimeNews _$AnimeNewsFromJson(Map<String, dynamic> json) {
  return AnimeNews()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..articles = (json['articles'] as List)
        ?.map((e) =>
            e == null ? null : Article.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

AnimePictures _$AnimePicturesFromJson(Map<String, dynamic> json) {
  return AnimePictures()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..pictures = (json['pictures'] as List)
        ?.map((e) =>
            e == null ? null : Picture.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

AnimeVideos _$AnimeVideosFromJson(Map<String, dynamic> json) {
  return AnimeVideos()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..promos = (json['promo'] as List)
        ?.map(
            (e) => e == null ? null : Promo.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..videoEpisodes = (json['episodes'] as List)
        ?.map((e) =>
            e == null ? null : VideoEpisode.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

AnimeStats _$AnimeStatsFromJson(Map<String, dynamic> json) {
  return AnimeStats()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..watching = json['watching'] as int
    ..completed = json['completed'] as int
    ..onHold = json['on_hold'] as int
    ..dropped = json['dropped'] as int
    ..planToWatch = json['plan_to_watch'] as int
    ..total = json['total'] as int
    ..scores = (json['scores'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(
          k, e == null ? null : Score.fromJson(e as Map<String, dynamic>)),
    );
}

AnimeMoreInfo _$AnimeMoreInfoFromJson(Map<String, dynamic> json) {
  return AnimeMoreInfo()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..moreInfo = json['moreinfo'] as String;
}

AnimeRecommendations _$AnimeRecommendationsFromJson(Map<String, dynamic> json) {
  return AnimeRecommendations()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..recommendations = (json['recommendations'] as List)
        ?.map((e) => e == null
            ? null
            : Recommendation.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

AnimeUserUpdates _$AnimeUserUpdatesFromJson(Map<String, dynamic> json) {
  return AnimeUserUpdates()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..users = (json['users'] as List)
        ?.map(
            (e) => e == null ? null : User.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

AnimeForumTopics _$AnimeForumTopicsFromJson(Map<String, dynamic> json) {
  return AnimeForumTopics()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..topics = (json['topics'] as List)
        ?.map((e) =>
            e == null ? null : ForumTopic.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

AnimeReviews _$AnimeReviewsFromJson(Map<String, dynamic> json) {
  return AnimeReviews()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..reviews = (json['reviews'] as List)
        ?.map((e) =>
            e == null ? null : AnimeReview.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Season _$SeasonFromJson(Map<String, dynamic> json) {
  return Season()
    ..requestHash = json['request_hash'] as String
    ..requestCached = json['request_cached'] as bool
    ..requestCacheExpiry = json['request_cache_expiry'] as int
    ..name = json['season_name'] as String
    ..year = json['season_year'] as int
    ..anime = (json['anime'] as List)
        ?.map((e) =>
            e == null ? null : AnimeSimple.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

RelatedAnime _$RelatedAnimeFromJson(Map<String, dynamic> json) {
  return RelatedAnime()
    ..sequel = (json['Sequel'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..prequel = (json['Prequel'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..alternativeSetting = (json['Alternative setting'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..alternativeVersion = (json['Alternative version'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..sideStory = (json['Side story'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..summary = (json['Summary'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..fullStory = (json['Full story'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..parentStory = (json['Parent story'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..spinoff = (json['Spin-off'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..adaptation = (json['Adaptation'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..character = (json['Character'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..other = (json['Other'] as List)
        ?.map(
            (e) => e == null ? null : Link.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

Aired _$AiredFromJson(Map<String, dynamic> json) {
  return Aired()
    ..from =
        json['from'] == null ? null : DateTime.parse(json['from'] as String)
    ..to = json['to'] == null ? null : DateTime.parse(json['to'] as String)
    ..string = json['string'] as String;
}

Link _$LinkFromJson(Map<String, dynamic> json) {
  return Link()
    ..malId = json['mal_id'] as int
    ..type = json['type'] as String
    ..name = json['name'] as String
    ..url = json['url'] as String;
}

Character _$CharacterFromJson(Map<String, dynamic> json) {
  return Character()
    ..malId = json['mal_id'] as int
    ..url = json['url'] as String
    ..imageUrl = json['imageUrl'] as String
    ..name = json['name'] as String
    ..role = json['role'] as String
    ..voiceActors = (json['voice_actors'] as List)
        ?.map((e) =>
            e == null ? null : VoiceActor.fromJson(e as Map<String, dynamic>))
        ?.toList();
}

VoiceActor _$VoiceActorFromJson(Map<String, dynamic> json) {
  return VoiceActor()
    ..malId = json['mal_id'] as int
    ..name = json['name'] as String
    ..url = json['url'] as String
    ..imageUrl = json['image_url'] as String
    ..language = json['language'] as String;
}

Staff _$StaffFromJson(Map<String, dynamic> json) {
  return Staff()
    ..malId = json['mal_id'] as int
    ..name = json['name'] as String
    ..url = json['url'] as String
    ..imageUrl = json['image_url'] as String
    ..positions =
        (json['positions'] as List)?.map((e) => e as String)?.toList();
}

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return Episode()
    ..id = json['episode_id'] as int
    ..title = json['title'] as String
    ..japaneseTitle = json['title_japanese'] as String
    ..romanjiTitle = json['title_romanji'] as String
    ..aired =
        json['aired'] == null ? null : DateTime.parse(json['aired'] as String)
    ..filler = json['filler'] as bool
    ..recap = json['recap'] as bool
    ..videoUrl = json['video_url'] as String
    ..forumUrl = json['forum_url'] as String;
}

Article _$ArticleFromJson(Map<String, dynamic> json) {
  return Article()
    ..url = json['url'] as String
    ..title = json['title'] as String
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..authorName = json['author_name'] as String
    ..authorUrl = json['author_url'] as String
    ..forumUrl = json['forum_url'] as String
    ..imageUrl = json['image_url'] as String
    ..comments = json['comments'] as int
    ..intro = json['intro'] as String;
}

Picture _$PictureFromJson(Map<String, dynamic> json) {
  return Picture()
    ..large = json['large'] as String
    ..small = json['small'] as String;
}

VideoEpisode _$VideoEpisodeFromJson(Map<String, dynamic> json) {
  return VideoEpisode()
    ..title = json['title'] as String
    ..episode = json['episode'] as String
    ..url = json['url'] as String
    ..videoUrl = json['video_url'] as String;
}

Promo _$PromoFromJson(Map<String, dynamic> json) {
  return Promo()
    ..title = json['title'] as String
    ..imageUrl = json['image_url'] as String
    ..videoUrl = json['video_url'] as String;
}

Score _$ScoreFromJson(Map<String, dynamic> json) {
  return Score()
    ..votes = json['votes'] as int
    ..percentage = (json['percentage'] as num)?.toDouble();
}

ForumTopic _$ForumTopicFromJson(Map<String, dynamic> json) {
  return ForumTopic()
    ..topicId = json['topic_id'] as int
    ..url = json['url'] as String
    ..title = json['title'] as String
    ..datePosted = json['date_posted'] == null
        ? null
        : DateTime.parse(json['date_posted'] as String)
    ..authorName = json['author_name'] as String
    ..authorUrl = json['author_url'] as String
    ..replies = json['replies'] as int
    ..lastPost = json['last_post'] == null
        ? null
        : ForumTopicPost.fromJson(json['last_post'] as Map<String, dynamic>);
}

ForumTopicPost _$ForumTopicPostFromJson(Map<String, dynamic> json) {
  return ForumTopicPost()
    ..url = json['url'] as String
    ..authorName = json['author_name'] as String
    ..authorUrl = json['author_url'] as String
    ..datePosted = json['date_posted'] == null
        ? null
        : DateTime.parse(json['date_posted'] as String);
}

AnimeReview _$AnimeReviewFromJson(Map<String, dynamic> json) {
  return AnimeReview()
    ..malId = json['mal_id'] as int
    ..url = json['url'] as String
    ..type = json['type'] as String
    ..helpfulCount = json['helpful_count'] as int
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String)
    ..reviewer = json['reviewer'] == null
        ? null
        : AnimeReviewer.fromJson(json['reviewer'] as Map<String, dynamic>)
    ..content = json['content'] as String;
}

AnimeReviewer _$AnimeReviewerFromJson(Map<String, dynamic> json) {
  return AnimeReviewer()
    ..url = json['url'] as String
    ..imageUrl = json['image_url'] as String
    ..username = json['username'] as String
    ..episodesSeen = json['episodes_seen'] as int
    ..scores = json['scores'] == null
        ? null
        : AnimeReviewScores.fromJson(json['scores'] as Map<String, dynamic>);
}

AnimeReviewScores _$AnimeReviewScoresFromJson(Map<String, dynamic> json) {
  return AnimeReviewScores()
    ..overall = json['overall'] as int
    ..story = json['story'] as int
    ..animation = json['animation'] as int
    ..sound = json['sound'] as int
    ..character = json['character'] as int
    ..enjoyment = json['enjoyment'] as int;
}

Recommendation _$RecommendationFromJson(Map<String, dynamic> json) {
  return Recommendation()
    ..malId = json['mal_id'] as int
    ..url = json['url'] as String
    ..imageUrl = json['image_url'] as String
    ..recommendationUrl = json['recommendation_url'] as String
    ..title = json['title'] as String
    ..recommendationCount = json['recommendation_count'] as int;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return User()
    ..username = json['username'] as String
    ..url = json['url'] as String
    ..imageUrl = json['image_url'] as String
    ..score = json['score'] as int
    ..status = json['status'] as String
    ..episodesSeen = json['episodes_seen'] as int
    ..episodesTotal = json['episodes_total'] as int
    ..date =
        json['date'] == null ? null : DateTime.parse(json['date'] as String);
}

JikanError _$JikanErrorFromJson(Map<String, dynamic> json) {
  return JikanError()
    ..status = json['status'] as int
    ..type = json['type'] as String
    ..message = json['message'] as String
    ..error = json['error'] as String
    ..report_url = json['report_url'] as String;
}
