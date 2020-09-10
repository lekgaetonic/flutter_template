import 'package:carousel_pro/carousel_pro.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:flutter_getx/src/widgets/shared/appbar.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

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
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Obx(
            () => ListView.builder(
              itemCount: _homePageController.cmsHomePageModel.sections.length,
              itemBuilder: (context, index) {
                return buildListTile(index);
              },
            ),
          ),
        ),
      ),
    );
  }

  ListTile buildListTile(int index) {
    print(_homePageController.cmsHomePageModel.sections[index].type);
    if (_homePageController.cmsHomePageModel.sections[index].type ==
        "RotatingImagesComponent") {
      return ListTile(
        leading: Text(
            '${_homePageController.cmsHomePageModel.sections[index].components.length ?? 0}'),
        trailing: Icon(EvaIcons.activity),
        subtitle: Text(
            '${_homePageController.cmsHomePageModel.sections[index].type}'),
        title: Text(
            '${_homePageController.cmsHomePageModel.sections[index].section}'),
      );
    } else if (_homePageController.cmsHomePageModel.sections[index].type ==
        "SimpleBannerComponent") {
      return ListTile(
        leading: Text(
            '${_homePageController.cmsHomePageModel.sections[index].components.length ?? 0}'),
        trailing: Icon(EvaIcons.activity),
        subtitle: Text(
            '${_homePageController.cmsHomePageModel.sections[index].type}'),
        title: Text(
            '${_homePageController.cmsHomePageModel.sections[index].section}'),
      );
    } else if (_homePageController.cmsHomePageModel.sections[index].type ==
            "BannerComponent" ||
        _homePageController.cmsHomePageModel.sections[index].type ==
            "KTWBannerComponent") {
      return ListTile(
        leading: Text(
            '${_homePageController.cmsHomePageModel.sections[index].components.length ?? 0}'),
        trailing: Icon(EvaIcons.activity),
        subtitle: Text(
            '${_homePageController.cmsHomePageModel.sections[index].type}'),
        title: Text(
            '${_homePageController.cmsHomePageModel.sections[index].section}'),
      );
    } else {
      return ListTile(
        leading: Text(
            '${_homePageController.cmsHomePageModel.sections[index].components.length ?? 0}'),
        trailing: Icon(EvaIcons.activity),
        subtitle: Text(
            '${_homePageController.cmsHomePageModel.sections[index].type}'),
        title: Text(
            '${_homePageController.cmsHomePageModel.sections[index].section}'),
      );
    }
  }
}
