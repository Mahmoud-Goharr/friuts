import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:friuts/constants.dart';
import 'package:friuts/core/services/shared_preferences_singleton.dart';
import 'package:friuts/core/utils/app_colors.dart';
import 'package:friuts/core/widgets/custom_bottom.dart';
import 'package:friuts/features/auth/views/login_view.dart';
import 'package:friuts/features/onboarding/views/widgets/onboarding_page_view.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

/// pagecontroller is used to control the pageview and to get the current page index.
class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late PageController pageController;
  var currentPage = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  // Add a property to indicate if it's the last page
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: OnboardingPageView(pageController: pageController)),

        DotsIndicator(
          dotsCount: 2,
          position: 0,
          decorator: DotsDecorator(
            activeColor: AppColors.primaryColor,
            color: currentPage == 1
                ? AppColors.primaryColor
                : AppColors.primaryColor.withOpacity(0.5),

            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),

        SizedBox(height: 29),

        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainAnimation: true,
          maintainState: true,
          maintainSize: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
            child: CustomBottom(
              onPressed: () {
                prehs.setbool(kIsOnBoardingViewSeen, true);
                Navigator.of(context).pushReplacementNamed(LoginView.routeName);
              },
              text: 'ابدا الان',
            ),
          ),
        ),

        SizedBox(height: 43),
      ],
    );
  }
}
