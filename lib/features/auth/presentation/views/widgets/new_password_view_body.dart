import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/core/widgets/custom_text_form_field.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kHorizontalPadding),
      child: Column(
        children: [
          const SizedBox(height: 24.0),
          Text(
            'أدخل الرمز الذي أرسلناه إلى عنوان بريد التالي Maxxx@email.com',
            style: AppTextStyles.semiBold16.copyWith(
              color: const Color(0XFF616A6B),
            ),
          ),
          const SizedBox(height: 34),
          CustomTextFormField(
            hintText: 'كلمة المرور الجديدة',
            textInputType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 24.0),
          CustomTextFormField(
            hintText: 'أعد إدخال كلمة المرور',
            textInputType: TextInputType.visiblePassword,
          ),
          const SizedBox(height: 24.0),
          CustomButton(onPressed: () {}, title: 'إنشاء كلمة مرور جديدة'),
        ],
      ),
    );
  }
}
