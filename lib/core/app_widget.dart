import 'package:flutter/material.dart';

import 'package:dev_quiz/home/home_page.dart';
import 'package:dev_quiz/splash/splash_page.dart';
import 'package:dev_quiz/challenge/challenge_page.dart';

class AppWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            title: 'DevQuiz',
            debugShowCheckedModeBanner: false,
            home: HomePage(),
        );
    }
}