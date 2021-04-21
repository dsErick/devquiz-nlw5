import 'package:flutter/material.dart';

import 'widgets/app_bar_widget.dart';
import 'widgets/level_button/level_button_widget.dart';

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
            body: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                        LevelButtonWidget(label: 'Fácil'),
                        LevelButtonWidget(label: 'Médio'),
                        LevelButtonWidget(label: 'Difícil'),
                        LevelButtonWidget(label: 'Perito'),
                    ]
                ),
            ),
        );
    }
}

