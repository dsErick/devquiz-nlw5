import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_text_styles.dart';
import '../answer/answer_widget.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 24),
          Text(title, style: AppTextStyles.heading),
          SizedBox(height: 24),
          AnswerWidget(
            title: 'Possibilita a criação de de aplicativos compilados nativamente?'
          ),
          SizedBox(height: 8),
          AnswerWidget(
            title: 'Possibilita a criação de de aplicativos compilados nativamente?',
            isRight: true,
            isSelected: true,
          ),
          SizedBox(height: 8),
          AnswerWidget(
            title: 'Possibilita a criação de de aplicativos compilados nativamente?',
            isSelected: true,
          ),
        ],
      ),
    );
  }
}
