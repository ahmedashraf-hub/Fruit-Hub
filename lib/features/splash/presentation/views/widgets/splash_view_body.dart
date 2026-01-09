import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_assets.dart';
import 'package:fruit_hub/features/onboarding/presentation/views/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    executeNavigation();
  }

  static const Duration _splashDuration = Duration(seconds: 3);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [SvgPicture.asset(AppAssets.imagesSplashPlant)],
        ),
        SvgPicture.asset(AppAssets.imagesSplashLogo),
        SvgPicture.asset(AppAssets.imagesSplashSplashBottom, fit: BoxFit.fill),
      ],
    );
  }

  void executeNavigation() {
    Future.delayed(_splashDuration, () {
      if (mounted) {
        Navigator.pushReplacementNamed(context, OnboardingView.routeName);
      }
    });
  }
}
