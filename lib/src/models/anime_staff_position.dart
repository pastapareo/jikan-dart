part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class AnimeStaffPosition {
  String position;

  Link anime;

  AnimeStaffPosition();

  factory AnimeStaffPosition.fromJson(Map<String, dynamic> json) =>
      _$AnimeStaffPositionFromJson(json);
}
