import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/login/body.dart';
import 'package:line_icons/line_icons.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
      body: SingleChildScrollView(
        child: LoginBody(),
      ),
    );
  }
}
