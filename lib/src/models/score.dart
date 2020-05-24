part of jikan.models;

@JsonSerializable(createToJson: false)
class Score {
  int votes;

  double percentage;

  Score();

  factory Score.fromJson(Map<String, dynamic> json) => _$ScoreFromJson(json);
}
