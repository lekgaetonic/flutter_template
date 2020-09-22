import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/search/controller.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class SuggestionSearchAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final SearchSuggestionController _searchSuggestionController =
        Get.put(SearchSuggestionController());
    return AppBar(
      //backgroundColor: Colors.transparent,
      //elevation: 0,
      leading: IconButton(
        icon: Icon(
          LineIcons.angle_left,
          color: Colors.white,
          size: 30,
        ),
        onPressed: () => {Get.back()},
      ),
      title: TextField(
        autofocus: true,
        onChanged: (text) => {_searchSuggestionController.keywordChanged(text)},
        style: TextStyle(fontSize: 20.0, color: Colors.white),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 14.0, bottom: 8.0, top: 8.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white10, width: 1.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white10, width: 1.0),
          ),
          filled: true,
          fillColor: Colors.white10,
          border: OutlineInputBorder(),
          hintText: 'search'.tr,
          suffixIcon: IconButton(
              icon: Icon(
                EvaIcons.search,
                color: Colors.white,
              ),
              onPressed: () => {}),
        ),
      ),
      actions: [
        // IconButton(
        //     icon: Icon(
        //       LineIcons.camera,
        //       color: Colors.white,
        //       size: 36,
        //     ),
        //     onPressed: () => {}),
      ],
    );
  }
}
