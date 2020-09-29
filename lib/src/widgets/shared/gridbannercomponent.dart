import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/custom.dart';
import 'package:flutter_getx/models/bannercomponent.dart';
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:flutter_getx/src/widgets/shared/headersection.dart';
import 'package:get/get.dart';

import 'loadingwidget.dart';

class GridBannerComponent extends StatelessWidget {
  final Sections section;
  GridBannerComponent(this.section, {Key key});
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
              GridView.count(
                primary: false,
                padding: const EdgeInsets.all(10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 3,
                shrinkWrap: true,
                children: gridBannerImages(_bannerComponentModel.value.banners),
              ),
            ],
          ));
  }

  List<Widget> gridBannerImages(banners) {
    return [
      for (var banner in banners)
        Stack(
          children: [
            Image(
              image:
                  NetworkImage('https://ktwdevapi.ktw.co.th${banner.mediaUrl}'),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                '${banner.headline}',
                maxLines: 2,
                softWrap: true,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  backgroundColor: Colors.white54,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
    ];
  }
}
