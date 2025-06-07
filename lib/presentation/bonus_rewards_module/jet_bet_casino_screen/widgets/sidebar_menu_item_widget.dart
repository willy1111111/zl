import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/sidebar_menu_item_model.dart';

class SidebarMenuItemWidget extends StatelessWidget {
  final SidebarMenuItemModel sidebarModel;
  final VoidCallback? onTap;

  const SidebarMenuItemWidget({
    Key? key,
    required this.sidebarModel,
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
              imagePath: sidebarModel.iconPath?.value ?? '',
              width: 36.h,
              height: 36.h,
            ),
            SizedBox(height: _getSpacing()),
            Text(
              sidebarModel.title?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: _getTextColor()),
            ),
          ],
        ),
      ),
    );
  }

  LinearGradient _getGradient() {
    if (sidebarModel.isActive?.value ?? false) {
      return LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
      );
    }
    return LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [Color(0xFF363C41), Color(0xFF2B3035)],
    );
  }

  Color _getTextColor() {
    if (sidebarModel.isActive?.value ?? false) {
      return Color(0xFF25282D);
    }
    return Color(0xFF808994);
  }

  double _getSpacing() {
    if (sidebarModel.title?.value == 'Hot') {
      return 6.h;
    } else if (sidebarModel.title?.value == 'Sport') {
      return 4.h;
    }
    return 1.h;
  }
}
