import 'package:flutter/material.dart';
import 'package:realtor_app/pages/home/home_page.dart';

class BuildPage extends StatelessWidget {
  const BuildPage({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {

    List<Widget> currentWidget = [
      const HomePage(),
      const Center(child: Text("Properties")),
      const Center(child: Text("Bookmark")),
      const Center(child: Text("Profile")),
    ];

    return currentWidget[index];
  }
}
