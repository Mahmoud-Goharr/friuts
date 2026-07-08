import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friuts/core/assets.dart';
import 'package:friuts/features/onboarding/views/on_boarding_view.dart';

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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset(Assets.assetsImagesPlant)],
        ),
        SvgPicture.asset(Assets.assetsImagesLogo, fit: BoxFit.none),
        SvgPicture.asset(Assets.assetsImagesSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

    void excuteNaviagtion() {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      });
    }
}
