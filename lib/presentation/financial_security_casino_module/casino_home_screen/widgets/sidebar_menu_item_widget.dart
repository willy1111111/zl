import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sidebar_menu_item_model.dart';

class SidebarMenuItemWidget extends StatelessWidget {
  final SidebarMenuItemModel sidebarItem;
  final bool isSelected;
  final VoidCallback? onTap;

  const SidebarMenuItemWidget({
    Key? key,
    required this.sidebarItem,
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
          gradient: _getGradient(),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomLeft: Radius.circular(8.h),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: sidebarItem.icon?.value ?? '',
              width: _getIconSize(),
              height: _getIconSize(),
            ),
            SizedBox(height: sidebarItem.isHotItem?.value ?? false ? 6.h : 0),
            Text(
              sidebarItem.title?.value ?? '',
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: _getTextColor(), height: 1.17),
            ),
          ],
        ),
      ),
    );
  }

  LinearGradient _getGradient() {
    if (sidebarItem.isHotItem?.value ?? false) {
      return LinearGradient(
        colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
    }
    return LinearGradient(
      colors: [Color(0xFF363C41), Color(0xFF2B3035)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
  }

  Color _getTextColor() {
    if (sidebarItem.isHotItem?.value ?? false) {
      return appTheme.transparentCustom;
    }
    return Color(0xFF808994);
  }

  Paint? _getHotTextPaint() {
    if (sidebarItem.isHotItem?.value ?? false) {
      return Paint()
        ..shader = LinearGradient(
          colors: [Color(0xFF232B32), Color(0xFF25282D)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(Rect.fromLTWH(0, 0, 50, 20));
    }
    return null;
  }

  double _getIconSize() {
    if (sidebarItem.isHotItem?.value ?? false) {
      return 30.h;
    }
    return 36.h;
  }
}
