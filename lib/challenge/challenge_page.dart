import 'package:flutter/material.dart';

import 'package:dev_quiz/shared/models/question_model.dart';

import 'widgets/next_button/next_button_widget.dart';
import 'widgets/question_indicator/question_indicator_widget.dart';
import 'widgets/quiz/quiz_widget.dart';

class ChallengePage extends StatefulWidget {
  final List<QuestionModel> questions;

  const ChallengePage({Key? key, required this.questions}) : super(key: key);

  @override
  _ChallengePageState createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
  int currentQuestion = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82),
        child: SafeArea(
          top: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              BackButton(),
              Expanded(child: QuestionIndicatorWidget()),
            ],
          ),
        ),
      ),
      body: QuizWidget(
        question: widget.questions[currentQuestion]
      ),
      bottomNavigationBar: SafeArea(
        bottom: true,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Row(
            children: <Widget>[
              Expanded(
                child: NextButtonWidget.white(
                  label: 'Pular',
                  onTap: () {
                    if (currentQuestion > 0) {
                      setState(() => currentQuestion--);
                    }
                  }
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: NextButtonWidget.darkGreen(
                  label: 'Confirmar',
                  onTap: () {
                    if (currentQuestion < widget.questions.length - 1) {
                      setState(() => currentQuestion++);
                    }
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
