import 'package:flutter/material.dart';
import 'package:flutter_getx/src/widgets/home/header.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                LineIcons.user,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () => {}),
        ],
      ),
      body: SingleChildScrollView(),
    );
  }
}
