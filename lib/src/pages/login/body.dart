import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/home/main.dart';
import 'package:flutter_getx/src/pages/login/controller.dart';
import 'package:get/get.dart';

class LoginBody extends StatelessWidget {
  final LoginController _loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: _headerText(),
          padding: EdgeInsets.fromLTRB(15, 20, 15, 10),
        ),
        Container(
          child: SizedBox(
            height: 48,
            width: double.infinity,
            child: _tfdUsername(),
          ),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
        ),
        Container(
          child: SizedBox(
            height: 48,
            width: double.infinity,
            child: _tfdPassword(),
          ),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
        ),
        Container(
          child: FlatButton(
            onPressed: () => {},
            color: Colors.white,
            child: Text(
              'forgot_password'.tr,
              style: TextStyle(
                fontSize: 16,
                color: Colors.blueGrey.shade500,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
        ),
        Container(
          child: SizedBox(
            height: 44,
            width: double.infinity,
            child: RaisedButton(
              onPressed: () => {
                _loginController.loginClick(_loginController.username.value,
                    _loginController.password.value),
                _loginController.error == '' ? Get.to(HomePage()) : ''
              },
              color: Color(0xFFF5821f),
              child: Text(
                'login'.tr,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
        ),
        Container(
          child: SizedBox(
            height: 44,
            width: double.infinity,
            child: RaisedButton(
              onPressed: () => {Get.snackbar('register', 'snackbar')},
              color: Colors.white,
              child: Text(
                'register'.tr,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          padding: EdgeInsets.fromLTRB(15, 10, 15, 5),
        ),
        _loginController.error != null
            ? Container(
                child: SizedBox(
                height: 44,
                width: double.infinity,
                child: Obx(() => Text(
                      "${_loginController.errorDescription}",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ))
            : '',
        Obx(() => Text("username: ${_loginController.username}")),
        Obx(() => Text("password: ${_loginController.password}")),
      ],
    );
  }

  _headerText() {
    return Text(
      'login'.tr,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
    );
  }

  _tfdUsername() {
    return TextField(
      autofocus: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'email'.tr,
      ),
      onChanged: (value) => {_loginController.usernameChanged(value)},
    );
  }

  _tfdPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'password'.tr,
      ),
      onChanged: (value) => {_loginController.passwordChanged(value)},
    );
  }
}
