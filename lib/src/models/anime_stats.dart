part of jikan.models;

@JsonSerializable(createToJson: false)
class AnimeStats extends JikanBaseModel {
  @override
  @JsonKey(name: 'request_hash')
  String requestHash;

  @override
  @JsonKey(name: 'request_cached')
  bool requestCached;

  @override
  @JsonKey(name: 'request_cache_expiry')
  int requestCacheExpiry;

  int watching;

  int completed;

  @JsonKey(name: 'on_hold')
  int onHold;

  int dropped;

  @JsonKey(name: 'plan_to_watch')
  int planToWatch;

  int total;

  Map<String, Score> scores;

  AnimeStats();

  factory AnimeStats.fromJson(Map<String, dynamic> json) => _$AnimeStatsFromJson(json);
}
