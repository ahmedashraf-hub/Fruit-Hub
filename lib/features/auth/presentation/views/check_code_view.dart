import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/check_code_view_body.dart';

class CheckCodeView extends StatelessWidget {
  const CheckCodeView({super.key});

  static const routeName = 'checkCodeView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'التحقق من الرمز'),
      body: const CheckCodeViewBody(),
    );
  }
}
