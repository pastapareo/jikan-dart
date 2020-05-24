part of jikan.models;

@JsonSerializable(createToJson: false)
class Anime implements MalBase, JikanBaseModel {
  @override
  @JsonKey(name: 'mal_id')
  int malId;

  @override
  @JsonKey(name: 'request_hash')
  String requestHash;

  @override
  @JsonKey(name: 'request_cached')
  bool requestCached;

  @override
  @JsonKey(name: 'request_cache_expiry')
  int requestCacheExpiry;

  String url;

  @JsonKey(name: 'image_url')
  String imageUrl;

  @JsonKey(name: 'trailer_url')
  String trailerUrl;

  String title;

  @JsonKey(name: 'title_english')
  String titleEnglish;

  @JsonKey(name: 'title_japanese')
  String titleJapanese;

  @JsonKey(name: 'title_synonyms')
  List<String> titleSynonyms;

  String type;

  String source;

  int episodes;

  String status;

  bool airing;

  Aired aired;

  String duration;

  String rating;

  double score;

  @JsonKey(name: 'score_by')
  int scoreBy;

  int rank;

  int popularity;

  int members;

  int favorites;

  String synopsis;

  String background;

  String premiered;

  String broadcast;

  RelatedAnime related;

  List<Link> producers;

  List<Link> licensors;

  List<Link> studios;

  List<Link> genres;

  @JsonKey(name: 'opening_themes')
  List<String> openingThemes;

  @JsonKey(name: 'ending_themes')
  List<String> endingThemes;

  Anime();

  factory Anime.fromJson(Map<String, dynamic> json) => _$AnimeFromJson(json);
}
