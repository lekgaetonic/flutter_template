import 'package:flutter_getx/models/bannercomponent.dart';

class BannerComponentConverter {
  BannerComponentModel convertMock() {
    var responsebody = {
      "banners": [
        {
          "content": "",
          "headline": "",
          "link": "topic/information-1",
          "media_url":
              "/medias/sys_master/images/images/had/hcf/8844230328350/warranty.jpg",
          "subordinate": 0,
          "uid": "Information1BannerComponent"
        },
        {
          "content": "",
          "headline": "",
          "link": "topic/information-2",
          "media_url":
              "/medias/sys_master/images/images/h9a/h9e/8844230459422/Shipping.jpg",
          "subordinate": 0,
          "uid": "Information2BannerComponent"
        },
        {
          "content": "",
          "headline": "",
          "link": "topic/information-3",
          "media_url":
              "/medias/sys_master/images/images/h92/h56/8844230426654/payment.jpg",
          "subordinate": 0,
          "uid": "Information3BannerComponent"
        }
      ]
    };

    return BannerComponentModel.fromJson(responsebody);
  }
}
