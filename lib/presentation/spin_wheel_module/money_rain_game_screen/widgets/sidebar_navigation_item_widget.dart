import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sidebar_navigation_item_model.dart';

class SidebarNavigationItemWidget extends StatelessWidget {
  final SidebarNavigationItemModel sidebarItem;
  final VoidCallback? onTap;

  const SidebarNavigationItemWidget({
    Key? key,
    required this.sidebarItem,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Obx(() => Container(
            height: 64.h,
            margin: EdgeInsets.only(bottom: 4.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: (sidebarItem.isSelected?.value ?? false)
                    ? [Color(0xFFFFC61E), Color(0xFFFFA001)]
                    : [Color(0xFF363C41), Color(0xFF2B3035)],
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.h),
                bottomRight: Radius.circular(8.h),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: sidebarItem.iconPath?.value ?? '',
                  width: 36.h,
                  height: 36.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  sidebarItem.title?.value ?? '',
                  style: TextStyleHelper.instance.body12Bold.copyWith(
                      color: (sidebarItem.isSelected?.value ?? false)
                          ? appTheme.blackCustom
                          : appTheme.colorFF8089),
                ),
              ],
            ),
          )),
    );
  }
}
