import 'package:flutter/material.dart';
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
        title: Text(property.title?.substring(0,28) ?? "", style: appStyle(16, AppColors.priColor, FontWeight.normal),),
      ),
      body: Center(
        child: Text("Details Page"),
      ),
    );
  }
}
