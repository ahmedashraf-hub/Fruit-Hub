import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [SvgPicture.asset(AppAssets.imagesSpalshPlant)],
        ),
        SvgPicture.asset(AppAssets.imagesSpalshLogo),
        SvgPicture.asset(AppAssets.imagesSpalshSplashBottom, fit: BoxFit.fill),
      ],
    );
  }
}
