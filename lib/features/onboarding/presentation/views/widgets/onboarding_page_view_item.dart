import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/app_assets';

class OnboardingPageViewItem extends StatelessWidget {
  const OnboardingPageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
  });
  final String image, backgroundImage;
  final String subTitle;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.5,
          child: Stack(
            children: [
              SvgPicture.asset(
                Assets.imagesOnbardingPageViewItem1BackgroundImage,
                fit: BoxFit.fill,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  Assets.imagesOnbardingPageViewItem1Image,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(onPressed: () {}, child: Text('تخط')),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
