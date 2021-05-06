import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/question_model.dart';

import 'quiz_controller.dart';
import '../answer/answer_widget.dart';

class QuizWidget extends StatelessWidget {
  QuizWidget({Key? key, required this.question}) : super(key: key);

  final QuestionModel question;

  final _controller = QuizController();

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
          Expanded(
            child: ListView.builder(
              itemCount: question.answers.length,
              itemBuilder: _answersListBuilder,
            ),
          ),
        ],
      ),
    );
  }

  /// Função responsável por criar a lista de respostas da questão
  Widget _answersListBuilder(_, int index) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: GestureDetector(
        onTap: () => _controller.selectedIndex = index,
        child: ValueListenableBuilder<int>(
          valueListenable: _controller.selectedIndexNotifier,
          builder: (_, int value, __) {
            return AnswerWidget(
              answer: question.answers[index],
              isSelected: value == index,
            );
          },
        ),
      ),
    );
  }
}
