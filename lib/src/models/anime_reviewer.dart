part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class AnimeReviewer {
  String url;

  String imageUrl;

  String username;

  int episodesSeen;

  AnimeReviewScores scores;

  AnimeReviewer();

  factory AnimeReviewer.fromJson(Map<String, dynamic> json) =>
      _$AnimeReviewerFromJson(json);
}
