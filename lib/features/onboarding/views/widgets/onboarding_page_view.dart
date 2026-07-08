import 'package:flutter/material.dart';
import 'package:friuts/core/assets.dart';
import 'package:friuts/features/onboarding/views/widgets/page_view_item.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        ///onboarding page view item 1
        PageViewItem(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text('مرحبًا بك في '), Text('Fruit'), Text('HUB')],
          ),
          description:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          image: Assets.assetsImagesPageViewItem1Image,
          backgroundimg: Assets.assetsImagesPageViewItem1BackgroundImage,
        ),

        ///onboarding page view item 2
        PageViewItem(
          title: Text('ابحث وتسوق'),
          description:
              'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
          image: Assets.assetsImagesPageViewItem2Image,
          backgroundimg: Assets.assetsImagesPageViewItem2BackgroundImage,
        ),
      ],
    );
  }
}
