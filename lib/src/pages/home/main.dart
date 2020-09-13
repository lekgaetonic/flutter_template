import 'dart:ui';

import 'package:carousel_pro/carousel_pro.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:flutter_getx/src/widgets/shared/appbar.dart';
import 'package:flutter_getx/src/widgets/shared/rotatecomponent.dart';
import 'package:flutter_getx/src/widgets/shared/headersection.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePageController _homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    _homePageController.fetchHomePage();
    _homePageController.fetchbannerComponent();
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
        if (data[index].type == "RotatingImagesComponent") {
          return RotateComponent(section.components[0]);
        } else if (data[index].type == "SimpleBannerComponent") {
          return SimpleBannerComponent(section);
        } else if (data[index].type == "BannerComponent") {
          List<Container> listCard = List<Container>();
          for (var name in data[index].components) {
            listCard.add(
              Container(
                padding: EdgeInsets.all(5),
                child: Image.network(
                    'https://shop.ktw.co.th/medias/sys_master/images/images/hcd/ha1/9054013882398/-.png'),
              ),
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(
                data[index].section,
              ),
              Container(
                  height: 100.0,
                  child: ListView(
                      scrollDirection: Axis.horizontal, children: listCard)),
            ],
          );
        } else if (data[index].type == "KTWBannerComponent") {
          List<Container> listCard = List<Container>();
          for (var name in data[index].components) {
            listCard.add(
              Container(
                padding: EdgeInsets.all(5),
                child: Image.network(
                    'https://shop.ktw.co.th/medias/sys_master/images/images/hcd/ha1/9054013882398/-.png'),
              ),
            );
          }

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderSection(
                data[index].section,
              ),
              Container(
                  height: 100.0,
                  child: ListView(
                      scrollDirection: Axis.horizontal, children: listCard)),
            ],
          );
        } else {
          print('--${data[index].type}--');
          for (var name in data[index].components) {
            print(name);
          }
          return ListTile(
            leading: Text('${data[index].components.length ?? 0}'),
            trailing: Icon(EvaIcons.activity),
            subtitle: Text('${data[index].type}'),
            title: Text('${data[index].section}'),
          );
        }
      });
    } else {
      return List<Widget>();
    }
  }
}

class SimpleBannerComponent extends StatelessWidget {
  final Sections section;
  const SimpleBannerComponent(this.section, {Key key});

  @override
  Widget build(BuildContext context) {
    List<Container> listCard = List<Container>();
    for (var name in section.components) {
      listCard.add(
        Container(
          padding: EdgeInsets.all(5),
          child: Image.network(
              'https://shop.ktw.co.th/medias/sys_master/images/images/h0d/hfa/9054011064350/-.png'),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // HeaderSection(data[index].section),
        Container(
          height: 100.0,
          child: ListView(scrollDirection: Axis.horizontal, children: listCard),
        ),
      ],
    );
  }
}
