import 'package:flutter/material.dart';

import 'widgets/app_bar_widget.dart';
import 'widgets/level_button/level_button_widget.dart';
import 'widgets/quiz_card/quiz_card_widget.dart';

class HomePage extends StatefulWidget {
    const HomePage({Key? key}) : super(key: key);

    @override
    _HomePageState createState () => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: AppBarWidget(),
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
                                    QuizCardWidget(),
                                    QuizCardWidget(),
                                    QuizCardWidget(),
                                ],
                            ),
                        ),
                    ),
                ],
            ),
        );
    }
}

