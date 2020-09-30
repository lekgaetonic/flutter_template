import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/theme.dart';
import 'package:flutter_getx/locales/messages.dart';
import 'package:flutter_getx/src/pages/shared/loadingpage.dart';
import 'package:get/get.dart';

import 'authen/controller.dart';
import 'pages/home/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final AuthenController _authenController = Get.put(AuthenController());
    Future<SharedPreferences> prefs = SharedPreferences.getInstance();
    prefs.then((value) => {
          _authenController.accessToken.value = value.getString("accessToken"),
          _authenController.expiresIn.value = value.getInt("expiresIn"),
          _authenController.gruntType.value = value.getString("gruntType"),
          _authenController.refreshToken.value =
              value.getString("refreshToken"),
          if (_authenController.accessToken.value != null &&
              _authenController.accessToken.value != "" &&
              _authenController.refreshToken.value != null &&
              _authenController.refreshToken.value != "")
            {_authenController.fetchRefreshToken()}
          else
            {_authenController.fetchAuthen()}
        });

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(), // your translations
      // locale: ui.window.locale,
      locale: Locale('th', 'TH'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Sukhumvit',
        primarySwatch: Colors.grey,
        primaryColor: AppColor().primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        appBarTheme: AppBarTheme(
            color: AppColor().primary,
            iconTheme: IconThemeData(color: Colors.white)),
      ),
      home: Obx(() {
        return _authenController.accessToken.value == ""
            ? LoadingPage()
            : HomePage();
      }),
    );
  }
}
//Obx(() => _authenController.accessToken.value != "" ? HomePage() : ErrorPage())
//Obx(() { return _authenController.accessToken.value != "" ? HomePage() : ErrorPage();})
