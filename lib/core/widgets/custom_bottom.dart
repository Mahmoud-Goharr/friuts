import 'package:flutter/material.dart';
import 'package:fruitify/core/utils/app_colors.dart';
import 'package:fruitify/core/utils/app_text_styles.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: AppColors.primaryColor,
          foregroundColor: Colors.white,
        ),

        onPressed: onPressed,
        child: Text(text, style: TextStyles.bold16),
        
      ),
    );
  }
}
