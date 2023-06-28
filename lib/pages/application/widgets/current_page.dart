import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/pages/bookmarks/bookmarks_page.dart';
import 'package:realtor_app/pages/home/home_page.dart';

import '../../profile/profile_page.dart';
import '../../properties/properties_page.dart';

class CurrentPage extends StatelessWidget {
  const CurrentPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {

    List<Widget> currentWidget = [
      const HomePage(),
      const PropertiesPage(),
      const BookmarksPage(),
      const ProfilePage(),
    ];

    return currentWidget[index];
  }
}

var bottomTabs = [
  BottomNavigationBarItem(
    label: "Home",
    icon: Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Icon(Icons.space_dashboard_outlined),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Icon(Icons.space_dashboard),
    ),
  ),
  BottomNavigationBarItem(
    label: "Properties",
    icon: Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Icon(Icons.other_houses_outlined),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Icon(Icons.other_houses),
    ),
  ),
  BottomNavigationBarItem(
    label: "Bookmark",
    icon: Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Icon(Icons.bookmarks_outlined),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Icon(Icons.bookmarks),
    ),
  ),
  BottomNavigationBarItem(
    label: "Profile",
    icon: Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Icon(Icons.person_2_outlined),
    ),
    activeIcon: Padding(
      padding: EdgeInsets.only(bottom: 5.h),
      child: Icon(Icons.person_2),
    ),
  )
];