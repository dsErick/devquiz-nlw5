import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';

class QuizCardWidget extends StatelessWidget {
    const QuizCardWidget({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.border),
                borderRadius: BorderRadius.circular(16),
                color: AppColors.white,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset(AppImages.blocks),
                    ),
                    Text(
                        'Gerenciamento de Estado',
                        style: AppTextStyles.heading15,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis
                    ),
                    Row(
                        children: <Widget>[
                            Expanded(
                                flex: 2,
                                child: Text('3 de 10', style: AppTextStyles.body11),
                            ),
                            Expanded(
                                flex: 3,
                                child: LinearProgressIndicator(
                                    value: .3,
                                    backgroundColor: AppColors.chartSecondary,
                                    valueColor: AlwaysStoppedAnimation<Color?>(AppColors.chartPrimary),
                                ),
                            ),
                        ]
                    )
                ]
            )
        );
    }
}
