import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: _tfdUserName(),
          padding: EdgeInsets.all(5),
        ),
        Container(
          child: _tfdPassword(),
          padding: EdgeInsets.all(5),
        ),
      ],
    );
  }

  _tfdUserName() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'User Name',
      ),
    );
  }

  _tfdPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Password',
      ),
    );
  }
}
