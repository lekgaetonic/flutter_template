import 'package:flutter/material.dart';
import 'package:flutter_getx/locales/messages.dart';
import 'package:flutter_getx/src/pages/shared/loadingpage.dart';
import 'package:get/get.dart';

import 'authen/controller.dart';
import 'pages/home/main.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    final AuthenController _authenController = Get.put(AuthenController());

    if (_authenController.accessToken.value == "") {
      _authenController.fetchAuthen();
    }

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      translations: Messages(), // your translations
      // locale: ui.window.locale,
      locale: Locale('th', 'TH'),
      fallbackLocale: Locale('en', 'US'),
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Sukhumvit',
        primarySwatch: Colors.blue,
        primaryColor: Color(0xFFF5821f),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primaryTextTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      home: SafeArea(
        child: Obx(() {
          return _authenController.accessToken.value == ""
              ? LoadingPage()
              : HomePage();
        }),
      ),
    );
  }
}
//Obx(() => _authenController.accessToken.value != "" ? HomePage() : ErrorPage())
//Obx(() { return _authenController.accessToken.value != "" ? HomePage() : ErrorPage();})
