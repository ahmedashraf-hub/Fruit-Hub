import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup_view.dart';

class DonNotHaveAnAccount extends StatelessWidget {
  const DonNotHaveAnAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'ألا تمتلك حساب؟',
          style: AppTextStyles.semiBold16.copyWith(color: Color(0XFF949D9E)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, SignupView.routeName);
          },
          child: Text(
            'قم بإنشاء حساب',
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
