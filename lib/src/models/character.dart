part of jikan.models;

@JsonSerializable(createToJson: false)
class Character implements MalBase {
  @override
  @JsonKey(name: 'mal_id')
  int malId;

  String url;

  String imageUrl;

  String name;

  String role;

  @JsonKey(name: 'voice_actors')
  List<VoiceActor> voiceActors;

  Character();

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}
