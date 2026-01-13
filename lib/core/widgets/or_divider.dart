import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_text_styles.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: Color(0XFFDCDEDE))),
        const SizedBox(width: 18.0),
        Text('أو', style: AppTextStyles.semiBold16),
        const SizedBox(width: 18.0),
        Expanded(child: Divider(color: Color(0XFFDCDEDE))),
      ],
    );
  }
}
