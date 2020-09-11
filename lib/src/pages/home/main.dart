import 'package:carousel_pro/carousel_pro.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:flutter_getx/src/widgets/shared/appbar.dart';
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:
            buildListWidget(_homePageController.cmsHomePageModel.sections),
      ),
    );
  }

  //https://stackoverflow.com/questions/56947046/flutter-for-loop-to-generate-list-of-widgets/56947190
  List<Widget> buildListWidget(data) {
    return List.generate(data.length, (index) {
      if (_homePageController.cmsHomePageModel.sections[index].type ==
          "RotatingImagesComponent") {
        return SizedBox(
          height: 150.0,
          // width: 300.0,
          child: Carousel(
            images: [
              NetworkImage(
                  'https://ktwdevapi.ktw.co.th/medias/sys_master/images/images/h8b/h1b/8845807026206/Happy-May-1900x650.jpg'),
              NetworkImage(
                  'https://ktwdevapi.ktw.co.th/medias/sys_master/images/images/h32/h4a/8845808205854/TOHO-1900x650s.jpg'),
              NetworkImage(
                  'https://ktwdevapi.ktw.co.th/medias/sys_master/images/images/h32/h4a/8845808205854/TOHO-1900x650s.jpg'),
              NetworkImage(
                  'https://shop.ktw.co.th/medias/sys_master/images/images/h65/hb9/9088749633566/5.-1900x650-3.jpg'),
              // ExactAssetImage("assets/images/LaunchImage.jpg"),
            ],
          ),
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
    });
  }
}
