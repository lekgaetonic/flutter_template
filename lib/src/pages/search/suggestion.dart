import 'package:flutter/material.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:flutter_getx/src/pages/search/appbar.dart';
import 'package:flutter_getx/src/pages/search/searchbody.dart';
import 'package:get/get.dart';

class SuggestionSearch extends StatelessWidget {
  final AuthenController _authenController = Get.put(AuthenController());
  @override
  Widget build(BuildContext context) {
    _authenController.fetchRefreshToken();
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0), // here the desired height
          child: SearchAppBar(),
        ),
        body: SearchBody());
  }
}
