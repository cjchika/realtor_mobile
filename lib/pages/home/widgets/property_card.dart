import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PropertyCard extends StatelessWidget {
  const PropertyCard({super.key, required this.onTap});

  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(18.w),
        child: Column(
          children: [
            Container(
                width: 330.w,
                height: 160.h,
                child: Image.asset(
                  "assets/images/home1.jpg",
                  fit: BoxFit.cover,
                )),
            Container(width: 330.w, height: 120.h, child: Text("Text"))
          ],
        ),
      ),
    );
  }
}
