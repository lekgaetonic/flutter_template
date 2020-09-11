import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/login/appbar.dart';
import 'package:flutter_getx/src/pages/login/body.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // here the desired height
        child: LoginAppBar(),
      ),
      //extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: LoginBody(),
      ),
    );
  }
}
