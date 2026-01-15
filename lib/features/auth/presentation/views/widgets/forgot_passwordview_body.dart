import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/views/check_code_view.dart';

class ForgotPasswordviewBody extends StatelessWidget {
  const ForgotPasswordviewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          Text(
            'لا تقلق ، ما عليك سوى كتابة رقم هاتفك وسنرسل رمز التحقق.',
            style: AppTextStyles.semiBold16.copyWith(color: Color(0XFF616A6B)),
          ),
          const SizedBox(height: 30),
          const CustomTextFormField(
            hintText: 'رقم الهاتف',
            textInputType: TextInputType.numberWithOptions(),
          ),
          const SizedBox(height: 30),
          CustomButton(
            onPressed: () {
              Navigator.pushNamed(context, CheckCodeView.routeName);
            },
            title: 'نسيت كلمة المرور',
          ),
        ],
      ),
    );
  }
}
