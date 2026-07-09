
import 'package:flutter/material.dart';
import 'package:friuts/core/utils/app_colors.dart';
import 'package:friuts/core/utils/app_text_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          " لا تمتلك حساب؟",
          style: TextStyles.semiBold16.copyWith(
            color: const Color(0xFF949D9E),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          'قم بإنشاء حساب',
          style: TextStyles.semiBold16.copyWith(
            color: AppColors.lightPrimaryColor,
          ),
        ),
      ],
    );
  }
}
