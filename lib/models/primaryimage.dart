import 'package:flutter_getx/constants/custom.dart';

class PrimaryImageModel {
  String altText;
  String format;
  String imageType;
  String url;

  PrimaryImageModel({this.altText, this.format, this.imageType, this.url});

  PrimaryImageModel.fromJson(Map<String, dynamic> json) {
    altText = json['altText'];
    format = json['format'];
    imageType = json['imageType'];
    url = json['url'] == null
        ? missingImage
        : endpoint +
            json['url']
                .toString()
                .replaceFirst('ktwcommercewebservices/v2', '');
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['altText'] = this.altText;
    data['format'] = this.format;
    data['imageType'] = this.imageType;
    data['url'] = this.url;
    return data;
  }
}

class GalleryImageModel {
  List<PrimaryImageModel> images;

  GalleryImageModel({this.images});

  GalleryImageModel.fromJson(Map<String, dynamic> json) {
    if (json['images'] != null) {
      images = new List<PrimaryImageModel>();
      json['images'].forEach((v) {
        images.add(new PrimaryImageModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.images != null) {
      data['images'] = this.images.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
