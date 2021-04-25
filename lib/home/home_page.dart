import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';

import 'home_controller.dart';
import 'widgets/app_bar_widget.dart';
import 'widgets/level_button/level_button_widget.dart';
import 'widgets/quiz_card/quiz_card_widget.dart';

class HomePage extends StatefulWidget {
    const HomePage({Key? key}) : super(key: key);

    @override
    _HomePageState createState () => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    final controller = HomeController();

    @override
    void initState() {
        super.initState();

        controller.getUser();
        controller.getQuizzes();

        controller.stateNotifier.addListener(() => setState(() {}));
    }

    @override
    Widget build(BuildContext context) {
        if (controller.state == HomeState.loading) {
            return Scaffold(
                body: Center(
                    child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
                    )
                )
            );
        }

        return Scaffold(
            appBar: AppBarWidget(
                user: controller.user!,
            ),
            body: Column(
                children: <Widget>[
                    SizedBox(height: 24),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: FractionallySizedBox(
                            widthFactor: 1,
                            child: Wrap(
                                alignment: WrapAlignment.spaceBetween,
                                spacing: 4,
                                children: <Widget>[
                                    LevelButtonWidget(label: 'Fácil'),
                                    LevelButtonWidget(label: 'Médio'),
                                    LevelButtonWidget(label: 'Difícil'),
                                    LevelButtonWidget(label: 'Perito'),
                                ]
                            ),
                        ),
                    ),
                    SizedBox(height: 24),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: GridView.count(
                                crossAxisCount: 2,
                                crossAxisSpacing: 8,
                                mainAxisSpacing: 8,
                                childAspectRatio: 1/1.15,
                                children: <Widget>[
                                    ...controller.quizzes!.map((quiz) {
                                        return QuizCardWidget(quiz: quiz);
                                    }).toList(),
                                ]
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}

