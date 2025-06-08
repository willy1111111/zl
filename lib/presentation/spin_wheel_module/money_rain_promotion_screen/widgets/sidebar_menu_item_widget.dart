import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sidebar_menu_item_model.dart';

class SidebarMenuItemWidget extends StatelessWidget {
  final SidebarMenuItemModel menuItem;
  final bool isSelected;
  final VoidCallback? onTap;

  const SidebarMenuItemWidget({
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
        height: 64.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: isSelected
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
              imagePath: menuItem.iconPath?.value ?? '',
              height: menuItem.title?.value == 'Hot' ? 30.h : 36.h,
              width: 36.h,
            ),
            SizedBox(height: menuItem.title?.value == 'Hot' ? 6.h : 1.h),
            Text(
              menuItem.title?.value ?? '',
              style: TextStyleHelper.instance.body12BoldArial.copyWith(
                  color: isSelected ? Color(0xFF232B32) : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
