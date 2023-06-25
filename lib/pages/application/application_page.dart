import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/core/constants/app_colors.dart';
import 'package:realtor_app/pages/application/widgets/build_page.dart';

class ApplicationPage extends StatelessWidget {
  const ApplicationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          body: BuildPage(index: 0),
          bottomNavigationBar: Container(
            width: 375.w,
            height: 60.h,
            decoration: BoxDecoration(color: AppColors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 1,
                  blurRadius: 1)
            ]),
            child: BottomNavigationBar(
                currentIndex: 0,
                elevation: 0,
                type: BottomNavigationBarType.fixed,
                showUnselectedLabels: false,
                showSelectedLabels: false,
                selectedItemColor: AppColors.priColor,
                unselectedItemColor: AppColors.secColor,
                onTap: (value) => (),
                items: [
                  BottomNavigationBarItem(
                    icon: SizedBox(
                      width: 18.w,
                      height: 18.h,
                      child: Icon(Icons.space_dashboard_outlined),
                    ),
                    activeIcon: SizedBox(
                      width: 18.w,
                      height: 18.h,
                      child: Icon(Icons.space_dashboard),
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
