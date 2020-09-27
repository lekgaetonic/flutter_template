import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/custom.dart';
import 'package:flutter_getx/src/pages/product/appbar.dart';
import 'package:flutter_getx/src/pages/product/controller.dart';
import 'package:flutter_getx/src/widgets/shared/loadingwidget.dart';
import 'package:get/get.dart';

class ProductPage extends StatelessWidget {
  final String productCode;
  final String productSummary;
  ProductPage(this.productCode, {Key key, this.productSummary});

  final ProductPageController _productPageController =
      Get.put(ProductPageController());

  @override
  Widget build(BuildContext context) {
    _productPageController.getPrimaryImage(productCode, ImageSize.big);
    _productPageController.getGalleryImage(productCode, ImageSize.big);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // here the desired height
        child: ProductAppBar(productSummary),
      ),
      //extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: Get.width,
                      height: 50,
                      child: Obx(
                        () => _productPageController
                                    .galleryImageModel.value.images !=
                                null
                            ? Center(
                                child: Row(
                                  children: [
                                    for (var image in _productPageController
                                        .galleryImageModel.value.images)
                                      Container(
                                        decoration: BoxDecoration(
                                            border:
                                                Border.all(color: Colors.grey)),
                                        child: Image(
                                          image: NetworkImage(image.url),
                                        ),
                                      ),
                                  ],
                                ),
                              )
                            : Container(),
                      ),
                    ),
                    Container(
                      width: Get.width,
                      child: Obx(
                        () => ClipRRect(
                          child: InteractiveViewer(
                            child: CachedNetworkImage(
                              imageUrl: _productPageController
                                      .primaryImageModel.value.url ??
                                  missingImage,
                              placeholder: (context, url) =>
                                  new CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  new Icon(Icons.error),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                productSummary,
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                productCode,
                style: TextStyle(),
                textAlign: TextAlign.start,
              ),
              Column(
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
