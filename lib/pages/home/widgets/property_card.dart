import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.w),
                  topLeft: Radius.circular(12.w)),
              child: Image.asset(
                "assets/images/home1.jpg",
                fit: BoxFit.cover,
                width: 330.w,
                height: 150.h,
              )),
          Container(
            width: 330.w,
            height: 80.h,
            child: Text("Text"),
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
          )
        ],
      ),
    );
  }
}
