import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter_getx/constants/custom.dart';
import 'package:flutter_getx/models/primaryimage.dart';
import 'package:flutter_getx/services/service_base.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;
import 'package:http/io_client.dart';

class ImageService extends ServiceBase {
  ImageService() : super();

  String _productPath = '/product';
  String _primaryPath = '/image';
  String _galleryPath = '/gallery';

  final AuthenController _authenController = Get.find<AuthenController>();

  Future<PrimaryImageModel> getPrimaryImage(
      String productCode, ImageSize imageSize) async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);

    var response = await http.get(
        '$endpoint$webroot$version$basesite$_productPath' +
            '/' +
            productCode +
            _primaryPath +
            '/' +
            describeEnum(imageSize),
        headers: {
          'authorization': 'Bearer ${_authenController.accessToken.value}',
          'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
        });

    var jsonResponse = convert.jsonDecode(utf8.decode(response.bodyBytes));
    // print(jsonResponse);
    if (response.statusCode == 200) {
      return PrimaryImageModel.fromJson(jsonResponse);
    } else {
      return PrimaryImageModel();
    }
  }

  Future<GalleryImageModel> getGalleryImage(
      String productCode, ImageSize imageSize) async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);

    var response = await http.get(
        '$endpoint$webroot$version$basesite$_productPath' +
            '/' +
            productCode +
            _galleryPath +
            '/' +
            imageSize.toString(),
        headers: {
          'authorization': 'Bearer ${_authenController.accessToken.value}',
          'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
        });

    var jsonResponse = convert.jsonDecode(utf8.decode(response.bodyBytes));
    // print(jsonResponse);
    if (response.statusCode == 200) {
      return GalleryImageModel.fromJson(jsonResponse);
    } else {
      return GalleryImageModel();
    }
  }
}
