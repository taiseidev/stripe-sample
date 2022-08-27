import 'package:billing_sample_app/presentation/style/theme/app_theme.dart';
import 'package:billing_sample_app/presentation/style/theme/dart_app_theme.dart';
import 'package:billing_sample_app/presentation/top/top_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Billing Sample',
      theme: getAppTheme(),
      // darkTheme: getDartAppTheme(),
      home: const TopPage(),
    );
  }
}
