import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
import 'package:realtor_app/core/constants/app_style.dart';
import 'package:realtor_app/data/models/property_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:realtor_app/data/providers/property_provider.dart';

class PropertyCard extends ConsumerWidget {
  const PropertyCard({
    super.key,
    required this.onTap,
    required this.property,
  });

  final void Function() onTap;
  final PropertyModel property;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(12.w),
                      topLeft: Radius.circular(12.w)),
                  child: CachedNetworkImage(
                    imageUrl: property.coverPhoto ?? "",
                    fit: BoxFit.cover,
                    width: 330.w,
                    height: 150.h,
                    placeholder: (context, url) =>
                        SvgPicture.asset(
                          'assets/images/placeholder.svg',
                          fit: BoxFit.cover,
                          width: 330.w,
                          height: 150.h,
                        ),
                    errorWidget: (context, url, error) =>
                        SvgPicture.asset(
                          'assets/images/placeholder.svg',
                          fit: BoxFit.cover,
                          width: 330.w,
                          height: 150.h,
                        ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: property.isBookmarked ? GestureDetector(
                    onTap: () {
                      ref.read(propertyProvider.notifier).toggleBookmark(
                          property.externalID ?? "0",
                          isBookmarked: false);
                    },
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColors.secColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.w),
                        ),
                      ),
                      child: Icon(
                        Icons.bookmark_sharp,
                        size: 20,
                        color: AppColors.white,
                      ),
                    ),
                  ) : GestureDetector(
                    onTap: () {
                      ref.read(propertyProvider.notifier).toggleBookmark(
                          property.externalID ?? "0",
                          isBookmarked: true);
                    },
                    child: Container(
                      width: 30.w,
                      height: 30.h,
                      decoration: BoxDecoration(
                        color: AppColors.secColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6.w),
                        ),
                      ),
                      child: Icon(
                        Icons.bookmark_outline_sharp,
                        size: 20,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 330.w,
              height: 110.h,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(12.w),
                  bottomLeft: Radius.circular(12.w),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 1,
                    offset: const Offset(0, 1), // changes position of shadow
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.all(10.w),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(
                            property.title ?? "",
                            style: appStyle(
                                14, AppColors.priColor, FontWeight.w500),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              property.productScore.toString(),
                              style: appStyle(
                                  14, AppColors.priColor, FontWeight.w500),
                            ),
                            Icon(
                              Icons.star,
                              size: 19,
                              color: AppColors.priColor,
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Text(
                            property.title ?? "",
                            style: appStyle(
                                10.sp, AppColors.priColor, FontWeight.normal),
                            maxLines: 1,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.bed_outlined,
                                    size: 16.w,
                                    color: AppColors.priColor,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    property.rooms.toString(),
                                    style: appStyle(13, AppColors.priColor,
                                        FontWeight.normal),
                                  )
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.bathtub_outlined,
                                    size: 16.w,
                                    color: AppColors.priColor,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    property.baths.toString(),
                                    style: appStyle(13, AppColors.priColor,
                                        FontWeight.normal),
                                  )
                                ],
                              ),
                              SizedBox(width: 10.w),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.house_outlined,
                                    size: 18.w,
                                    color: AppColors.priColor,
                                  ),
                                  SizedBox(
                                    width: 5.w,
                                  ),
                                  Text(
                                    property.category ?? "",
                                    style: appStyle(13, AppColors.priColor,
                                        FontWeight.normal),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "AED${property.price}/",
                              style: appStyle(
                                  14, AppColors.priColor, FontWeight.w600),
                            ),
                            Text(
                              property.rentFrequency.toString(),
                              style: appStyle(
                                  12, AppColors.secColor, FontWeight.w500),
                            )
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
