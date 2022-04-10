import 'package:flutter_riverpod/flutter_riverpod.dart';

final newProductCounter = StateNotifierProvider((_) => NewProductCounter(1));

class NewProductCounter extends StateNotifier<int> {
  NewProductCounter(int state) : super(state);

  void add() {
    state++;
  }

  void remove() {
    state--;
  }
}
