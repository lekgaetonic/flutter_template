import 'package:flutter/material.dart';
import 'package:flutter_getx/src/widgets/buttons/customback.dart';
import 'package:line_icons/line_icons.dart';

class ProductAppBar extends StatelessWidget {
  final String productSummary;
  const ProductAppBar(this.productSummary, {Key key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //backgroundColor: Colors.transparent,
      //elevation: 0,
      leading: CustomBackButton(),
      title: Text(
        productSummary,
        style: TextStyle(
          fontSize: 14,
        ),
      ),
      actions: [
        IconButton(
            icon: Icon(
              LineIcons.heart_o,
              color: Colors.white,
              size: 26,
            ),
            onPressed: () => {}),
      ],
    );
  }
}
