import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sidebar_item_model.dart';

class SidebarItemWidget extends StatelessWidget {
  final SidebarItemModel sidebarItem;
  final VoidCallback? onTap;

  SidebarItemWidget({
    Key? key,
    required this.sidebarItem,
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
          gradient: sidebarItem.isActive?.value ?? false
              ? LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                )
              : LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: sidebarItem.iconPath?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),
            SizedBox(height: 4.h),
            Text(
              sidebarItem.title?.value ?? '',
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: sidebarItem.isActive?.value ?? false
                      ? Color(0xFF232B32)
                      : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
