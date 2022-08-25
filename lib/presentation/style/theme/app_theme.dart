import 'package:billing_sample_app/utils/color_util.dart';
import 'package:flutter/material.dart';

ThemeData getAppTheme() {
  final base = ThemeData(
    useMaterial3: false,
    brightness: Brightness.light,
  );

  return base.copyWith(
    primaryColor: HexColor('5e55f3'),
  );
}
