import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/services/cms.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../../models/authen.dart';
import '../../../services/authen.dart';

class HomePageController extends GetxController {
  // AuthenModel authenModel;
  fetchHomePage() async {
    cmsHomePageModel = await CmsService().getHomePage();
  }

  CmsHomePageModel cmsHomePageModel = CmsHomePageModel();
  // var error = "".obs;
  // var errorDescription = "".obs;

  // var gruntType = "".obs;
  // var accessToken = "".obs;
  // var refreshToken = "".obs;
  // var expiresIn = 0.obs;
}
