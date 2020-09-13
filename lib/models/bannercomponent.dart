import 'dart:convert';

BannerComponentModel bannerComponentModelFromJson(String str) =>
    BannerComponentModel.fromJson(json.decode(str));

String bannerComponentModelToJson(BannerComponentModel data) =>
    json.encode(data.toJson());

class BannerComponentModel {
  BannerComponentModel({
    this.effect,
    this.restricted,
    this.rotates,
  });

  String effect;
  bool restricted;
  List<Rotate> rotates;

  factory BannerComponentModel.fromJson(Map<String, dynamic> json) =>
      BannerComponentModel(
        effect: json["effect"],
        restricted: json["restricted"],
        rotates:
            List<Rotate>.from(json["rotates"].map((x) => Rotate.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "effect": effect,
        "restricted": restricted,
        "rotates": List<dynamic>.from(rotates.map((x) => x.toJson())),
      };
}

class Rotate {
  Rotate({
    this.link,
    this.name,
    this.uid,
    this.url,
  });

  String link;
  String name;
  String uid;
  String url;

  factory Rotate.fromJson(Map<String, dynamic> json) => Rotate(
        link: json["link"],
        name: json["name"],
        uid: json["uid"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "link": link,
        "name": name,
        "uid": uid,
        "url": url,
      };
}
