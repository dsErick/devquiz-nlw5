import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';
import 'package:dev_quiz/shared/models/answer_model.dart';

class AnswerWidget extends StatelessWidget {
  const AnswerWidget({
    Key? key,
    required this.answer,
    this.isSelected = false,
  }) : super(key: key);

  final AnswerModel answer;
  final bool isSelected;

  // Colors
  Color get _selectedColor => answer.isRight ? AppColors.darkGreen : AppColors.darkRed;
  Color get _seletectedBorder => answer.isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedColorCard => answer.isRight ? AppColors.lightGreen : AppColors.lightRed;
  Color get _selectedBorderCard => answer.isRight ? AppColors.green : AppColors.red;
  TextStyle get _selectedTextStyle => answer.isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;
  IconData get _selectedIcon => answer.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(
          color: isSelected ? _selectedBorderCard : AppColors.border,
        ),
        borderRadius: BorderRadius.circular(16),
        color: isSelected ? _selectedColorCard : AppColors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            child: Text(
              answer.title,
              style: isSelected ? _selectedTextStyle : AppTextStyles.body,
            ),
          ),
          Container(
            height: 28,
            width: 28,
            decoration: BoxDecoration(
              border: Border.all(
                color: isSelected ? _seletectedBorder : AppColors.border,
              ),
              borderRadius: BorderRadius.circular(14),
              color: isSelected ? _selectedColor : AppColors.white,
            ),
            child: isSelected
              ? Icon(
                  _selectedIcon,
                color: Colors.white,
                size: 20,
              )
              : null,
          ),
        ],
      ),
    );
  }
}
