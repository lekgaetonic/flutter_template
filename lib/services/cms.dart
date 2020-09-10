import 'dart:io';
import 'dart:convert' as convert;
import 'package:flutter_getx/models/cms.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_getx/models/authen.dart';
import 'package:flutter_getx/services/service_base.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:get/get.dart';
import 'package:http/io_client.dart';

class CmsService extends ServiceBase {
  CmsService() : super();
  // String webroot = 'rest';
  // String basesite = 'ktw';

  String path = '/rest/v2/ktw/cms/homepage';

  final AuthenController _authenController = Get.find<AuthenController>();

  Future<CmsHomePageModel> getHomePage() async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);
    print(_authenController.accessToken.value);
    var response = await http.get('$endpoint$path', headers: {
      'authorization': 'Bearer ${_authenController.accessToken.value}',
      'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
    });
    var jsonResponse = convert.jsonDecode(response.body);
    CmsHomePageModel model = CmsHomePageModel.fromJson(jsonResponse);

    return model;
  }
}
