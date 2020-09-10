import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx/src/pages/search/appbar.dart';
import 'package:flutter_getx/src/pages/search/controller.dart';
import 'package:get/get.dart';

class SuggestionSearch extends StatelessWidget {
  final SearchSuggestionController _searchSuggestionController =
      Get.put(SearchSuggestionController());
  final List<int> colorCodes = <int>[600, 500, 100];
  final List<String> entries = <String>['A', 'B', 'C'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0), // here the desired height
        child: SuggestionSearchAppBar(),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Obx(
            () => ListView.separated(
              padding: const EdgeInsets.all(8),
              itemCount: "${_searchSuggestionController.keyword}".length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  // color: Colors.amber,
                  child: Row(children: [
                    CachedNetworkImage(
                      imageUrl:
                          "https://ktw.co.th/content/images/thumbs/0474516_2065-200-%E0%B8%B1%E0%B9%89%E0%B8%A1%E0%B8%A1%E0%B8%B1%E0%B8%AA%E0%B8%99-3hp-200l_420.jpeg",
                      placeholder: (context, url) =>
                          new CircularProgressIndicator(),
                      errorWidget: (context, url, error) =>
                          new Icon(Icons.error),
                    ),
                    Text('${_searchSuggestionController.keyword} ${index}')
                  ]),
                );
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const Divider(),
            ),
          ),
        ),
      ),
    );
  }
}
