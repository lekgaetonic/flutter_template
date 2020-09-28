import 'package:flutter/material.dart';
import 'package:flutter_getx/models/bannercomponent.dart';
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:flutter_getx/src/widgets/shared/headersection.dart';
import 'package:get/get.dart';

import 'loadingwidget.dart';

class SimpleBannerComponent extends StatelessWidget {
  final Sections section;
  SimpleBannerComponent(this.section, {Key key});
  HomePageController _homePageController = Get.put(HomePageController());

  var _bannerComponentModel = BannerComponentModel().obs;

  @override
  Widget build(BuildContext context) {
    String bannerName = "";
    section.components.forEach((e) => bannerName += e + ",");
    if (section.type == "SimpleBannerComponent") {
      bannerName = '';
    }
    _homePageController
        .fetchbannerComponent(bannerName)
        .then((value) => _bannerComponentModel.value = value);
    return Obx(() => _bannerComponentModel.value.banners == null
        ? Container()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(
                section.section,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 100.0,
                      //child: ListView(scrollDirection: Axis.horizontal, children: listCard),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _bannerComponentModel.value.banners.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                            return Container(
                              padding: EdgeInsets.all(5),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: FadeInImage(
                                  placeholder: NetworkImage(
                                      'https://ktwdevapi.ktw.co.th/_ui/responsive/theme-lambda/images/missing_product_EN_300x300.jpg'),
                                  image: NetworkImage(
                                      'https://ktwdevapi.ktw.co.th${_bannerComponentModel.value.banners[index].mediaUrl}'),
                                ),
                              ),
                            );
                          })),
                ],
              ),
            ],
          ));
  }
}
