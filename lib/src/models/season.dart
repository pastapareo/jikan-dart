part of jikan.models;

@JsonSerializable(createToJson: false)
class Season implements JikanBaseModel {
  @override
  @JsonKey(name: 'request_hash')
  String requestHash;

  @override
  @JsonKey(name: 'request_cached')
  bool requestCached;

  @override
  @JsonKey(name: 'request_cache_expiry')
  int requestCacheExpiry;

  @JsonKey(name: 'season_name')
  String name;

  @JsonKey(name: 'season_year')
  int year;

  List<AnimeSimple> anime;

  Season();

  factory Season.fromJson(Map<String, dynamic> json) => _$SeasonFromJson(json);
}
