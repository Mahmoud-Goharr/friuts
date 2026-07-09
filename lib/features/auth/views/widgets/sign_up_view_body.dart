import 'package:flutter/material.dart';
import 'package:friuts/constants.dart';
import 'package:friuts/core/widgets/custom_bottom.dart';
import 'package:friuts/core/widgets/custom_text_form_field.dart';
import 'package:friuts/features/auth/views/login_view.dart';
import 'package:friuts/features/auth/views/widgets/dont_have_acount.dart';
import 'package:friuts/features/auth/views/widgets/terms_and_conditions.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),

      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),

            const CustomTextFormField(
              hintText: 'الاسم كامل',
              textInputType: TextInputType.name,
            ),

            const SizedBox(height: 16),

            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
              obscureText: true,
            ),

            const SizedBox(height: 16),

            const CustomTextFormField(
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xFFc9cecf)),

              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
            ),

            SizedBox(height: 30),

            TermsAndConditionsWidget(onChanged: (value) {}),

            const SizedBox(height: 30),

            CustomBottom(onPressed: () {}, text: ' إنشاء حساب جديد'),

            const SizedBox(height: 26),

            DontHaveAccount(
              ontap: () {
                Navigator.pop(context, LoginView.routeName);
              },
              text1: 'تمتلك حساب بالفعل ؟',
              text2: ' تسجيل الدخول',
            ),
          ],
        ),
      ),
    );
  }
}
