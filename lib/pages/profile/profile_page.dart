import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
import 'package:realtor_app/core/constants/app_style.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Profile",
            style: appStyle(16.sp, AppColors.priColor, FontWeight.w500),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome back, Guest 👋.",
                    style: appStyle(16, AppColors.priColor, FontWeight.w500)),
              ],
            ),
            SizedBox(height: 30.h),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.secColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.w)), ),
              width: double.infinity,
              height: 40.h,
              child: Center(
                  child: GestureDetector(
                    onTap: () {},
                    child: Text(
                      "SIGN IN",
                      style: appStyle(14.sp, AppColors.white, FontWeight.normal),
                    ),
                  )),
            ),
            SizedBox(height: 10.h),
            Container(
              decoration: BoxDecoration(
                  color: AppColors.priColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.w))),
              width: double.infinity,
              height: 40.h,
              child: Center(
                  child: GestureDetector(
                onTap: () {},
                child: Text(
                  "SIGN UP",
                  style: appStyle(14.sp, AppColors.white, FontWeight.normal),
                ),
              )),
            ),
            const Spacer(),
            Text(
              "Version 1.0.0",
              style: appStyle(13, AppColors.priColor, FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
