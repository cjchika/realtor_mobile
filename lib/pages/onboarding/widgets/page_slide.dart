import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
// import 'package:realtor_app/pages/onboarding/providers/onboarding_providers.dart';
import 'package:realtor_app/routes/routes.dart';

class PageSlide extends ConsumerWidget {
  const PageSlide(
      {super.key,
      required this.index,
      required this.buttonText,
      required this.title,
      required this.subTitle,
      required this.imagePath,
      required this.pageController});

  final int index;
  final String buttonText;
  final String title;
  final String subTitle;
  final String imagePath;
  final PageController pageController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(children: [
      SizedBox(
        width: 340.w,
        height: 340.h,
        child: Image.asset(imagePath, fit: BoxFit.cover),
      ),
      SizedBox(height: 40.h),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Text(
          title,
          style: TextStyle(
              color: AppColors.priColor,
              fontSize: 22.sp,
              fontWeight: FontWeight.w500),
        ),
      ),
      SizedBox(height: 10.h),
      Container(
        padding: EdgeInsets.only(left: 15.w, right: 15.w),
        child: Text(
          subTitle,
          style: TextStyle(
              color: AppColors.priColor.withOpacity(0.7),
              fontSize: 15.sp,
              fontWeight: FontWeight.normal),
        ),
      ),
      GestureDetector(
        onTap: () {
         if(index < 3){
           pageController.animateToPage(
            index,
             duration: const Duration(milliseconds: 500),
             curve: Curves.easeIn,
           );
         } else {
           Navigator.of(context).pushNamedAndRemoveUntil(Routes.APPLICATION, (route) => false);
         }
        },
        child: Container(
          margin: EdgeInsets.only(top: 60.h, left: 15.w, right: 15.w),
          width: 350.w,
          height: 50.h,
          decoration: BoxDecoration(
              color: AppColors.priColor,
              borderRadius: BorderRadius.all(Radius.circular(15.w)),
              boxShadow: [
                BoxShadow(
                  color: AppColors.liteColor,
                  spreadRadius: 1,
                  blurRadius: 2,
                  offset: const Offset(0, 1),
                ),
              ]),
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: AppColors.white, fontSize: 18.sp),
            ),
          ),
        ),
      )
    ]);
  }
}
