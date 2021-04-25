import 'package:flutter/foundation.dart';

import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
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

    final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);

    set state(HomeState state) => stateNotifier.value = state;
    HomeState get state => stateNotifier.value;

    void getUser() async {
        state = HomeState.loading;

        await Future.delayed(Duration(seconds: 3)); // Simulando uma chamada para a APi

        user = UserModel(
            name: 'Erick Silva',
            photoUrl: 'https://avatars.githubusercontent.com/u/57442687?v=4',
        );

        state = HomeState.success;
    }

    void getQuizzes() async {
        state = HomeState.loading;

        await Future.delayed(Duration(seconds: 3)); // Simulando uma chamada para a APi

        quizzes = [
            QuizModel(
                title: 'NLW 5 Flutter',
                image: AppImages.blocks,
                level: Level.facil,
                questionAnswered: 1,
                questions: [
                    QuestionModel(
                        title: 'Está curtindo o Flutter?',
                        answers: [
                            AnswerModel(title: 'Muito', isRight: true),
                            AnswerModel(title: 'Sim'),
                            AnswerModel(title: 'Mais ou menos'),
                            AnswerModel(title: 'Não'),
                        ],
                    ),
                    QuestionModel(
                        title: 'O que o Flutter faz em sua totalidade?',
                        answers: [
                            AnswerModel(title: 'Possibilita a criação de de aplicativos compilados nativamente?'),
                            AnswerModel(title: 'Possibilita a criação de de aplicativos compilados nativamente?', isRight: true),
                            AnswerModel(title: 'Possibilita a criação de de aplicativos compilados nativamente?'),
                            AnswerModel(title: 'Possibilita a criação de de aplicativos compilados nativamente?'),
                        ],
                    ),
                ],
            )
        ];

        state = HomeState.success;
    }
}