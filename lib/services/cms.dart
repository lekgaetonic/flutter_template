import 'package:flutter_getx/models/authen.dart';
import 'package:flutter_getx/services/service_base.dart';

class CmsService extends ServiceBase {
  CmsService() : super();

  String path = '/${webroot}/v2/${basesite}/cms/homepage';

  Future<AuthenModel> getHomePage() async {
    AuthenModel _authenModel = AuthenModel();
    return _authenModel;
  }
}
