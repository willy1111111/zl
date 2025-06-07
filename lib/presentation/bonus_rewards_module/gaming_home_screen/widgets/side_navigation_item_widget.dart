import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_image_view.dart';
import '../models/side_navigation_item_model.dart';

class SideNavigationItemWidget extends StatelessWidget {
  final SideNavigationItemModel navigationModel;
  final VoidCallback? onTap;

  SideNavigationItemWidget({
    Key? key,
    required this.navigationModel,
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
          gradient: navigationModel.isSelected?.value ?? false
              ? navigationModel.backgroundColor?.value
              : LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF363C41), Color(0xFF2B3035)],
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
              imagePath: navigationModel.iconPath?.value ?? '',
              height: 36.h,
              width: 36.h,
            ),
            SizedBox(height: 1.h),
            Text(
              navigationModel.title?.value ?? '',
              style: TextStyleHelper.instance.body12BoldArial.copyWith(
                  color: navigationModel.isSelected?.value ?? false
                      ? Color(0xFF232B32)
                      : appTheme.colorFF8089),
            ),
          ],
        ),
      ),
    );
  }
}
