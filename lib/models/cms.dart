class CmsHomePageModel {
  List<Sections> sections;

  CmsHomePageModel({this.sections});

  CmsHomePageModel.fromJson(Map<String, dynamic> json) {
    if (json['sections'] != null) {
      sections = new List<Sections>();
      json['sections'].forEach((v) {
        sections.add(new Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sections != null) {
      data['sections'] = this.sections.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sections {
  List<String> components;
  String section;
  String type;

  Sections({this.components, this.section, this.type});

  Sections.fromJson(Map<String, dynamic> json) {
    components = json['components'].cast<String>();
    section = json['section'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['components'] = this.components;
    data['section'] = this.section;
    data['type'] = this.type;
    return data;
  }
}
