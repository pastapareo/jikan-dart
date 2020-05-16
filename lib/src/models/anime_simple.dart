part of jikan.models;

@JsonSerializable(createToJson: false)
class AnimeSimple implements MalBase {
  @override
  @JsonKey(name: 'mal_id')
  int malId;

  String title;

  @JsonKey(name: 'image_url')
  String imageUrl;

  String synopsis;

  String type;

  @JsonKey(name: 'airing_start')
  DateTime airingStart;

  int episodes;

  int members;

  List<Link> genres;

  String source;

  List<Link> producers;

  double score;

  List<String> licensors;

  bool r18;

  bool kids;

  bool continuing;

  AnimeSimple();

  factory AnimeSimple.fromJson(Map<String, dynamic> json) => _$AnimeSimpleFromJson(json);
}
