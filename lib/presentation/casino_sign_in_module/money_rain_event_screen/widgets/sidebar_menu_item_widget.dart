import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sidebar_menu_item_model.dart';

class SidebarMenuItemWidget extends StatelessWidget {
  final SidebarMenuItemModel sidebarItem;
  final VoidCallback? onTap;

  SidebarMenuItemWidget({
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
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: (sidebarItem.isActive?.value == true)
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
              imagePath: sidebarItem.imagePath?.value ??
                  '', // Modified: Use value property for Rx<String>
              width: 36.h,
              height: (sidebarItem.title?.value == 'Hot') ? 30.h : 36.h,
            ),
            SizedBox(height: (sidebarItem.title?.value == 'Hot') ? 6.h : 3.h),
            Text(
              sidebarItem.title?.value ??
                  '', // Modified: Use value property for Rx<String>
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: (sidebarItem.isActive?.value == true)
                      ? Color(0xFF25282D)
                      : appTheme.colorFF8089,
                  height: 1.17),
            ),
          ],
        ),
      ),
    );
  }
}
