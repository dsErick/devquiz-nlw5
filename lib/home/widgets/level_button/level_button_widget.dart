import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:dev_quiz/core/app_colors.dart';

class LevelButtonWidget extends StatelessWidget {
    LevelButtonWidget({
        Key? key,
        required this.label
    }) : assert(['Fácil', 'Médio', 'Difícil', 'Perito'].contains(label)),
        super(key: key);

    final String label;

    final Map<String, Map<String, Color>> config = {
        'Fácil': {
            'color': AppColors.levelButtonFacil,
            'borderColor': AppColors.levelButtonBorderFacil,
            'fontColor': AppColors.levelButtonTextFacil,
        },
        'Médio': {
            'color': AppColors.levelButtonMedio,
            'borderColor': AppColors.levelButtonBorderMedio,
            'fontColor': AppColors.levelButtonTextMedio,
        },
        'Difícil': {
            'color': AppColors.levelButtonDificil,
            'borderColor': AppColors.levelButtonBorderDificil,
            'fontColor': AppColors.levelButtonTextDificil,
        },
        'Perito': {
            'color': AppColors.levelButtonPerito,
            'borderColor': AppColors.levelButtonBorderPerito,
            'fontColor': AppColors.levelButtonTextPerito,
        },
    };

    Color get color => config[label]!['color']!;
    Color get borderColor => config[label]!['borderColor']!;
    Color get fontColor => config[label]!['fontColor']!;

    @override
    Widget build(BuildContext context) {
        return Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                border: Border.all(color: borderColor),
                color: color
            ),
            child: Text(
                '$label',
                style: GoogleFonts.notoSans(
                    color: fontColor,
                    fontSize: 13,
                ),
            )
        );
    }
}
