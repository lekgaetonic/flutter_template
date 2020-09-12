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
          padding: EdgeInsets.all(5),
          width: Get.width / 2,
          child: Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        more
            ? Container(
                alignment: Alignment(1.0, 0.0),
                padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                width: 100,
                child: FlatButton(
                  onPressed: () {
                    goto == '' ? Get.toNamed(goto) : '';
                  },
                  child: Text(
                    '${'viewmore'.tr} >>',
                    style: TextStyle(fontSize: 14, color: Colors.indigo),
                    textAlign: TextAlign.right,
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}
