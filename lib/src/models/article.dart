part of jikan.models;

@JsonSerializable(createToJson: false)
class Article {
  String url;

  String title;

  DateTime date;

  @JsonKey(name: 'author_name')
  String authorName;

  @JsonKey(name: 'author_url')
  String authorUrl;

  @JsonKey(name: 'forum_url')
  String forumUrl;

  @JsonKey(name: 'image_url')
  String imageUrl;

  int comments;

  String intro;

  Article();

  factory Article.fromJson(Map<String, dynamic> json) => _$ArticleFromJson(json);
}
