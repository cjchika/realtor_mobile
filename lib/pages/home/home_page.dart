import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
import 'package:realtor_app/core/constants/app_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();

    return Scaffold(
      body: Container(
        color: AppColors.white,
        child: Column(
          children: [
            Container(
              color: AppColors.liteColor.withOpacity(0.4),
              padding: EdgeInsets.symmetric(vertical: 45.h, horizontal: 25.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Sunday, June 25",
                            style: appStyle(
                                12.sp, AppColors.secColor, FontWeight.w500),
                          ),
                          SizedBox(height: 4.h),
                          Text(
                            "Good morning, CJ 👋",
                            style: appStyle(
                                14.sp, AppColors.priColor, FontWeight.w500),
                          )
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10.h)),
                          border: Border.all(
                              color: AppColors.priColor.withOpacity(0.1)),
                        ),
                        width: 30.w,
                        height: 30.h,
                        child: Icon(
                          Icons.notification_important_outlined,
                          color: AppColors.priColor,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Container(
                    padding: EdgeInsets.all(5.w),
                    decoration: BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.all(Radius.circular(8.w))),
                    child: Column(
                      children: [
                        SizedBox(
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            controller: controller,
                            onChanged: null,
                            style: appStyle(
                                16,
                                AppColors.priColor.withOpacity(0.8),
                                FontWeight.w500),
                            decoration: InputDecoration(
                                hintText: "Street, City...",
                                prefixIcon: Icon(
                                  Icons.location_on_outlined,
                                  color: AppColors.priColor.withOpacity(0.4),
                                ),
                                hintStyle: appStyle(
                                    16,
                                    AppColors.priColor.withOpacity(0.4),
                                    FontWeight.normal),
                                border: InputBorder.none),
                          ),
                        ),
                        Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 5.h, horizontal: 10.w),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.bed_outlined, color: AppColors.priColor.withOpacity(0.5), size: 21),
                                    SizedBox(width: 7.w),
                                    Text("Bed", style: appStyle(16, AppColors.priColor.withOpacity(0.5), FontWeight.w600),)
                                  ],
                                )
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
