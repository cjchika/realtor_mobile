import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard(
      {super.key, required this.onTap, required this.onBookmark});

  final void Function() onTap;
  final void Function() onBookmark;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12.w),
                    topLeft: Radius.circular(12.w)),
                child: Image.asset(
                  "assets/images/home3.jpg",
                  fit: BoxFit.cover,
                  width: 330.w,
                  height: 150.h,
                ),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: GestureDetector(
                  onTap: onBookmark,
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
                      Icons.bookmark_outline_sharp, size: 20,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: 330.w,
            height: 80.h,
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
            child: Container(),
          )
        ],
      ),
    );
  }
}
