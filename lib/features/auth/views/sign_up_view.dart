import 'package:flutter/material.dart';
import 'package:friuts/core/widgets/custom_appbar.dart';
import 'package:friuts/features/auth/views/widgets/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});
static const routeName = 'signUpView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(context, title: 'حساب جديد'),
      body: const SignUpViewBody(),
    );
  }
}