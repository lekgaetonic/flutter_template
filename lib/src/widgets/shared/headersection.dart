import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderSection extends StatelessWidget {
  final String title;
  final bool more;
  final String goto;
  const HeaderSection(this.title, {Key key, this.more: true, this.goto});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(10, 15, 0, 0),
          width: Get.width - 70,
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        more
            ? Container(
                padding: EdgeInsets.fromLTRB(0, 18, 10, 0),
                width: 70,
                child: InkWell(
                  onTap: () {
                    goto == '' ? Get.toNamed(goto) : '';
                  },
                  child: Text(
                    '${'viewmore'.tr} >>',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.indigo,
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
