import 'package:billing_sample_app/presentation/top/components/top_page_app_bar.dart';
import 'package:billing_sample_app/presentation/top/components/top_page_body.dart';
import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  const TopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopPageAppBar(),
      body: TopPageBody(),
    );
  }
}
