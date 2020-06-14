part of jikan.models;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class Character implements MalBase, JikanBaseModel {
  @override
  int malId;

  @override
  String requestHash;

  @override
  bool requestCached;

  @override
  int requestCacheExpiry;

  String url;

  String name;

  String nameKanji;

  List<String> nicknames;

  String about;

  int memberFavorites;

  String imageUrl;

  List<Link> animeography;

  List<Link> mangaography;

  List<Link> voiceActors;

  Character();

  factory Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);
}
