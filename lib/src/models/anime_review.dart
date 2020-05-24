part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class AnimeReview {
  int malId;

  String url;

  String type;

  int helpfulCount;

  DateTime date;

  AnimeReviewer reviewer;

  String content;

  AnimeReview();

  factory AnimeReview.fromJson(Map<String, dynamic> json) => _$AnimeReviewFromJson(json);
}
