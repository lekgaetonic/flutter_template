import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/theme.dart';
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:flutter_getx/src/pages/login/main.dart';
import 'package:flutter_getx/src/widgets/shared/appbar.dart';
import 'package:flutter_getx/src/widgets/shared/gridbannercomponent.dart';
import 'package:flutter_getx/src/widgets/shared/carouselwidget.dart';
import 'package:flutter_getx/src/widgets/shared/loadingwidget.dart';
import 'package:flutter_getx/src/widgets/shared/simplebannercomponent.dart';
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
        child: Obx(
          () => Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children:
                _homePageController.cmsHomePageModel.value.sections == null
                    ? [LoadingWidget()]
                    : buildListWidget(
                        _homePageController.cmsHomePageModel.value.sections),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  final AuthenController _authenController = Get.find<AuthenController>();
  Widget _buildBottomNavigationBar() {
    int _selectedIndex = 0;
    return BottomNavigationBar(
      onTap: (int index) {
        // _navigateToScreens(index);
        _selectedIndex = index;
        print(index);
        switch (index) {
          case 0:
            {
              // statements;
            }
            break;

          case 1:
            {
              //statements;
            }
            break;
          case 2:
            {
              Get.to(
                LoginPage(),
              );
            }
            break;

          default:
            {
              //statements;
            }
            break;
        }
      },
      backgroundColor: AppColor().secondary,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(LineIcons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(LineIcons.user),
          label: 'Account',
        ),
      ],
      // currentIndex: _selectedIndex,
      selectedItemColor: AppColor().primary,
      unselectedItemColor: Colors.grey,
      // onTap: _onItemTapped,
    );
  }

  //https://stackoverflow.com/questions/56947046/flutter-for-loop-to-generate-list-of-widgets/56947190
  List<Widget> buildListWidget(data) {
    if (data != null) {
      return List.generate(data.length, (index) {
        final Sections section = data[index];
        if (section.type == "RotatingImagesComponent") {
          return CarouselWidget(section.components[0]);
        } else if (section.type == "SimpleBannerComponent") {
          return SimpleBannerComponent(section);
        } else if (section.type == "BannerComponent") {
          return SimpleBannerComponent(section);
        } else if (section.type == "KTWBannerComponent") {
          if (section.section == 'Section4Mobile') {
            return Container();
          } else {
            return GridBannerComponent(section);
          }
        } else {
          return Container();
        }
      });
    } else {
      return List<Widget>();
    }
  }
}
