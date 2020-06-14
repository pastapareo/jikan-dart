part of jikan.models;

@JsonSerializable(createToJson: false)
class CharacterEntry implements MalBase {
  @override
  @JsonKey(name: 'mal_id')
  int malId;

  String url;

  String imageUrl;

  String name;

  String role;

  @JsonKey(name: 'voice_actors')
  List<VoiceActor> voiceActors;

  CharacterEntry();

  factory CharacterEntry.fromJson(Map<String, dynamic> json) =>
      _$CharacterEntryFromJson(json);
}
