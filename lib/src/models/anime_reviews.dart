part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class AnimeReviews implements JikanBaseModel {
  @override
  String requestHash;

  @override
  bool requestCached;

  @override
  int requestCacheExpiry;

  List<AnimeReview> reviews;

  AnimeReviews();

  factory AnimeReviews.fromJson(Map<String, dynamic> json) =>
      _$AnimeReviewsFromJson(json);
}
