import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/quiz_model.dart';
import 'package:dev_quiz/shared/widgets/progress_indicator/progress_indicator_widget.dart';

class QuizCardWidget extends StatelessWidget {
    const QuizCardWidget({ Key? key, required this.quiz }) : super(key: key);

    final QuizModel quiz;

    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.border),
                borderRadius: BorderRadius.circular(16),
                color: AppColors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(quiz.image),
                    ),
                    Text(
                        quiz.title,
                        style: AppTextStyles.heading15,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis
                    ),
                    Row(
                        children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Text(
                                    '${quiz.questionAnswered} de ${quiz.questions.length}',
                                    style: AppTextStyles.body11,
                                ),
                            ),
                            Expanded(
                                flex: 3,
                                child: ProgressIndicatorWidget(value: quiz.questionAnswered / quiz.questions.length)
                            ),
                        ]
                    )
                ]
            )
        );
    }
}
