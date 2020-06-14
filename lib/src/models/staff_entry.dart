part of jikan.models;

@JsonSerializable(createToJson: false)
class StaffEntry implements MalBase {
  @override
  @JsonKey(name: 'mal_id')
  int malId;

  String name;

  String url;

  @JsonKey(name: 'image_url')
  String imageUrl;

  List<String> positions;

  StaffEntry();

  factory StaffEntry.fromJson(Map<String, dynamic> json) => _$StaffEntryFromJson(json);
}
