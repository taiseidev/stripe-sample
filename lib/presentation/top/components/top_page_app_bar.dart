import 'package:flutter/material.dart';

class TopPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TopPageAppBar({super.key});

  @override
  // TODO:起動時に幅を取得して動的に変更できるように修正
  Size get preferredSize => const Size(double.infinity, 70);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Billing Sample'),
    );
  }
}
