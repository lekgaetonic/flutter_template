import 'package:flutter/material.dart';
import 'package:flutter_getx/src/widgets/home/header.dart';
import 'package:flutter_getx/src/widgets/shared/appbar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // here the desired height
        child: SharedAppBar(),
      ),
      body: SingleChildScrollView(),
    );
  }
}
