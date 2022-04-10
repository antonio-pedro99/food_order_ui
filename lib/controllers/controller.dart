import 'package:flutter_riverpod/flutter_riverpod.dart';

class Controller {
  static final menuControllerProvider = StateProvider<double?>((ref) => 0);

  static final menuProvider = StateNotifierProvider((_) => MenuController(0));

  static final categorySwitchProvider = StateProvider((ref) => false);
}

class MenuController extends StateNotifier<double> {
  MenuController(double state) : super(state);

  void open() {
    state = 700;
  }

  void close() {
    state = 0;
  }
}
