import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/navigation_item_model.dart';

class SideNavigationItemWidget extends StatelessWidget {
  final NavigationItemModel navigationItem;
  final bool isSelected;
  final VoidCallback? onTap;

  SideNavigationItemWidget({
    Key? key,
    required this.navigationItem,
    required this.isSelected,
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
          gradient: isSelected
              ? LinearGradient(
                  colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
                )
              : LinearGradient(
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
              imagePath: navigationItem.iconPath?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),
            SizedBox(height: 4.h),
            Text(
              navigationItem.label?.value ?? '',
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: isSelected ? Color(0xFF232B32) : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
