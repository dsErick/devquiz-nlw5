import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:dev_quiz/core/app_colors.dart';

class NextButtonWidget extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final Color borderColor;
  final Color fontColor;
  final VoidCallback onTap;

  /// Construtor padrão para um botão com fundo branco
  NextButtonWidget({
    required this.label,
    required this.onTap,
    this.backgroundColor = AppColors.white,
    this.borderColor = AppColors.border,
    this.fontColor = AppColors.grey,
  });

  /// Construtor para um botão com fundo verde
  NextButtonWidget.darkGreen({ required this.label, required this.onTap })
    : this.backgroundColor = AppColors.darkGreen,
      this.borderColor = AppColors.darkShadeGreen,
      this.fontColor = AppColors.white;

  /// Construtor para um botão com fundo roxo
  NextButtonWidget.purple({ required this.label, required this.onTap })
    : this.backgroundColor = AppColors.purple,
      this.borderColor = AppColors.purpleShade,
      this.fontColor = AppColors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: borderColor),
            ),
          ),
          overlayColor: MaterialStateProperty.all(borderColor),
        ),
        onPressed: onTap,
        child: Text(
          label,
          style: GoogleFonts.notoSans(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            color: fontColor,
          ),
        ),
      ),
    );
  }
}