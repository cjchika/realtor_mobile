import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
import 'package:realtor_app/core/constants/app_style.dart';
import 'package:realtor_app/data/providers/property_provider.dart';
import 'package:realtor_app/pages/home/widgets/icon_text.dart';
import 'package:realtor_app/pages/home/widgets/property_card.dart';
import 'package:realtor_app/pages/home/widgets/section_heading.dart';
import 'package:realtor_app/routes/routes.dart';

import '../application/providers/application_providers.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIdx = ref.watch(bottomIndexProvider);
    final fiveFeaturedPropertyList = ref.watch(propertyProvider);
    final isLoading = ref.watch(isLoadingPropertiesProvider);

    final TextEditingController controller = TextEditingController();

    return Scaffold(
      body: Container(
        color: AppColors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: AppColors.liteColor.withOpacity(0.4),
                padding: EdgeInsets.only(
                    left: 22.w, right: 22.w, top: 50.h, bottom: 25.h),
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
                                  10.sp, AppColors.secColor, FontWeight.w500),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.h)),
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
                      height: 100.h,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconText(
                                    color: AppColors.priColor.withOpacity(0.5),
                                    icon: Icons.bed_outlined,
                                    text: "Bed",
                                    textStyle: appStyle(
                                        16,
                                        AppColors.priColor.withOpacity(0.5),
                                        FontWeight.w600),
                                    size: 21),
                                IconText(
                                    color: AppColors.priColor.withOpacity(0.5),
                                    icon: Icons.currency_exchange,
                                    text: "500-1000",
                                    textStyle: appStyle(
                                        15,
                                        AppColors.priColor.withOpacity(0.5),
                                        FontWeight.w600),
                                    size: 17),
                                IconText(
                                    color: AppColors.priColor.withOpacity(0.5),
                                    icon: Icons.house_outlined,
                                    text: "Type",
                                    textStyle: appStyle(
                                        15,
                                        AppColors.priColor.withOpacity(0.5),
                                        FontWeight.w600),
                                    size: 21),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16.h),
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        width: 330.w,
                        height: 48.h,
                        decoration: BoxDecoration(
                            color: AppColors.priColor,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.w))),
                        child: Center(
                            child: Text(
                          "Search",
                          style: appStyle(16, AppColors.white, FontWeight.w500),
                        )),
                      ),
                    )
                  ],
                ),
              ),
              SectionHeading(text: "Featured", onTap: () => ref.read(bottomIndexProvider.notifier).state = 1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
                child: isLoading ? CircularProgressIndicator(color: AppColors.priColor) : Container(
                  width: 345.w, height: 270.h ,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (ctx, index) {
                            return PropertyCard(onTap: () {}, onBookmark: () {}, property: fiveFeaturedPropertyList[index], );
                          }),
                ),
              ),
              SectionHeading(text: "Trending", onTap:() => ref.read(bottomIndexProvider.notifier).state = 1),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 0.h),
                child: isLoading ? CircularProgressIndicator(color: AppColors.priColor) : Container(
                  width: 345.w, height: 270.h ,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (ctx, index) {
                        return PropertyCard(onTap: () {}, onBookmark: () {}, property: fiveFeaturedPropertyList.reversed.toList()[index], );
                      }),
                ),
              ),
              SizedBox(height: 30.h)
            ],
          ),
        ),
      ),
    );
  }
}
