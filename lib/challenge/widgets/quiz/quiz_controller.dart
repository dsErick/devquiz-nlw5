import 'package:flutter/foundation.dart';

class QuizController {
  final ValueNotifier<int> selectedIndexNotifier = ValueNotifier<int>(-1);

  set selectedIndex(int value) => selectedIndexNotifier.value = value;
  int get selectedIndex => selectedIndexNotifier.value;
}