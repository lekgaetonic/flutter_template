import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class CustomBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        LineIcons.angle_left,
        color: Colors.white,
        size: 26,
      ),
      onPressed: () => {
        Get.back(),
      },
    );
  }
}
