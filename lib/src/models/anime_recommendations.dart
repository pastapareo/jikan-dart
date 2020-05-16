part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class AnimeRecommendations implements JikanBaseModel {
  @override
  String requestHash;

  @override
  bool requestCached;

  @override
  int requestCacheExpiry;

  List<Recommendation> recommendations;

  AnimeRecommendations();

  factory AnimeRecommendations.fromJson(Map<String, dynamic> json) =>
      _$AnimeRecommendationsFromJson(json);
}
