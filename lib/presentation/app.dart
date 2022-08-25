import 'package:billing_sample_app/presentation/style/theme/app_theme.dart';
import 'package:billing_sample_app/presentation/style/theme/dart_app_theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getAppTheme(),
      darkTheme: getDartAppTheme(),
    );
  }
}
