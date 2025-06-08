import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/side_navigation_item_model.dart';

class SideNavigationItemWidget extends StatelessWidget {
  final SideNavigationItemModel sideNavigationItem;
  final VoidCallback? onTap;

  const SideNavigationItemWidget({
    Key? key,
    required this.sideNavigationItem,
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
              imagePath: sideNavigationItem.icon?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),
            Text(
              sideNavigationItem.title?.value ?? '',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
