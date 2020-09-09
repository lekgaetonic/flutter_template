import 'dart:io';
import 'package:flutter_getx/models/authen.dart';
import 'package:flutter_getx/services/service_base.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class Authen extends ServiceBase {
  Authen() : super();

  String path = '/authorizationserver/oauth/token';
  AuthenModel _authenModel = AuthenModel();
  Future<AuthenModel> getBasicAuthen() async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);

    var response = await http.post('$endpoint$path', body: {
      'client_id': clientId,
      'client_secret': clientSecret,
      'grant_type': grantTypeClientCredentials
    });

    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
    if (response.statusCode == 200) {
      _authenModel.accessToken = jsonResponse['access_token'];
      _authenModel.expiresIn = jsonResponse['expires_in'];
      _authenModel.gruntType = grantTypeClientCredentials;
      _authenModel.refreshToken = jsonResponse['refresh_token'];
    } else {
      print(jsonResponse['error']);
      _authenModel.error = jsonResponse['error'];
      _authenModel.errorDescription = jsonResponse['error_description'];
    }

    return _authenModel;
  }

  Future<AuthenModel> getLoginAuthen(username, password) async {
    final ioc = new HttpClient();
    ioc.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    final http = new IOClient(ioc);
    var response = await http.post('$endpoint$path', body: {
      'client_id': clientId,
      'client_secret': clientSecret,
      'grant_type': grantTypePassword,
      'username': username,
      'password': password
    });

    var jsonResponse = convert.jsonDecode(response.body);
    print(jsonResponse);
    if (response.statusCode == 200) {
      _authenModel.accessToken = jsonResponse['access_token'];
      _authenModel.expiresIn = jsonResponse['expires_in'];
      _authenModel.gruntType = grantTypePassword;
      _authenModel.refreshToken = jsonResponse['refresh_token'];
    } else {
      print(jsonResponse['error']);
      _authenModel.error = jsonResponse['error'];
      _authenModel.errorDescription = jsonResponse['error_description'];
    }

    return _authenModel;
  }
}
