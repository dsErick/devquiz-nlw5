import 'package:flutter/material.dart';

import 'package:dev_quiz/challenge/widgets/next_button/next_button_widget.dart';
import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_images.dart';
import 'package:dev_quiz/core/app_text_styles.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(AppImages.trophy),

              Column(
                children: <Widget>[
                  Text(
                    'Parabéns',
                    style: AppTextStyles.heading40,
                  ),
                  SizedBox(height: 12),
                  Text('Você concluio', style: AppTextStyles.body20),
                  Text(
                    'Gerenciamento de estado',
                    style: AppTextStyles.titleBold.copyWith(color: AppColors.black),
                  ),
                  Text('com 6 de 10 acertos.', style: AppTextStyles.body20),
                ],
              ),

              FractionallySizedBox(
                widthFactor: .85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    NextButtonWidget.purple(
                      label: 'Compartilhar',
                      onTap: () {},
                    ),
                    SizedBox(height: 8),
                    NextButtonWidget(
                      label: 'Voltar ao início',
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}