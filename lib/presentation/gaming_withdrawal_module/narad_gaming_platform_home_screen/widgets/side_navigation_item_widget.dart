import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/side_navigation_item_model.dart';

class SideNavigationItemWidget extends StatelessWidget {
  final SideNavigationItemModel navigationItem;
  final VoidCallback? onTap;

  SideNavigationItemWidget({
    Key? key,
    required this.navigationItem,
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
            colors: [Color(0xFF363C41), Color(0xFF2B3035)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8.h),
            bottomRight: Radius.circular(8.h),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: navigationItem.icon?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),
            SizedBox(height: 4.h),
            Text(
              navigationItem.title?.value ?? '',
              style: TextStyleHelper.instance.body12Bold2.copyWith(
                  color: (navigationItem.isSelected?.value ?? false)
                      ? Color(0xFF85D420)
                      : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
