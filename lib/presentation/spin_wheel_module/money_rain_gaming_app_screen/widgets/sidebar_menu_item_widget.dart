import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class SidebarMenuItemWidget extends StatelessWidget {
  final String iconPath;
  final String title;
  final bool isActive;
  final VoidCallback? onTap;

  const SidebarMenuItemWidget({
    Key? key,
    required this.iconPath,
    required this.title,
    this.isActive = false,
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
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isActive
                ? [Color(0xFFFFC61E), Color(0xFFFFA001)]
                : [Color(0xFF363C41), Color(0xFF2B3035)],
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
              imagePath: iconPath,
              width: 36.h,
              height: 36.h,
            ),
            SizedBox(height: 2.h),
            Text(
              title,
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: isActive ? Color(0xFF232B32) : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
