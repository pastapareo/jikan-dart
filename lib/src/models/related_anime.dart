part of jikan.models;

@JsonSerializable(createToJson: false)
class RelatedAnime {
  @JsonKey(name: 'Sequel')
  List<Link> sequel;

  @JsonKey(name: 'Prequel')
  List<Link> prequel;

  @JsonKey(name: 'Alternative setting')
  List<Link> alternativeSetting;

  @JsonKey(name: 'Alternative version')
  List<Link> alternativeVersion;

  @JsonKey(name: 'Side story')
  List<Link> sideStory;

  @JsonKey(name: 'Summary')
  List<Link> summary;

  @JsonKey(name: 'Full story')
  List<Link> fullStory;

  @JsonKey(name: 'Parent story')
  List<Link> parentStory;

  @JsonKey(name: 'Spin-off')
  List<Link> spinoff;

  @JsonKey(name: 'Adaptation')
  List<Link> adaptation;

  @JsonKey(name: 'Character')
  List<Link> character;

  @JsonKey(name: 'Other')
  List<Link> other;

  RelatedAnime();

  factory RelatedAnime.fromJson(Map<String, dynamic> json) =>
      _$RelatedAnimeFromJson(json);
}
