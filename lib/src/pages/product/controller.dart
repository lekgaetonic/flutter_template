import 'package:flutter_getx/models/primaryimage.dart';
import 'package:flutter_getx/models/product.dart';
import 'package:flutter_getx/services/image.dart';
import 'package:flutter_getx/services/product.dart';
import 'package:flutter_getx/src/authen/controller.dart';
import 'package:get/state_manager.dart';

class ProductPageController extends GetxController {
  var primaryImageModel = new PrimaryImageModel().obs;
  var galleryImageModel = new GalleryImageModel().obs;
  var productModel = new ProductModel().obs;
  getPrimaryImage(productCode, imageSize) async {
    primaryImageModel.value =
        await ImageService().getPrimaryImage(productCode, imageSize);
  }

  getGalleryImage(productCode, imageSize) async {
    galleryImageModel.value =
        await ImageService().getGalleryImage(productCode, imageSize);
  }

  getProduct(productCode) async {
    productModel.value = await ProductService().getProduct(productCode);
  }
}
