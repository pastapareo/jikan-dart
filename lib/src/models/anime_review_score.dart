part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class AnimeReviewScores {
  int overall;

  int story;

  int animation;

  int sound;

  int character;

  int enjoyment;

  AnimeReviewScores();

  factory AnimeReviewScores.fromJson(Map<String, dynamic> json) =>
      _$AnimeReviewScoresFromJson(json);
}
