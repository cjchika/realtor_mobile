import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
import 'package:realtor_app/pages/onboarding/providers/onboarding_providers.dart';
import 'package:realtor_app/pages/onboarding/widgets/page_slide.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends ConsumerWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PageController pageController = PageController(initialPage: 0);
    final pageIndex = ref.watch(pageIndexProvider);

    return Container(
      color: Colors.white,
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.only(top: 80.h),
          width: 375.w,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              PageView(
                controller: pageController,
                onPageChanged: (index) => ref.read(pageIndexProvider.notifier).state++,
                children: [
                  PageSlide(
                    index: 1,
                    buttonText: "Next",
                    title: "Development & Advisory Services for you.",
                    subTitle:
                        "Quality Development and Advisory Services polished for your uniqueness.",
                    imagePath: "assets/images/house01.png",
                    pageController: pageController,
                  ),
                  PageSlide(
                    index: 2,
                    buttonText: "Next",
                    title: "Find your best Real Estate Services.",
                    subTitle:
                        "The best Real Estate Services are found here, take the opportunity.",
                    imagePath: "assets/images/house02.png",
                    pageController: pageController,
                  ),
                  PageSlide(
                    index: 3,
                    buttonText: "Get Started",
                    title: "Your dream home is about to become a reality.",
                    subTitle:
                        "The best Real Estate Services are found here, take the opportunity.",
                    imagePath: "assets/images/house03.png",
                    pageController: pageController,
                  )
                ],
              ),
              Positioned(
                bottom: 70.h,
                child: SmoothPageIndicator(
                  controller: pageController,
                  count: 3,
                  effect: ScrollingDotsEffect(
                    activeDotScale: 1.4,
                    radius: 10,
                    spacing: 7,
                    dotHeight: 10,
                    dotWidth: 10,
                    dotColor: AppColors.secColor,
                    activeDotColor: AppColors.priColor,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
