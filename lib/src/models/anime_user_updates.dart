part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class AnimeUserUpdates implements JikanBaseModel {
  @override
  String requestHash;

  @override
  bool requestCached;

  @override
  int requestCacheExpiry;

  List<User> users;

  AnimeUserUpdates();

  factory AnimeUserUpdates.fromJson(Map<String, dynamic> json) =>
      _$AnimeUserUpdatesFromJson(json);
}
