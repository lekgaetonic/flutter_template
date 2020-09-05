
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/widgets/home/header.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Header(),
    );
  }
}