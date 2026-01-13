import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_assets.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/core/widgets/don_not_have_an_account.dart';
import 'package:fruit_hub/core/widgets/or_divider.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/social_login_button.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext contex) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 24.0),
            const CustomTextFormField(
              hintText: 'البريد الإلكتروني',
              textInputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: 16.0),
            const CustomTextFormField(
              hintText: 'كلمة المرور',
              suffixIcon: Icon(Icons.remove_red_eye, color: Color(0XFFC9CECF)),
              textInputType: TextInputType.visiblePassword,
            ),
            const SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'نسيت كلمة المرور؟',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 33.0),
            CustomButton(onPressed: () {}, title: 'تسجيل الدخول'),
            const SizedBox(height: 33.0),
            DonNotHaveAnAccount(),
            const SizedBox(height: 33.0),
            const OrDivider(),
            const SizedBox(height: 16.0),
            SocialLoginButton(
              title: 'تسجيل بواسطة جوجل',
              image: Assets.imagesLoginGoogleIcon,
              onPressed: () {},
            ),
            const SizedBox(height: 16.0),
            SocialLoginButton(
              title: 'تسجيل بواسطة أبل',
              image: Assets.imagesLoginFacebookIcon,
              onPressed: () {},
            ),
            const SizedBox(height: 16.0),
            SocialLoginButton(
              title: 'تسجيل بواسطة فيسبوك',
              image: Assets.imagesLoginApplIcon,
              onPressed: () {},
            ),
            const SizedBox(height: 33.0),
          ],
        ),
      ),
    );
  }
}
