import 'dart:io';
import 'dart:convert' as convert;
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/models/rotatecomponent.dart';
import 'package:flutter_getx/services/service_base.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:get/get.dart';
import 'package:http/io_client.dart';

class CmsService extends ServiceBase {
  CmsService() : super();

  String homepagepath = '/' + 'rest' + '/v2/' + 'ktw' + '/cms/' + '/homepage';
  String rotatecomponentpath =
      '/' + 'rest' + '/v2/' + 'ktw' + '/cms/' + '/rotatecomponent';

  final AuthenController _authenController = Get.find<AuthenController>();

  Future<CmsHomePageModel> getHomePage() async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);
    var response = await http.get('$endpoint$homepagepath', headers: {
      'authorization': 'Bearer ${_authenController.accessToken.value}',
      'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
    });
    var jsonResponse = convert.jsonDecode(response.body);
    CmsHomePageModel model = CmsHomePageModel.fromJson(jsonResponse);

    return model;
  }

  Future<RotateComponentModel> getRotateComponent(String componentId) async {
    if (componentId == '') {
      componentId = 'KtwHomePageRotaingImagesComponent';
    }
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);
    var response = await http.post('$endpoint$rotatecomponentpath', headers: {
      'authorization': 'Bearer ${_authenController.accessToken.value}',
      'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
    }, body: {
      'component': 'KtwHomePageRotaingImagesComponent'
    });
    var jsonResponse = convert.jsonDecode(response.body);
    RotateComponentModel model = RotateComponentModel.fromJson(jsonResponse);

    return model;
  }
}
