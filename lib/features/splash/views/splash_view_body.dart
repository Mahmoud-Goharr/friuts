import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friuts/core/assets.dart';
import 'package:friuts/features/onboarding/views/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
    void initState() {
    excuteNaviagtion();
    super.initState();
  }
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SvgPicture.asset(Assets.imagesSplashTop),
          ],
        ),
        SvgPicture.asset(Assets.imagesLogo),
        SvgPicture.asset(
          Assets.imagesSplashbottom,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
  
  void excuteNaviagtion() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, OnboardingView.routeName);
    });
  }
}