import 'package:flutter/material.dart';

import 'package:dev_quiz/core/app_colors.dart';
import 'package:dev_quiz/core/app_text_styles.dart';

class AnswerWidget extends StatelessWidget {
    const AnswerWidget({
        Key? key,
        required this.title,
        this.isRight = false,
        this.isSelected = false,
    }) : super(key: key);

    final String title;
    final bool isRight;
    final bool isSelected;

    // Colo
    Color get _selectedColor => isRight ? AppColors.darkGreen : AppColors.darkRed;
    Color get _seletectedBorder => isRight ? AppColors.lightGreen : AppColors.lightRed;
    Color get _selectedColorCard => isRight ? AppColors.lightGreen : AppColors.lightRed;
    Color get _selectedBorderCard => isRight ? AppColors.green : AppColors.red;
    TextStyle get _selectedTextStyle => isRight ? AppTextStyles.bodyDarkGreen : AppTextStyles.bodyDarkRed;
    IconData get _selectedIcon => isRight ? Icons.check : Icons.close;
    
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
                            title,
                            style: isSelected ? _selectedTextStyle : AppTextStyles.body,
                        )
                    ),
                    Container(
                        height: 28,
                        width: 28,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: isSelected ? _seletectedBorder : AppColors.border
                            ),
                            borderRadius: BorderRadius.circular(14),
                            color: isSelected ? _selectedColor : AppColors.white,
                        ),
                        child: isSelected
                            ? Icon(
                                _selectedIcon,
                                color: Colors.white,
                                size: 20,
                            ) : null
                    ),
                ],
            ),
        );
    }
}
