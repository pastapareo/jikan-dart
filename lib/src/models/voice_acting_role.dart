part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class VoiceActingRole {
  String role;

  Link anime;

  Link character;

  VoiceActingRole();

  factory VoiceActingRole.fromJson(Map<String, dynamic> json) =>
      _$VoiceActingRoleFromJson(json);
}
