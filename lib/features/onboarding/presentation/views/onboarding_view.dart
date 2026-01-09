import 'package:flutter/material.dart';
import 'package:fruit_hub/features/onboarding/presentation/views/widgets/onboarding_view_body.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  static const String routeName = 'onboardingView';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnboardingViewBody());
  }
}
