import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderSection extends StatelessWidget {
  final String title;
  final bool more;
  const HeaderSection(
    this.title, {
    Key key,
    this.more: true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(5),
          width: Get.width / 2,
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        more ? Container(
          padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
          width: Get.width / 2,
          child: Text(
            '${'viewmore'.tr} >>',
            style: TextStyle(fontSize: 14, color: Colors.indigo),
            textAlign: TextAlign.right,
          ),
        ) : Container(),
      ],
    );
  }
}
