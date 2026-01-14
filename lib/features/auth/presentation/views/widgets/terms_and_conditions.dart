import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/features/auth/presentation/views/signup_view.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/custom_check_box.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomCheckBox(isChecked: true),
        const SizedBox(width: 16.0),
        Expanded(
          child: Wrap(
            children: [
              Text(
                'من خلال إنشاء حساب ، فإنك توافق على ',
                style: AppTextStyles.semiBold13.copyWith(
                  color: const Color(0XFF949D9E),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, SignupView.routeName);
                },
                child: Text(
                  'الشروط والأحكام الخاصة بنا',
                  style: AppTextStyles.semiBold13.copyWith(
                    color: AppColors.lightPrimaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
