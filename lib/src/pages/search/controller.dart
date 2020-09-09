import 'package:get/state_manager.dart';

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/models/authen.dart';
import 'package:flutter_getx/services/authen.dart';
import 'package:get/get.dart';

class SearchSuggestionController extends GetxController {
  var keyword = "".obs;

  keywordChanged(text) {
    keyword.value = text;
  }
}
