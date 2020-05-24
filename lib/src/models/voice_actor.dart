part of jikan.models;

@JsonSerializable(createToJson: false)
class VoiceActor implements MalBase {
  @override
  @JsonKey(name: 'mal_id')
  int malId;

  String name;

  String url;

  @JsonKey(name: 'image_url')
  String imageUrl;

  String language;

  VoiceActor();

  factory VoiceActor.fromJson(Map<String, dynamic> json) => _$VoiceActorFromJson(json);
}
