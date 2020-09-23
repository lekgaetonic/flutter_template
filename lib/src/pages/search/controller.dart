import 'package:flutter_getx/converter/searchsuggestion.dart';
import 'package:flutter_getx/models/searchsuggestion.dart';
import 'package:flutter_getx/services/search.dart';
import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class SearchSuggestionController extends GetxController {
  var keyword = "".obs;
  var searchSuggestionModel = new SearchSuggestionModel().obs;
  keywordChanged(text) async {
    if (text == "") {
      searchSuggestionModel.value = new SearchSuggestionModel();
    } else {
      searchSuggestionModel.value = await SearchService().getSuggestion(text);
    }

    print(searchSuggestionModel);
    //keyword.value = text;
  }
}
