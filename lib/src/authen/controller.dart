import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

import '../../models/authen.dart';
import '../../services/authen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthenController extends GetxController {
  Future<SharedPreferences> prefs = SharedPreferences.getInstance();

  AuthenModel authenModel;
  fetchAuthen() async {
    authenModel = await AuthenService().getBasicAuthen();
    if (authenModel.error == "") {
      prefs.then((value) => {
            value.setString("accessToken", authenModel.accessToken),
            value.setString("gruntType", authenModel.gruntType),
            value.setString("refreshToken", authenModel.refreshToken),
            value.setInt("expiresIn", authenModel.expiresIn),
          });

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

  fetchLogin(username, password) async {
    error.value = "";
    errorDescription.value = "";

    authenModel = await AuthenService().getLoginAuthen(username, password);
    if (authenModel.error == "") {
      prefs.then((value) => {
            value.setString("accessToken", authenModel.accessToken),
            value.setString("gruntType", authenModel.gruntType),
            value.setString("refreshToken", authenModel.refreshToken),
            value.setInt("expiresIn", authenModel.expiresIn),
          });

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

  fetchRefreshToken() async {
    if (refreshToken.value != "") {
      error.value = "";
      errorDescription.value = "";

      authenModel = await AuthenService().refreshToken();
      if (authenModel.error == "") {
        prefs.then((value) => {
              value.setString("accessToken", authenModel.accessToken),
              value.setString("gruntType", authenModel.gruntType),
              value.setString("refreshToken", authenModel.refreshToken),
              value.setInt("expiresIn", authenModel.expiresIn),
            });
        gruntType.value = authenModel.gruntType;
        accessToken.value = authenModel.accessToken;
        refreshToken.value = authenModel.refreshToken;
        expiresIn.value = authenModel.expiresIn;
        print('expiresIn:${expiresIn.value}');
      } else {
        error.value = authenModel.error;
        errorDescription.value = authenModel.errorDescription;
        Get.snackbar("Login failed", authenModel.errorDescription,
            icon: Icon(EvaIcons.alertCircleOutline));

        fetchLogout();
      }
    }
  }

  fetchLogout() async {
    prefs.then((value) => {
          value.remove("accessToken"),
          value.remove("gruntType"),
          value.remove("refreshToken"),
          value.remove("expiresIn"),
        });

    username.value = "";
    password.value = "";
    error.value = "";
    errorDescription.value = "";

    fetchAuthen();
  }

  usernameChanged(sUsername) {
    username.value = sUsername;
  }

  passwordChanged(sPassword) {
    password.value = sPassword;
  }

  var username = "".obs;
  var password = "".obs;
  var error = "".obs;
  var errorDescription = "".obs;

  var gruntType = "".obs;
  var accessToken = "".obs;
  var refreshToken = "".obs;
  var expiresIn = 0.obs;
}
