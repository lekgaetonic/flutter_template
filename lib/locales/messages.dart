import 'package:flutter_getx/locales/en_US.dart';
import 'package:flutter_getx/locales/th_TH.dart';
import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': en_US,
        'th_TH': th_TH,
      };
}
