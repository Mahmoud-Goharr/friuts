import 'package:flutter/material.dart';
import 'package:fruitify/core/widgets/custom_appbar.dart';
import 'package:fruitify/features/auth/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const routeName = 'loginView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context, title: 'تسجيل دخول'),
      body: LoginViewBody(),
    );
  }
}
