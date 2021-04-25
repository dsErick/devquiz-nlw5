import 'package:flutter/foundation.dart';

import 'package:dev_quiz/home/home_repository.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

enum HomeState {
    success,
    loading,
    error,
    empty
}

class HomeController {
    UserModel? user;
    List<QuizModel>? quizzes;

    final repository = HomeRepository();

    final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

    set state(HomeState state) => stateNotifier.value = state;
    HomeState get state => stateNotifier.value;

    void getUser() async {
        state = HomeState.loading;

        user = await repository.getUser();

        state = HomeState.success;
    }

    void getQuizzes() async {
        state = HomeState.loading;

        quizzes = await repository.getQuizzes();

        state = HomeState.success;
    }
}