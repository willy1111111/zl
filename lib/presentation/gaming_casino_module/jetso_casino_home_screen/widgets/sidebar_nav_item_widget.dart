import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/sidebar_nav_item_model.dart';

class SidebarNavItemWidget extends StatelessWidget {
  final SidebarNavItemModel sidebarItem;
  final VoidCallback? onTap;

  SidebarNavItemWidget({
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
          gradient: _getBackgroundGradient(),
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
              height: (sidebarItem.isGradientHot?.value ?? false) ? 30.h : 36.h,
              width: 36.h,
            ),
            SizedBox(
                height:
                    (sidebarItem.isGradientHot?.value ?? false) ? 6.h : 1.h),
            Text(
              sidebarItem.title?.value ?? '',
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: (sidebarItem.isGradientHot?.value ?? false)
                      ? Color(0xFF232B32)
                      : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }

  LinearGradient _getBackgroundGradient() {
    if (sidebarItem.isGradientHot?.value ?? false) {
      return LinearGradient(
        colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
    } else {
      return LinearGradient(
        colors: [Color(0xFF363C41), Color(0xFF2B3035)],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );
    }
  }
}
