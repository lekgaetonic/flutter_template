import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_getx/src/app.dart';
import 'package:flutter_getx/utils/httpoveride.dart';

void main() {
  HttpOverrides.global = new CustomHttpOverrides();
  runApp(App());
}
