part of jikan.models;

@JsonSerializable(createToJson: false)
class AnimeCharactersStaff implements JikanBaseModel {
  @override
  @JsonKey(name: 'request_hash')
  String requestHash;

  @override
  @JsonKey(name: 'request_cached')
  bool requestCached;

  @override
  @JsonKey(name: 'request_cache_expiry')
  int requestCacheExpiry;

  List<Character> characters;

  List<Staff> staff;

  AnimeCharactersStaff();

  factory AnimeCharactersStaff.fromJson(Map<String, dynamic> json) =>
      _$AnimeCharactersStaffFromJson(json);
}
