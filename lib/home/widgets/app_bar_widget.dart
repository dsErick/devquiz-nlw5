import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_gradients.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/user_model.dart';

import 'score_card/score_card_widget.dart';

class AppBarWidget extends PreferredSize {
    final UserModel user;
    
    AppBarWidget({ required this.user }) : super(
        preferredSize: Size.fromHeight(262),
        child: Container(
            height: 262,
            child: Stack(
                children: <Widget>[
                    Container(
                        decoration: BoxDecoration(gradient: AppGradients.linear),
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        height: 160,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                                Text.rich(
                                    TextSpan(
                                        children: <InlineSpan>[
                                            TextSpan(text: 'Olá, ', style: AppTextStyles.title),
                                            TextSpan(text: user.name, style: AppTextStyles.titleBold)
                                        ]
                                    )
                                ),
                                Container(
                                    width: 56,
                                    height: 56,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            image: NetworkImage(user.photoUrl)
                                        )
                                    )
                                )
                            ],
                        ),
                    ),
                    Align(
                        alignment: Alignment(0, 1),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ScoreCardWidget()
                        )
                    ),
                ],
            ),
        )
    );
}
