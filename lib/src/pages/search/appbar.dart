import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/theme.dart';
import 'package:flutter_getx/src/pages/search/controller.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class SearchAppBar extends StatelessWidget {
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
        ),
        onPressed: () => {Get.back()},
      ),
      title: TextField(
        autofocus: true,
        onChanged: (text) => {_searchSuggestionController.keywordChanged(text)},
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.white,
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(left: 10.0),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor().primary, width: 1.0),
            // borderRadius: BorderRadius.all(Radius.circular(32)),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor().primary, width: 1.0),
          ),
          filled: true,
          fillColor: Colors.white24,
          border: OutlineInputBorder(),
          hintText: 'search'.tr,
          hintStyle: TextStyle(color: Colors.white70),
          suffixIcon: IconButton(
            icon: Icon(
              LineIcons.search,
              color: Colors.white,
              size: 18,
            ),
            onPressed: () => {},
          ),
        ),
      ),
      actions: [
        IconButton(
            icon: Icon(
              LineIcons.microphone,
              color: Colors.white,
              size: 26,
            ),
            onPressed: () => {}),
      ],
    );
  }
}
