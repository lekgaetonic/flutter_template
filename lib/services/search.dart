import 'dart:io';
import 'package:flutter_getx/models/searchsuggestion.dart';
import 'package:flutter_getx/services/service_base.dart';
import 'dart:convert' as convert;
import 'package:http/io_client.dart';

class SearchService extends ServiceBase {
  SearchService() : super();

  String _suggesionSearchPath = '/products/autocomplete';

  Future<SearchSuggestionModel> getSuggestion(String keyword) async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);

    var response = await http.get(
        '$endpoint$webroot$version$basesite$_suggesionSearchPath?term=$keyword');

    var jsonResponse = convert.jsonDecode(response.body);
    // print(jsonResponse);
    if (response.statusCode == 200) {
      return SearchSuggestionModel.fromJson(jsonResponse);
    } else {
      return SearchSuggestionModel();
    }
  }
}
