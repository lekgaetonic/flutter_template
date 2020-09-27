import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/custom.dart';
import 'package:flutter_getx/models/bannercomponent.dart';
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:flutter_getx/src/widgets/shared/headersection.dart';
import 'package:get/get.dart';

import 'loadingwidget.dart';

class KtwBannerComponent extends StatelessWidget {
  final Sections section;
  KtwBannerComponent(this.section, {Key key});
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
        ? LoadingWidget()
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
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: _bannerComponentModel.value.banners.length,
                      itemBuilder: (BuildContext ctxt, int index) {
                        return Container(
                          padding: EdgeInsets.all(5),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: FadeInImage(
                              placeholder: NetworkImage(missingImage),
                              image: NetworkImage(endpoint +
                                  '${_bannerComponentModel.value.banners[index].mediaUrl}'),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ));
  }
}
