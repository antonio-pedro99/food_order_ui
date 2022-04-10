import 'package:flutter/material.dart';

import 'package:food_order_ui/views/pages/home.dart';
import 'package:food_order_ui/views/pages/menu.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

class AppRootPage extends HookConsumerWidget {
  const AppRootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [const HomePage(), MenuPage()],
    );
  }
}
