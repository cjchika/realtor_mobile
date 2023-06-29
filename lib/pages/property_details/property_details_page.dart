import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
import 'package:realtor_app/core/constants/app_style.dart';
import 'package:realtor_app/data/models/property_model.dart';

import '../../data/providers/property_provider.dart';

class PropertyDetailsPage extends ConsumerWidget {
  const PropertyDetailsPage({super.key, required this.property});

  final PropertyModel property;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(300.h),
        child: AppBar(
          leading: IconButton(
              onPressed: () => Navigator.of(context).pop(),
              icon: Container(
                  decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.h))),
                  height: 32.h,
                  width: 32.w,
                  child: Icon(
                    Icons.arrow_back,
                    size: 20.h,
                  ))),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(10.h))),
                      height: 32.h,
                      width: 32.w,
                      child: Icon(Icons.share, size: 20.h,)),
                  SizedBox(width: 10.w),
                  property.isBookmarked
                      ? GestureDetector(
                          onTap: () {
                            ref.read(propertyProvider.notifier).toggleBookmark(
                                property.externalID ?? "0",
                                isBookmarked: false);

                          },
                          child: Container(
                            width: 32.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.w),
                              ),
                            ),
                            child: Icon(
                              Icons.bookmark_sharp,
                              size: 20,
                              color: AppColors.priColor,
                            ),
                          ),
                        )
                      : GestureDetector(
                          onTap: () {
                            ref.read(propertyProvider.notifier).toggleBookmark(
                                property.externalID ?? "0",
                                isBookmarked: true);
                          },
                          child: Container(
                            width: 32.w,
                            height: 32.h,
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.w),
                              ),
                            ),
                            child: Icon(
                              Icons.bookmark_outline_sharp,
                              size: 20,
                              color: AppColors.priColor,
                            ),
                          ),
                        )
                ],
              ),
            )
          ],
          flexibleSpace: Container(
            height: 300.h,
            child: CachedNetworkImage(
              imageUrl: property.coverPhoto ?? "",
              fit: BoxFit.cover,
              width: 330.w,
              height: 150.h,
              placeholder: (context, url) => SvgPicture.asset(
                'assets/images/placeholder.svg',
                fit: BoxFit.cover,
                width: 330.w,
                height: 150.h,
              ),
              errorWidget: (context, url, error) => SvgPicture.asset(
                'assets/images/placeholder.svg',
                fit: BoxFit.cover,
                width: 330.w,
                height: 150.h,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
      body: Column(
        children: [
          Container(
              child: Center(
            child: Text("Prop"),
          ))
        ],
      ),
      bottomNavigationBar: Container(
        width: 375.w,
        height: 78.h,
        decoration: BoxDecoration(color: AppColors.white, boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 1)
        ]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: BottomNavigationBar(
            currentIndex: 0,
            elevation: 0,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: AppColors.priColor,
            unselectedItemColor: AppColors.secColor,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (value) {},
            items: [
              BottomNavigationBarItem(
                label: "\$${property.price}",
                icon: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Price",
                        style:
                            appStyle(12, AppColors.secColor, FontWeight.w600)),
                    Row(
                      children: [
                        Text("AED${property.price}/",
                            style: appStyle(
                                16, AppColors.priColor, FontWeight.w600)),
                        Text("${property.rentFrequency}",
                            style: appStyle(
                                13, AppColors.secColor, FontWeight.w600)),
                      ],
                    ),
                  ],
                ),
              ),
              BottomNavigationBarItem(
                label: "Book",
                icon: Container(
                  decoration: BoxDecoration(
                      color: AppColors.priColor,
                      borderRadius: BorderRadius.all(Radius.circular(10.h))),
                  width: double.infinity,
                  height: 45.h,
                  child: Center(
                      child: Text(
                    "Book",
                    style: appStyle(15.sp, AppColors.white, FontWeight.normal),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
