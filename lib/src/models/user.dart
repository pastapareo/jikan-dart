part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class User {
  String username;

  String url;

  String imageUrl;

  int score;

  String status;

  int episodesSeen;

  int episodesTotal;

  DateTime date;

  User();

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
