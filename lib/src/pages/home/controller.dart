import 'package:flutter_getx/models/bannercomponent.dart';
import 'package:flutter_getx/models/cms.dart';
import 'package:flutter_getx/models/rotatecomponent.dart';
import 'package:flutter_getx/services/cms.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class HomePageController extends GetxController {
  var cmsHomePageModel = CmsHomePageModel().obs;
  fetchHomePage() async {
    cmsHomePageModel.value = await CmsService().getHomePage();
  }

  var rotateComponentModel = RotateComponentModel().obs;
  fetchRotateComponent(String componentId) async {
    rotateComponentModel.value =
        await CmsService().getRotateComponent(componentId);
  }

  Future<BannerComponentModel> fetchbannerComponent(String componentId) async {
    return await CmsService().getBannerComponent(componentId);
  }

  // var ktwMediaBannerComponentModel = BannerComponentModel().obs;
  // fetchKtwMediaBannerComponent(String componentId) async {
  //   ktwMediaBannerComponentModel.value =
  //       await CmsService().getBannerComponent(componentId);
  // }
}
