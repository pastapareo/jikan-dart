part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class Person implements MalBase, JikanBaseModel {
  @override
  int malId;

  @override
  String requestHash;

  @override
  bool requestCached;

  @override
  int requestCacheExpiry;

  String name;

  String givenName;

  String familyName;

  List<String> alternativeNames;

  DateTime birthday;

  int memberFavorites;

  String about;

  List<VoiceActingRole> voiceActingRoles;

  List<AnimeStaffPosition> animeStaffPositions;

  Person();

  factory Person.fromJson(Map<String, dynamic> json) => _$PersonFromJson(json);
}
