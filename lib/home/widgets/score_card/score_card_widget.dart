import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'chart_widget.dart';

class ScoreCardWidget extends StatelessWidget {
    const ScoreCardWidget({Key? key}) : super(key: key);
    
    @override
    Widget build(BuildContext context) {
        return Container(
            padding: const EdgeInsets.all(16),
            height: 128,
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.border),
                borderRadius: BorderRadius.circular(16),
                color: AppColors.white,
            ),
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                    ChartWidget(),
                    Expanded(
                        child: Padding(
                            padding: const EdgeInsets.only(left: 24),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                        'Vamos começar',
                                        style: AppTextStyles.heading
                                    ),
                                    Text(
                                        'Complete os desafios e avançe em conhecimento.',
                                        style: AppTextStyles.body
                                    ),
                                ]
                            )
                        )
                    ),
                ],
            ),
        );
    }
}
