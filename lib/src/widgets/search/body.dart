import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/search/controller.dart';
import 'package:get/get.dart';

class SearchBody extends StatelessWidget {
  final SearchSuggestionController _searchSuggestionController = Get.find();
  SearchBody() {
    print(_searchSuggestionController.searchSuggestionModel.value);
  }
  @override
  Widget build(BuildContext context) {
    return Obx(() =>
        _searchSuggestionController.searchSuggestionModel.value.products != null
            ? Column(
                children: [
                  for (var product in _searchSuggestionController
                      .searchSuggestionModel.value.products)
                    Text('${product.code}')
                ],
              )
            : Container(
                child: Center(
                  child: Text('Please enter search keyword.'),
                ),
              ));
  }
}
