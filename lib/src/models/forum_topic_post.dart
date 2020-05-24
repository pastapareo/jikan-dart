part of jikan.models;

@JsonSerializable(createToJson: false)
class ForumTopicPost {
  String url;

  @JsonKey(name: 'author_name')
  String authorName;

  @JsonKey(name: 'author_url')
  String authorUrl;

  @JsonKey(name: 'date_posted')
  DateTime datePosted;

  ForumTopicPost();

  factory ForumTopicPost.fromJson(Map<String, dynamic> json) =>
      _$ForumTopicPostFromJson(json);
}
