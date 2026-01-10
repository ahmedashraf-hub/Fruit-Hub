import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnboardingPageViewItem extends StatelessWidget {
  const OnboardingPageViewItem({
    super.key,
    required this.image,
    required this.backgroundImage,
    required this.title,
    required this.subTitle,
    required this.isVisible,
  });

  final String image, backgroundImage, subTitle;
  final Widget title;
  final bool isVisible;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * 0.4,
          child: Stack(
            children: [
              SvgPicture.asset(backgroundImage, fit: BoxFit.fill),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: SvgPicture.asset(image),
              ),
              Visibility(
                visible: isVisible,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(onPressed: () {}, child: Text('تخط')),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 64.0),
        title,
        const SizedBox(height: 24.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(subTitle, textAlign: TextAlign.center),
        ),
      ],
    );
  }
}
