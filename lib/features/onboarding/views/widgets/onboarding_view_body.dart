import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:friuts/constants.dart';
import 'package:friuts/core/utils/app_colors.dart';
import 'package:friuts/core/widgets/custom_bottom.dart';
import 'package:friuts/features/onboarding/views/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatelessWidget {
  const OnboardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPageView()),

        DotsIndicator(
          dotsCount: 2,
          position: 0,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: AppColors.lightPrimaryColor,
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),

        SizedBox(height: 29),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
          child: CustomBottom(onPressed: () {}, text: 'ابدا الان'),
        ),

        SizedBox(height: 43),
      ],
    );
  }
}
