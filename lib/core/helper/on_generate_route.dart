import 'package:flutter/material.dart';
import 'package:friuts/features/onboarding/views/on_boarding_view.dart';
import 'package:friuts/features/splash/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'splash':
      return MaterialPageRoute(builder: (_) => const SplashView());
      case 'onBoardingView':
      return MaterialPageRoute(builder: (_) => const OnBoardingView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());

          
  }
}