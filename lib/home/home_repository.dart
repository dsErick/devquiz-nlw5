import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

class HomeRepository {
    Future<UserModel> getUser() async {
        final response = await rootBundle.loadString('db/user.json');

        return UserModel.fromJson(response);
    }

    Future<List<QuizModel>> getQuizzes() async {
        final response = await rootBundle.loadString('db/quizzes.json');

        final list = jsonDecode(response) as List;
        final quizzes = list.map((e) => QuizModel.fromMap(e)).toList();

        return quizzes;
    }
}