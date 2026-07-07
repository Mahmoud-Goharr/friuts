import 'package:flutter/material.dart';
import 'package:friuts/features/onboarding/views/onboarding_view.dart';
import 'package:friuts/features/splash/views/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case 'splash':
      return MaterialPageRoute(builder: (_) => const SplashView());
      case 'onboarding':
      return MaterialPageRoute(builder: (_) => const OnboardingView());
    default:
      return MaterialPageRoute(builder: (_) => const Scaffold());

          
  }
}