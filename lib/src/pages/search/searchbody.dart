import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/custom.dart';
import 'package:flutter_getx/models/primaryimage.dart';
import 'package:flutter_getx/src/pages/product/controller.dart';
import 'package:flutter_getx/src/pages/product/page.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_getx/src/pages/search/controller.dart';
import 'package:intl/intl.dart';

class SearchBody extends StatelessWidget {
  final SearchSuggestionController _searchSuggestionController =
      Get.put(SearchSuggestionController());
  final ProductPageController _productPageController =
      Get.put(ProductPageController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: (Get.height - 80) - MediaQuery.of(context).viewInsets.bottom,
        child: Obx(() => _searchSuggestionController
                        .searchSuggestionModel.value.products !=
                    null &&
                _searchSuggestionController
                        .searchSuggestionModel.value.products.length >
                    0
            ? ListView.separated(
                padding: const EdgeInsets.all(8),
                itemCount: _searchSuggestionController
                    .searchSuggestionModel.value.products.length,
                itemBuilder: (BuildContext context, int index) {
                  var summary =
                      '${_searchSuggestionController.searchSuggestionModel.value.products[index].summary}';
                  var code =
                      '${_searchSuggestionController.searchSuggestionModel.value.products[index].code}';
                  var brand =
                      '${_searchSuggestionController.searchSuggestionModel.value.products[index].manufacturers}';
                  var price =
                      '${_searchSuggestionController.searchSuggestionModel.value.products[index].price}';
                  Color priceColor = price == '0' ? Colors.grey : Colors.green;
                  final formatter = NumberFormat("#,###.##");
                  var stockStatus =
                      '${_searchSuggestionController.searchSuggestionModel.value.products[index].stockstatus ?? 'lowStock'}';
                  Color stockStatusColor =
                      stockStatus == 'outOfStock' ? Colors.grey : Colors.green;
                  var image = new PrimaryImageModel().obs;
                  _productPageController.getPrimaryImage(code, ImageSize.small);
                  image.value = _productPageController.firstImageModel.value;
                  return Container(
                    height: 60,
                    // color: Colors.amber,
                    child: InkWell(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Image(
                                image: NetworkImage(
                                    image.value.url ?? missingImage),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  summary,
                                  textAlign: TextAlign.left,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: Text(
                                        code,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        price,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 12, color: priceColor),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 7,
                                      child: Text(
                                        brand,
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                          fontSize: 12,
                                        ),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 3,
                                      child: Text(
                                        stockStatus,
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: stockStatusColor),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // Expanded(
                          //   flex: 2,
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.end,
                          //     children: [
                          //       Text(
                          //         price,
                          //         textAlign: TextAlign.left,
                          //         style: TextStyle(
                          //           color: priceColor,
                          //         ),
                          //       ),
                          //       Text(
                          //         stockStatus,
                          //         textAlign: TextAlign.start,
                          //         style: TextStyle(
                          //           color: stockStatusColor,
                          //         ),
                          //       ),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ),
                      onTap: () => {
                        Get.to(ProductPage(
                          code,
                          productSummary: summary,
                        ))
                      },
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              )
            : Container(
                width: Get.width,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Please input search keyword.',
                    textAlign: TextAlign.center,
                  ),
                ),
              )),
      ),
    );
  }
}
