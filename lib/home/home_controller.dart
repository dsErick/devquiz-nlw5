import 'package:flutter/foundation.dart';

import 'package:dev_quiz/home/home_repository.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

enum HomeState { success, loading, error, empty }

class HomeController {
  UserModel? user;
  List<QuizModel>? quizzes;

  final repository = HomeRepository();

  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  int loadingBuffer = 0;

  void getUser() async {
    state = HomeState.loading;
    loadingBuffer++;

    user = await repository.getUser();

    loadingBuffer--;

    if (loadingBuffer == 0) {
      state = HomeState.success;
    }
  }

  void getQuizzes() async {
    state = HomeState.loading;
    loadingBuffer++;

    quizzes = await repository.getQuizzes();

    loadingBuffer--;

    if (loadingBuffer == 0) {
      state = HomeState.success;
    }
  }
}
