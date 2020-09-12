import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/home/controller.dart';
import 'package:get/get.dart';

class RotateComponent extends StatelessWidget {
  final HomePageController _homePageController = Get.put(HomePageController());

  final String componentId;
  RotateComponent(this.componentId, {Key key});

  @override
  Widget build(BuildContext context) {
    _homePageController.fetchRotateComponent(componentId);

    return Obx(
      () => SizedBox(
        height: 150.0,
        // width: 300.0,
        child: _homePageController.rotateComponentModel.value.rotates == null
            ? Container(
                child: Image(
                  image: AssetImage('assets/images/loading.gif'),
                ),
              )
            : Carousel(
                images: [
                  for (var image
                      in _homePageController.rotateComponentModel.value.rotates)
                    NetworkImage('https://ktwdevapi.ktw.co.th${image.url}'),
                ],
                dotSize: 5.0,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.transparent,
                dotColor: Colors.black38,
                dotIncreasedColor: Colors.black54,
              ),
      ),
    );
  }
}
