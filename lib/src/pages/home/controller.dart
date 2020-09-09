import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../../models/authen.dart';
import '../../../services/authen.dart';

class HomePageController extends GetxController {
  AuthenModel authenModel;
  getAuthen() async {
    authenModel = await AuthenService().getBasicAuthen();
    if (authenModel.error == "") {
      gruntType.value = authenModel.gruntType;
      accessToken.value = authenModel.accessToken;
      refreshToken.value = authenModel.refreshToken;
      expiresIn.value = authenModel.expiresIn;
    } else {
      error.value = authenModel.error;
      errorDescription.value = authenModel.errorDescription;
      Get.snackbar("Login failed", authenModel.errorDescription,
          icon: Icon(EvaIcons.alertCircleOutline));
    }
  }

  var error = "".obs;
  var errorDescription = "".obs;

  var gruntType = "".obs;
  var accessToken = "".obs;
  var refreshToken = "".obs;
  var expiresIn = 0.obs;
}
