import 'dart:convert';
import 'dart:io';
import 'package:flutter_getx/models/searchsuggestion.dart';
import 'package:flutter_getx/services/service_base.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:get/get.dart';
import 'dart:convert' as convert;
import 'package:http/io_client.dart';

class SearchService extends ServiceBase {
  SearchService() : super();

  String _suggesionSearchPath = '/products/autocomplete';
  final AuthenController _authenController = Get.find<AuthenController>();
  Future<SearchSuggestionModel> getSuggestion(String keyword) async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);
    try {
      var response = await http.get(
          '$endpoint$webroot$version$basesite$_suggesionSearchPath?term=$keyword&max=30',
          headers: {
            'authorization': 'Bearer ${_authenController.accessToken.value}',
            'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
          });

      // print(jsonResponse);
      if (response.statusCode == 200) {
        var jsonResponse = convert.jsonDecode(utf8.decode(response.bodyBytes));
        return SearchSuggestionModel.fromJson(jsonResponse);
      } else {
        return SearchSuggestionModel();
      }
    } catch (ex) {
      return SearchSuggestionModel();
    }
  }
}
