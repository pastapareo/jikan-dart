part of jikan.models;

@JsonSerializable(createToJson: false)
class Aired {
  DateTime from;

  DateTime to;

  String string;

  Aired();

  factory Aired.fromJson(Map<String, dynamic> json) => _$AiredFromJson(json);
}
