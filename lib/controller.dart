import 'package:flutter_riverpod/flutter_riverpod.dart';

class Controller {
  static final themControllerProvider = StateProvider((ref) => false);
  static final menuControllerProvider = Provider((ref) => false);
}
