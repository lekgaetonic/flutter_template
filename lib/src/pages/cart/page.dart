import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/theme.dart';
import 'package:flutter_getx/src/widgets/shared/appbottombar.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
