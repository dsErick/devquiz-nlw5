import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/app_images.dart';

class SplashPage extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        // print(MediaQuery.of(context));
        // print(Theme.of(context).textTheme);
        
        return Scaffold(
            body: Container(
                decoration: BoxDecoration(
                    gradient: AppGradients.linear,
                ),
                child: Center(
                    child: Image.asset(
                        AppImages.logo,
                        height: MediaQuery.of(context).size.height * .6,
                        fit: BoxFit.fitHeight,
                    ),
                )
            ),
        );
    }
}