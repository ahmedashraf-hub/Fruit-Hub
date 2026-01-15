import 'package:flutter/material.dart';
import 'package:fruit_hub/core/widgets/custom_app_bar.dart';
import 'package:fruit_hub/features/auth/presentation/views/widgets/forgot_passwordview_body.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  static const routeName = 'forgotPasswordView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'نسيان كلمة المرور'),
      body: const ForgotPasswordviewBody(),
    );
  }
}
