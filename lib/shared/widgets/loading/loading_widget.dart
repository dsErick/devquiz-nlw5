import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_gradients.dart';

class LoadingWidget extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
            body: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    gradient: AppGradients.linear,
                ),
                child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(AppColors.darkGreen),
                ),
            )
        );
    }
}