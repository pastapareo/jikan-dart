part of jikan.models;

@JsonSerializable(createToJson: false)
class AnimeEpisodes implements JikanBaseModel {
  @override
  @JsonKey(name: 'request_hash')
  String requestHash;

  @override
  @JsonKey(name: 'request_cached')
  bool requestCached;

  @override
  @JsonKey(name: 'request_cache_expiry')
  int requestCacheExpiry;

  @JsonKey(name: 'episodes_last_page')
  int lastPage;

  List<Episode> episodes;

  AnimeEpisodes();

  factory AnimeEpisodes.fromJson(Map<String, dynamic> json) =>
      _$AnimeEpisodesFromJson(json);
}
