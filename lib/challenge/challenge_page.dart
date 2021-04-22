import 'package:flutter/material.dart';

import 'package:dev_quiz/challenge/question_indicator/question_indicator_widget.dart';

class ChallengePage extends StatefulWidget {
    const ChallengePage({Key? key}) : super(key: key);

    @override
    _ChallengePageState createState () => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
    @override
    Widget build(BuildContext context){
        return Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(64),
                child: SafeArea(
                    top: true,
                    child: QuestionIndicatorWidget()
                )
            )
        );
    }
}
