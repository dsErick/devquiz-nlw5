import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';

class ChartWidget extends StatelessWidget {
    const ChartWidget({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return Container(
            width: 80,
            height: 80,
            child: Stack(
                children: [
                    Center(
                        child: Container(
                            width: 80,
                            height: 80,
                            child: CircularProgressIndicator(
                                strokeWidth: 8,
                                value: .75,
                                backgroundColor: AppColors.chartSecondary,
                                valueColor: AlwaysStoppedAnimation<Color?>(AppColors.chartPrimary),
                            )
                        )
                    ),
                    Center(
                        child: Text(
                            '75%',
                            style: AppTextStyles.heading
                        )
                    )
                ],
            )
        );
    }
}