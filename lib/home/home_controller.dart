import 'package:flutter/foundation.dart';

import 'package:dev_quiz/home/home_repository.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

enum HomeState { success, loading, error, empty }

class HomeController {
  UserModel? user;
  List<QuizModel>? quizzes;

  final _repository = HomeRepository();

  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  int _loadingBuffer = 0;

  void getUser() async {
    state = HomeState.loading;
    _loadingBuffer++;

    user = await _repository.getUser();

    _loadingBuffer--;

    if (_loadingBuffer == 0) {
      state = HomeState.success;
    }
  }

  void getQuizzes() async {
    state = HomeState.loading;
    _loadingBuffer++;

    quizzes = await _repository.getQuizzes();

    _loadingBuffer--;

    if (_loadingBuffer == 0) {
      state = HomeState.success;
    }
  }
}
