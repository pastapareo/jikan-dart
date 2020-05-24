part of jikan.models;

@JsonSerializable(createToJson: false)
class AnimePictures implements JikanBaseModel {
  @override
  @JsonKey(name: 'request_hash')
  String requestHash;

  @override
  @JsonKey(name: 'request_cached')
  bool requestCached;

  @override
  @JsonKey(name: 'request_cache_expiry')
  int requestCacheExpiry;

  List<Picture> pictures;

  AnimePictures();

  factory AnimePictures.fromJson(Map<String, dynamic> json) =>
      _$AnimePicturesFromJson(json);
}
