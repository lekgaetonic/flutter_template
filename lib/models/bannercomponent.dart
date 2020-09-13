class BannerComponentModel {
  List<Banners> banners;

  BannerComponentModel({this.banners});

  BannerComponentModel.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      banners = new List<Banners>();
      json['banners'].forEach((v) {
        banners.add(new Banners.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.banners != null) {
      data['banners'] = this.banners.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Banners {
  String content;
  String headline;
  String link;
  String mediaUrl;
  int subordinate;
  String uid;

  Banners(
      {this.content,
      this.headline,
      this.link,
      this.mediaUrl,
      this.subordinate,
      this.uid});

  Banners.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    headline = json['headline'];
    link = json['link'];
    mediaUrl = json['media_url'];
    subordinate = json['subordinate'];
    uid = json['uid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['content'] = this.content;
    data['headline'] = this.headline;
    data['link'] = this.link;
    data['media_url'] = this.mediaUrl;
    data['subordinate'] = this.subordinate;
    data['uid'] = this.uid;
    return data;
  }
}
