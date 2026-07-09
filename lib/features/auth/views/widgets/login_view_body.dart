import 'package:flutter/material.dart';
import 'package:friuts/constants.dart';
import 'package:friuts/core/assets.dart';
import 'package:friuts/core/utils/app_colors.dart';
import 'package:friuts/core/utils/app_text_styles.dart';
import 'package:friuts/core/widgets/custom_bottom.dart';
import 'package:friuts/core/widgets/custom_text_form_field.dart';
import 'package:friuts/features/auth/views/sign_up_view.dart';
import 'package:friuts/features/auth/views/widgets/dont_have_acount.dart';
import 'package:friuts/features/auth/views/widgets/or_divider.dart';
import 'package:friuts/features/auth/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizintalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),

            const SizedBox(height: 16),

            const CustomTextFormField(
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0xFFc9cecf)),

              hintText: 'كلمة المرور',
              textInputType: TextInputType.visiblePassword,
              obscureText: true,
            ),

            const SizedBox(height: 16),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'نسيت كلمة المرور؟',
                  style: TextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 33),

            CustomBottom(text: 'تسجيل دخول', onPressed: () {}),

            const SizedBox(height: 33),

            DontHaveAccount(
              ontap: () {
                Navigator.pushNamed(context, SignUpView.routeName);
              },
              text1: 'لا تمتلك حساب؟',
              text2: 'قم بإنشاء حساب',
            ),

            const SizedBox(height: 33),

            const OrDivider(),

            const SizedBox(height: 33),

            SocialLoginButton(
              onPressed: () {},
              image: Assets.assetsImagesGoogleIcon,
              title: 'تسجيل بواسطة جوجل',
            ),

            const SizedBox(height: 16),

            SocialLoginButton(
              onPressed: () {},
              image: Assets.assetsImagesApplIcon,
              title: 'تسجيل بواسطة أبل',
            ),

            const SizedBox(height: 16),

            SocialLoginButton(
              onPressed: () {},
              image: Assets.assetsImagesFacebookIcon,
              title: 'تسجيل بواسطة فيسبوك',
            ),
          ],
        ),
      ),
    );
  }
}
