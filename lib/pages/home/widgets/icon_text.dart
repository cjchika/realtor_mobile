import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconText extends StatelessWidget {
  const IconText({super.key, required this.color, required this.icon, required this.text, required this.textStyle, required this.size});

  final Color color;
  final IconData icon;
  final String text;
  final TextStyle textStyle;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: size),
        SizedBox(width: 7.w),
        Text(text, style: textStyle),
      ],
    );
  }
}
