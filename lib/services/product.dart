import 'dart:developer';

import 'dart:convert';
import 'dart:io';
import 'package:flutter_getx/models/product.dart';
import 'package:flutter_getx/services/service_base.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;
import 'package:http/io_client.dart';

class ProductService extends ServiceBase {
  ProductService() : super();

  String _prodcuctPath = '/product/';
  final AuthenController _authenController = Get.find<AuthenController>();
  Future<ProductModel> getProduct(String productCode) async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);
    try {
      var response = await http.get(
          '$endpoint$webroot$version$basesite$_prodcuctPath' + productCode,
          headers: {
            'authorization': 'Bearer ${_authenController.accessToken.value}',
            'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
          });

      var jsonResponse = convert.jsonDecode(utf8.decode(response.bodyBytes));
      // print(jsonResponse);
      if (response.statusCode == 200) {
        return ProductModel.fromJson(jsonResponse);
      } else {
        return ProductModel();
      }
    } catch (ex) {
      return ProductModel();
    }
  }
}
