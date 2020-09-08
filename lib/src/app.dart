import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/locales/messages.dart';
import 'package:flutter_getx/models/authen.dart';
import 'package:flutter_getx/services/authen.dart';
import 'package:flutter_getx/src/pages/error/main.dart';
import 'package:flutter_getx/src/pages/login/main.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(), // your translations
      // locale: ui.window.locale,
      locale:
          Locale('th', 'TH'), // translations will be displayed in that locale
      fallbackLocale: Locale('en',
          'US'), // specify the fallback locale in case an invalid locale is selected.
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Sukhumvit',
        primarySwatch: Colors.grey,
        primaryColor: Color(0xFFF5821f),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SafeArea(
        child: ErrorPage(),
      ),
    );
  }

  AuthenModel authenModel;
  getAuthen() async {
    authenModel = await Authen().getBasicAuthen();
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
