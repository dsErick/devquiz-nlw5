import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/question_model.dart';
import '../answer/answer_widget.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 24),
          Text(
            question.title,
            style: AppTextStyles.heading,
          ),
          SizedBox(height: 24),
          ...question.answers.map((a) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: AnswerWidget(
                title: a.title,
                isRight: a.isRight,
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
