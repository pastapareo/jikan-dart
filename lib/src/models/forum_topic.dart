part of jikan.models;

@JsonSerializable(createToJson: false)
class ForumTopic {
  @JsonKey(name: 'topic_id')
  int topicId;

  String url;

  String title;

  @JsonKey(name: 'date_posted')
  DateTime datePosted;

  @JsonKey(name: 'author_name')
  String authorName;

  @JsonKey(name: 'author_url')
  String authorUrl;

  int replies;

  @JsonKey(name: 'last_post')
  ForumTopicPost lastPost;

  ForumTopic();

  factory ForumTopic.fromJson(Map<String, dynamic> json) => _$ForumTopicFromJson(json);
}
