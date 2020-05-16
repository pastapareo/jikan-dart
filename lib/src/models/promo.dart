part of jikan.models;

@JsonSerializable(createToJson: false)
class Promo {
  String title;

  @JsonKey(name: 'image_url')
  String imageUrl;

  @JsonKey(name: 'video_url')
  String videoUrl;

  Promo();

  factory Promo.fromJson(Map<String, dynamic> json) => _$PromoFromJson(json);
}
