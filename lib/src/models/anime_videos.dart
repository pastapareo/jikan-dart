part of jikan.models;

@JsonSerializable(createToJson: false)
class AnimeVideos implements JikanBaseModel {
  @override
  @JsonKey(name: 'request_hash')
  String requestHash;

  @override
  @JsonKey(name: 'request_cached')
  bool requestCached;

  @override
  @JsonKey(name: 'request_cache_expiry')
  int requestCacheExpiry;

  @JsonKey(name: 'promo')
  List<Promo> promos;

  @JsonKey(name: 'episodes')
  List<VideoEpisode> videoEpisodes;

  AnimeVideos();

  factory AnimeVideos.fromJson(Map<String, dynamic> json) => _$AnimeVideosFromJson(json);
}
