import 'package:flutter/material.dart';
import 'package:fruitify/features/splash/views/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static const routeName = 'splash';
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const SplashViewBody());
  }
}
