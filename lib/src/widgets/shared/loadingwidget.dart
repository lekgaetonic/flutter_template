import 'package:flutter/material.dart';
import 'package:flutter_getx/constants/theme.dart';

class LoadingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        backgroundColor: AppColor().Primary,
      ),
    );
  }
}
