part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class AnimeForumTopics implements JikanBaseModel {
  @override
  String requestHash;

  @override
  bool requestCached;

  @override
  int requestCacheExpiry;

  List<ForumTopic> topics;

  AnimeForumTopics();

  factory AnimeForumTopics.fromJson(Map<String, dynamic> json) =>
      _$AnimeForumTopicsFromJson(json);
}
