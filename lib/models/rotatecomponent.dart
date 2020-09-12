class RotateComponentModel {
  String effect;
  bool restricted;
  List<Rotates> rotates;

  RotateComponentModel({this.effect, this.restricted, this.rotates});

  RotateComponentModel.fromJson(Map<String, dynamic> json) {
    effect = json['effect'];
    restricted = json['restricted'];
    if (json['rotates'] != null) {
      rotates = new List<Rotates>();
      json['rotates'].forEach((v) {
        rotates.add(new Rotates.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['effect'] = this.effect;
    data['restricted'] = this.restricted;
    if (this.rotates != null) {
      data['rotates'] = this.rotates.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Rotates {
  String link;
  String name;
  String uid;
  String url;

  Rotates({this.link, this.name, this.uid, this.url});

  Rotates.fromJson(Map<String, dynamic> json) {
    link = json['link'];
    name = json['name'];
    uid = json['uid'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['link'] = this.link;
    data['name'] = this.name;
    data['uid'] = this.uid;
    data['url'] = this.url;
    return data;
  }
}
