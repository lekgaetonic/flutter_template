import 'package:flutter/material.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
        height: MediaQuery.of(context).size.height,
        image: AssetImage("assets/images/loading.gif"),
      ),
    );
  }
}
