part of jikan.models;

@JsonSerializable(createToJson: false)
class Staff implements MalBase {
  @override
  @JsonKey(name: 'mal_id')
  int malId;

  String name;

  String url;

  @JsonKey(name: 'image_url')
  String imageUrl;

  List<String> positions;

  Staff();

  factory Staff.fromJson(Map<String, dynamic> json) => _$StaffFromJson(json);
}
