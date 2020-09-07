import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/login/appbar.dart';
import 'package:flutter_getx/src/pages/login/body.dart';
import 'package:line_icons/line_icons.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // here the desired height
        child: LoginAppBar(),
      ),
      body: SingleChildScrollView(
        child: LoginBody(),
      ),
    );
  }
}
