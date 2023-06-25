import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_style.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({super.key, required this.text, required this.onTap});

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(22.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text,
              style: appStyle(16.sp, AppColors.priColor, FontWeight.w600)),
          GestureDetector(
            onTap: onTap,
            child: Text("See All",
                style: appStyle(12.sp, AppColors.secColor, FontWeight.w500)),
          )
        ],
      ),
    );
  }
}
