part of jikan.models;

@JsonSerializable(createToJson: false)
class AnimeNews implements JikanBaseModel {
  @override
  @JsonKey(name: 'request_hash')
  String requestHash;

  @override
  @JsonKey(name: 'request_cached')
  bool requestCached;

  @override
  @JsonKey(name: 'request_cache_expiry')
  int requestCacheExpiry;

  List<Article> articles;

  AnimeNews();

  factory AnimeNews.fromJson(Map<String, dynamic> json) => _$AnimeNewsFromJson(json);
}
