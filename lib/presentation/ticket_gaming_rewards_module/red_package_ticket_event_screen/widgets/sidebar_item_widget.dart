import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../models/sidebar_item_model.dart';

class SidebarItemWidget extends StatelessWidget {
  final SidebarItemModel sidebarItemModel;
  final bool isSelected;
  final VoidCallback? onTap;

  SidebarItemWidget({
    Key? key,
    required this.sidebarItemModel,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 66.h,
        height: 56.h,
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
            bottomRight: Radius.circular(8.h),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: sidebarItemModel.iconPath?.value ?? '',
              height: 32.h,
              width: 32.h,
            ),
            SizedBox(height: 4.h),
            Text(
              sidebarItemModel.label?.value ?? '',
              style: TextStyleHelper.instance.body12Bold.copyWith(
                  color: isSelected ? Color(0xFF232B32) : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
