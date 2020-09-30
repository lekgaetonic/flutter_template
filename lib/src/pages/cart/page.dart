import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/theme.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:flutter_getx/src/widgets/shared/appbottombar.dart';
import 'package:get/get.dart';

class CartPage extends StatelessWidget {
  final AuthenController _authenController = Get.put(AuthenController());

  @override
  Widget build(BuildContext context) {
    _authenController.fetchRefreshToken();
    return Container(
      color: AppColor().primary,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: AppColor().primary,
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Empty Cart.',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          bottomNavigationBar: SharedBottomBar(1),
        ),
      ),
    );
  }
}
