import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/custom.dart';
import 'package:flutter_getx/src/pages/product/controller.dart';
import 'package:flutter_getx/src/pages/product/page.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_getx/src/pages/search/controller.dart';

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
        child: Obx(
          () => _searchSuggestionController
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
                    Color priceColor =
                        price == '0' ? Colors.grey : Colors.green;
                    var stockStatus =
                        '${_searchSuggestionController.searchSuggestionModel.value.products[index].stockstatus ?? 'lowStock'}';
                    Color stockStatusColor = stockStatus == 'outOfStock'
                        ? Colors.grey
                        : Colors.green;

                    // _productPageController.getPrimaryImage(
                    //     code, ImageSize.small);

                    return Container(
                      height: 90,
                      // color: Colors.amber,
                      child: InkWell(
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://ktw.co.th/content/images/thumbs/0474516_2065-200-%E0%B8%B1%E0%B9%89%E0%B8%A1%E0%B8%A1%E0%B8%B1%E0%B8%AA%E0%B8%99-3hp-200l_420.jpeg",
                                  placeholder: (context, url) =>
                                      new CircularProgressIndicator(),
                                  errorWidget: (context, url, error) =>
                                      new Icon(Icons.error),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: Text(
                                      summary,
                                      textAlign: TextAlign.left,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    code,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  Text(
                                    brand,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    price,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      color: priceColor,
                                    ),
                                  ),
                                  Text(
                                    stockStatus,
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      color: stockStatusColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
              : Center(
                  child: Text('Please enter search keyword.'),
                ),
        ),
      ),
    );
  }
}
