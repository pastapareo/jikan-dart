part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class Recommendation {
  int malId;

  String url;

  String imageUrl;

  String recommendationUrl;

  String title;

  int recommendationCount;

  Recommendation();

  factory Recommendation.fromJson(Map<String, dynamic> json) =>
      _$RecommendationFromJson(json);
}
