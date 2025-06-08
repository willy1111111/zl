import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sidebar_menu_item_model.dart';

class SidebarMenuItemWidget extends StatelessWidget {
  final SidebarMenuItemModel menuItem;
  final bool isSelected;
  final VoidCallback? onTap;

  SidebarMenuItemWidget({
    Key? key,
    required this.menuItem,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 66.h,
        height: menuItem.title?.value == 'Collect' ? 108.h : 64.h,
        decoration: BoxDecoration(
          gradient: isSelected
              ? LinearGradient(
                  colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                )
              : LinearGradient(
                  colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomLeft: Radius.circular(8.h),
          ),
        ),
        child: Stack(
          children: [
            if (menuItem.title?.value == 'Collect')
              Positioned.fill(
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup1084,
                  fit: BoxFit.cover,
                ),
              ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: menuItem.icon?.value ?? '',
                  height: 36.h,
                  width: 36.h,
                ),
                SizedBox(height: 6.h),
                Text(
                  menuItem.title?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold.copyWith(
                      color: isSelected
                          ? Color(0xFF232B32)
                          : appTheme.colorFF8089),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
