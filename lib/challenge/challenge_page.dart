import 'package:flutter/material.dart';

import 'package:dev_quiz/shared/models/question_model.dart';

import 'challenge_controller.dart';
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
  final _controller = ChallengeController();
  final _pageController = PageController();

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      _controller.currentQuestion = _pageController.page!.toInt();
    });
  }

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
              Expanded(
                child: ValueListenableBuilder<int>(
                  valueListenable: _controller.currentQuestionNotifier,
                  builder: (_, int value, __) {
                    return QuestionIndicatorWidget(
                      currentQuestion: value + 1,
                      questionsCount: widget.questions.length,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: _pageController,
        children: widget.questions.map((q) {
          return QuizWidget(question: q);
        }).toList(),
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
                    _pageController.nextPage(
                      duration: Duration(milliseconds: 235),
                      curve: Curves.linear,
                    );
                  }
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: NextButtonWidget.darkGreen(
                  label: 'Confirmar',
                  onTap: () {}
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
