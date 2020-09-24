import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/search/appbar.dart';
import 'package:flutter_getx/src/pages/search/controller.dart';
import 'package:get/get.dart';

class SuggestionSearch extends StatelessWidget {
  final SearchSuggestionController _searchSuggestionController =
      Get.put(SearchSuggestionController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // here the desired height
        child: SuggestionSearchAppBar(),
      ),
      // body: SearchBody());
      body: SingleChildScrollView(
        child: SizedBox(
          height: Get.height - MediaQuery.of(context).viewInsets.bottom,
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
                      return Container(
                        height: 90,
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: CachedNetworkImage(
                                imageUrl:
                                    "https://ktw.co.th/content/images/thumbs/0474516_2065-200-%E0%B8%B1%E0%B9%89%E0%B8%A1%E0%B8%A1%E0%B8%B1%E0%B8%AA%E0%B8%99-3hp-200l_420.jpeg",
                                placeholder: (context, url) =>
                                    new CircularProgressIndicator(),
                                errorWidget: (context, url, error) =>
                                    new Icon(Icons.error),
                              ),
                            ),
                            Expanded(
                              flex: 6,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: Text(
                                      '${_searchSuggestionController.searchSuggestionModel.value.products[index].summary}',
                                      textAlign: TextAlign.left,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    '${_searchSuggestionController.searchSuggestionModel.value.products[index].code}',
                                    textAlign: TextAlign.start,
                                  ),
                                  Text(
                                    '${_searchSuggestionController.searchSuggestionModel.value.products[index].manufacturers}',
                                    textAlign: TextAlign.left,
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
                                    '${_searchSuggestionController.searchSuggestionModel.value.products[index].price ?? '7,777.77'}',
                                    textAlign: TextAlign.left,
                                  ),
                                  Text(
                                    '${_searchSuggestionController.searchSuggestionModel.value.products[index].stockstatus ?? 'lowStock'}',
                                    textAlign: TextAlign.start,
                                  ),
                                ],
                              ),
                            ),
                          ],
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
      ),
    );
  }
}
