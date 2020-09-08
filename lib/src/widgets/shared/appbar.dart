import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class SharedAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
            LineIcons.shopping_cart,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => {},
        ),
        IconButton(
          icon: Icon(
            LineIcons.user,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () => {},
        ),
      ],
    );
  }
}
