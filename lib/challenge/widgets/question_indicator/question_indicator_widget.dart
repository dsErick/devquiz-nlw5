import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuestionIndicatorWidget extends StatelessWidget {
  final int currentQuestion;
  final int questionsCount;
  
  const QuestionIndicatorWidget({
    Key? key,
    required this.currentQuestion,
    required this.questionsCount
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Questão $currentQuestion',
                style: AppTextStyles.body,
              ),
              Text(
                'de $questionsCount',
                style: AppTextStyles.body,
              ),
            ],
          ),
          ProgressIndicatorWidget(value: currentQuestion / questionsCount),
        ],
      ),
    );
  }
}
