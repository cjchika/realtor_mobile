import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realtor_app/pages/home/home_page.dart';

class CurrentPage extends StatelessWidget {
  const CurrentPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {

    List<Widget> currentWidget = [
      const HomePage(),
      const Center(child: Text("Properties")),
      const Center(child: Text("Bookmarks")),
      const Center(child: Text("Profile")),
    ];

    return currentWidget[index];
  }
}

var bottomTabs = [
  BottomNavigationBarItem(
    label: "Home",
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
  ),
  BottomNavigationBarItem(
    label: "Properties",
    icon: SizedBox(
      width: 18.w,
      height: 18.h,
      child: Icon(Icons.other_houses_outlined),
    ),
    activeIcon: SizedBox(
      width: 18.w,
      height: 18.h,
      child: Icon(Icons.other_houses),
    ),
  ),
  BottomNavigationBarItem(
    label: "Bookmark",
    icon: SizedBox(
      width: 18.w,
      height: 18.h,
      child: Icon(Icons.bookmarks_outlined),
    ),
    activeIcon: SizedBox(
      width: 18.w,
      height: 18.h,
      child: Icon(Icons.bookmarks),
    ),
  ),
  BottomNavigationBarItem(
    label: "Profile",
    icon: SizedBox(
      width: 18.w,
      height: 18.h,
      child: Icon(Icons.person_2_outlined),
    ),
    activeIcon: SizedBox(
      width: 18.w,
      height: 18.h,
      child: Icon(Icons.person_2),
    ),
  )
];