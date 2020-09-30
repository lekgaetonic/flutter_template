import 'package:flutter/material.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:flutter_getx/src/widgets/shared/appbar.dart';
import 'package:get/get.dart';

class AccountPage extends StatelessWidget {
  final AuthenController _authenController = Get.put(AuthenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(56.0), // here the desired height
          child: SharedAppBar(),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('accessToken : ${_authenController.accessToken}'),
                Text('expiresIn : ${_authenController.expiresIn}'),
                Text('gruntType : ${_authenController.gruntType}'),
                Text('refreshToken : ${_authenController.refreshToken}'),
                RaisedButton(
                  onPressed: () => {_authenController.fetchLogout()},
                  color: Colors.white,
                  child: Text(
                    'logout'.tr,
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
