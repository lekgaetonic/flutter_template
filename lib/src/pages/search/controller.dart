import 'package:get/state_manager.dart';
import 'package:get/get.dart';

class SearchSuggestionController extends GetxController {
  var keyword = "".obs;

  keywordChanged(text) {
    keyword.value = text;
  }
}
