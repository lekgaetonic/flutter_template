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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 250.0,
            // width: 300.0,
            child: Carousel(
              images: [
                NetworkImage(
                    'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                NetworkImage(
                    'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                // ExactAssetImage("assets/images/LaunchImage.jpg"),
              ],
            ),
          ),
          // Obx(() => _homePageController.cmsHomePageModel.sections.forEach((element) {
          //   SizedBox(
          //     height: MediaQuery.of(context).size.height,
          //     child:Text(element.type),
          //   );
          // }),
          // SingleChildScrollView(
          //   child: SizedBox(
          //     height: MediaQuery.of(context).size.height,
          //     child: Obx(
          //       () => ListView.builder(
          //         itemCount:
          //             _homePageController.cmsHomePageModel.sections.length ?? 0,
          //         itemBuilder: (context, index) {
          //           return buildListTile(index);
          //         },
          //       ),
          //     ),
          //   ),
          // ),
        ],
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
