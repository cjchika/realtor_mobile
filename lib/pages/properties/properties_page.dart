import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
import 'package:realtor_app/core/constants/app_style.dart';

import '../home/widgets/property_card.dart';

class PropertiesPage extends StatelessWidget {
  const PropertiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Property Listing",
            style: appStyle(18.sp, AppColors.priColor, FontWeight.w500),
          ),
        ),
      ),
      body: Padding(

        padding: EdgeInsets.symmetric(horizontal: 0.w, vertical: 25.h),
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 8,
              itemBuilder: (ctx, index) {
                return PropertyCard(
                  onTap: () {},
                  onBookmark: () {},
                );
              }),
        ),
      );

  }
}
