import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/sidebar_menu_item_model.dart';

class SidebarMenuItemWidget extends StatelessWidget {
  final SidebarMenuItemModel sidebarMenuItemModel;
  final bool isSelected;
  final VoidCallback? onTap;

  SidebarMenuItemWidget({
    Key? key,
    required this.sidebarMenuItemModel,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 66.h,
        height: 64.h,
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
                )
              : LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomLeft: Radius.circular(8.h),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: sidebarMenuItemModel.iconPath?.value ?? '',
              width: 36.h,
              height: 36.h,
            ),
            SizedBox(height: isSelected ? 6.h : 1.h),
            Text(
              sidebarMenuItemModel.title?.value ?? '',
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: isSelected ? Color(0xFF232B32) : appTheme.colorFF8089,
                  height: 1.17),
            ),
          ],
        ),
      ),
    );
  }
}
