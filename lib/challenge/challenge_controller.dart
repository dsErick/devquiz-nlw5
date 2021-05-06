import 'package:flutter/foundation.dart';

class ChallengeController {
  final ValueNotifier<int> currentQuestionNotifier = ValueNotifier<int>(0);

  set currentQuestion(int value) => currentQuestionNotifier.value = value;
  int get currentQuestion => currentQuestionNotifier.value;
}