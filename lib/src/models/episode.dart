part of jikan.models;

@JsonSerializable(createToJson: false)
class Episode {
  @JsonKey(name: 'episode_id')
  int id;

  String title;

  @JsonKey(name: 'title_japanese')
  String japaneseTitle;

  @JsonKey(name: 'title_romanji')
  String romanjiTitle;

  DateTime aired;

  bool filler;

  bool recap;

  @JsonKey(name: 'video_url')
  String videoUrl;

  @JsonKey(name: 'forum_url')
  String forumUrl;

  Episode();

  factory Episode.fromJson(Map<String, dynamic> json) => _$EpisodeFromJson(json);
}
