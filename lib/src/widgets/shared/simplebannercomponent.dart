import 'package:flutter/material.dart';
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:get/get.dart';

class SimpleBannerComponent extends StatelessWidget {
  final Sections section;
  SimpleBannerComponent(this.section, {Key key});
  HomePageController _homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    for (var name in section.components) {
      print(name);
      _homePageController.fetchbannerComponent(name);
    }

    return Obx(
        () => _homePageController.bannerComponentModel.value.banners == null
            ? Container()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 100.0,
                      //child: ListView(scrollDirection: Axis.horizontal, children: listCard),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _homePageController
                              .bannerComponentModel.value.banners.length,
                          itemBuilder: (BuildContext ctxt, int index) {
                            print(
                                'https://ktwdevapi.ktw.co.th${_homePageController.bannerComponentModel.value.banners[index].mediaUrl}');
                            return Container(
                              padding: EdgeInsets.all(5),
                              child: Image.network(
                                  'https://ktwdevapi.ktw.co.th${_homePageController.bannerComponentModel.value.banners[index].mediaUrl}'),
                            );
                          })),
                ],
              ));
  }
}
