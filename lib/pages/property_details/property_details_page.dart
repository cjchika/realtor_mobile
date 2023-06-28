import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
import 'package:realtor_app/core/constants/app_style.dart';
import 'package:realtor_app/data/models/property_model.dart';

class PropertyDetailsPage extends StatelessWidget {
  const PropertyDetailsPage({super.key, required this.property});

  final PropertyModel property;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          property.title?.substring(0, 28) ?? "",
          style: appStyle(16, AppColors.priColor, FontWeight.normal),
        ),
      ),
      body: Center(
        child: Text("Details Page"),
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
