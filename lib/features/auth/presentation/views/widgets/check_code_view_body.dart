import 'package:flutter/material.dart';
import 'package:fruit_hub/constants.dart';
import 'package:fruit_hub/core/utils/app_colors.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';
import 'package:fruit_hub/core/widgets/custom_button.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/custom_code_holder.dart';

class CheckCodeViewBody extends StatelessWidget {
  const CheckCodeViewBody({super.key});

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
          const SizedBox(height: 29),
          const CustomCodeHolder(),
          const SizedBox(height: 29),
          CustomButton(onPressed: () {}, title: 'تحقق من الرمز'),
          const SizedBox(height: 29),
          GestureDetector(
            onTap: () {},
            child: Text(
              'إعادة إرسال الرمز',
              style: AppTextStyles.semiBold16.copyWith(
                color: AppColors.lightPrimaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
