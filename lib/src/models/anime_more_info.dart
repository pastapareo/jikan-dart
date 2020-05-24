part of jikan.models;

@JsonSerializable(createToJson: false)
class AnimeMoreInfo implements JikanBaseModel {
  @override
  @JsonKey(name: 'request_hash')
  String requestHash;

  @override
  @JsonKey(name: 'request_cached')
  bool requestCached;

  @override
  @JsonKey(name: 'request_cache_expiry')
  int requestCacheExpiry;

  @JsonKey(name: 'moreinfo')
  String moreInfo;

  AnimeMoreInfo();

  factory AnimeMoreInfo.fromJson(Map<String, dynamic> json) =>
      _$AnimeMoreInfoFromJson(json);
}
