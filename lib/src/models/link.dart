part of jikan.models;

@JsonSerializable(createToJson: false)
class Link implements MalBase {
  @override
  @JsonKey(name: 'mal_id')
  int malId;

  String type;

  String name;

  String url;

  String imageUrl;

  String role;

  String language;

  Link();

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}
