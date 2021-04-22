import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';

class ProgressIndicatorWidget extends StatelessWidget {
    ProgressIndicatorWidget({Key? key, required this.value}) : super(key: key);

    final double value;
    
    @override
    Widget build(BuildContext context) {
        return LinearProgressIndicator(
            value: value,
            backgroundColor: AppColors.chartSecondary,
            valueColor: AlwaysStoppedAnimation<Color?>(AppColors.chartPrimary),
        );
  }
}