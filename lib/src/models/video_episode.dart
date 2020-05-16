part of jikan.models;

@JsonSerializable(createToJson: false)
class VideoEpisode {
  String title;

  String episode;

  String url;

  @JsonKey(name: 'video_url')
  String videoUrl;

  VideoEpisode();

  factory VideoEpisode.fromJson(Map<String, dynamic> json) =>
      _$VideoEpisodeFromJson(json);
}
