import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/search/appbar.dart';
import 'package:flutter_getx/src/pages/search/searchbody.dart';

class SuggestionSearch extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0), // here the desired height
          child: SearchAppBar(),
        ),
        body: SearchBody());
  }
}
