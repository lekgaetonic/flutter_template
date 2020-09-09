import 'package:flutter/material.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:flutter_getx/src/pages/search/suggestion.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

import '../../pages/login/main.dart';

class SharedAppBar extends StatelessWidget {
  final AuthenController _authenController = Get.find<AuthenController>();

  @override
  Widget build(BuildContext context) {
    print(_authenController.gruntType.value);
    return AppBar(
      leading: IconButton(
        icon: Icon(
          LineIcons.bars,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () => {},
      ),
      title: Image(
        image: AssetImage(
          'assets/images/logo.png',
        ),
        height: 36,
      ),
      actions: [
        IconButton(
          icon: Icon(
            LineIcons.search,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => {Get.to(SuggestionSearch())},
        ),
        Obx(() {
          return _authenController.gruntType.value == "password"
              ? IconButton(
                  icon: Icon(
                    LineIcons.shopping_cart,
                    color: Colors.white,
                    size: 30,
                  ),
                  onPressed: () => {},
                )
              : Container();
        }),
        Obx(() {
          return _authenController.gruntType.value == "client_credentials"
              ? IconButton(
                  icon: Icon(
                    LineIcons.user,
                    color: Colors.white,
                    size: 32,
                  ),
                  onPressed: () => {Get.to(LoginPage())},
                )
              : Container();
        }),
      ],
    );
  }
}
