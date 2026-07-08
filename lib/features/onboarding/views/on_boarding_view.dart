import 'package:flutter/material.dart';
import 'package:friuts/features/onboarding/views/widgets/onboarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
static const  routeName = 'onBoardingView';
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: OnboardingViewBody(),
    );
  }
}