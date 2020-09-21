import 'dart:ui';
import 'dart:convert' as convert;
import 'package:carousel_pro/carousel_pro.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:flutter_getx/src/widgets/shared/appbar.dart';
import 'package:flutter_getx/src/widgets/shared/ktwbannercomponent.dart';
import 'package:flutter_getx/src/widgets/shared/rotatecomponent.dart';
import 'package:flutter_getx/src/widgets/shared/headersection.dart';
import 'package:flutter_getx/src/widgets/shared/simplebannercomponent.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePageController _homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    _homePageController.fetchHomePage();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // here the desired height
        child: SharedAppBar(),
      ),
      body: SingleChildScrollView(
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:
                _homePageController.cmsHomePageModel.value.sections == null
                    ? []
                    : buildListWidget(
                        _homePageController.cmsHomePageModel.value.sections),
          ),
        ),
      ),
    );
  }

  //https://stackoverflow.com/questions/56947046/flutter-for-loop-to-generate-list-of-widgets/56947190
  List<Widget> buildListWidget(data) {
    if (data != null) {
      return List.generate(data.length, (index) {
        final Sections section = data[index];
        if (section.type == "RotatingImagesComponent") {
          return RotateComponent(section.components[0]);
        } else if (section.type == "SimpleBannerComponent") {
          return SimpleBannerComponent(section);
        } else if (section.type == "BannerComponent") {
          return SimpleBannerComponent(section);
        } else if (section.type == "KTWBannerComponent") {
          print(section.section);
          if (section.section == 'Section4Mobile') {
            return Container();
          } else {
            return KtwBannerComponent(section);
          }
        } else {
          // // print('--${data[index].type}--');
          // for (var name in data[index].components) {
          //   print(name);
          // }
          // return ListTile(
          //   leading: Text('${data[index].components.length ?? 0}'),
          //   trailing: Icon(EvaIcons.activity),
          //   subtitle: Text('${data[index].type}'),
          //   title: Text('${data[index].section}'),
          // );
          return Container();
        }
      });
    } else {
      return List<Widget>();
    }
  }
}
