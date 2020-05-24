part of jikan.models;

@JsonSerializable(createToJson: false)
class Picture {
  String large;

  String small;

  Picture();

  factory Picture.fromJson(Map<String, dynamic> json) => _$PictureFromJson(json);
}
