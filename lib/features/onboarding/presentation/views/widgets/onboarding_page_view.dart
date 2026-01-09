import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/app_assets';
import 'package:fruit_hub/features/onboarding/presentation/views/widgets/onboarding_page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        OnboardingPageViewItem(
          image: Assets.imagesOnbardingPageViewItem1Image,
          backgroundImage: Assets.imagesOnbardingPageViewItem1BackgroundImage,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('مرحبًا بك في'), Text('HUB'), Text('Fruit')],
          ),
          subTitle:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
        ),
        OnboardingPageViewItem(
          image: Assets.imagesOnbardingPageViewItem2Image,
          backgroundImage: Assets.imagesOnbardingPageViewItem2BackgroundImage,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('ابحث وتسوق')],
          ),
          subTitle:
              'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
        ),
      ],
    );
  }
}
