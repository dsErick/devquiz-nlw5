import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/app_text_styles.dart';

import 'score_card/score_card_widget.dart';

class AppBarWidget extends PreferredSize {
    AppBarWidget() : super(
        preferredSize: Size.fromHeight(262),
        child: Container(
            height: 262,
            child: Stack(
                children: [
                    Container(
                        decoration: BoxDecoration(gradient: AppGradients.linear),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 160,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                                Text.rich(
                                    TextSpan(
                                        children: [
                                            TextSpan(text: 'Olá, ', style: AppTextStyles.title),
                                            TextSpan(text: 'Erick', style: AppTextStyles.titleBold)
                                        ]
                                    )
                                ),
                                Container(
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: NetworkImage('https://avatars.githubusercontent.com/u/57442687?v=4')
                                        )
                                    )
                                )
                            ],
                        ),
                    ),
                    Align(
                        alignment: Alignment(0, 1),
                        child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: ScoreCardWidget()
                        )
                    ),
                ],
            ),
        )
    );
}
