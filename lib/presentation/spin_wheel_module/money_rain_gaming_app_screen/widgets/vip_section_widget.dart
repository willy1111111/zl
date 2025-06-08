import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class VipSectionWidget extends StatelessWidget {
  final VoidCallback? onVipTap;

  const VipSectionWidget({
    Key? key,
    this.onVipTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onVipTap,
      child: Container(
        width: 67.h,
        height: 369.h,
        decoration: BoxDecoration(
          color: appTheme.color0E1900,
          border: Border.all(color: appTheme.colorFF5DA4),
          borderRadius: BorderRadius.circular(33.h),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: 12.h),
            CustomImageView(
              imagePath: ImageConstant.imgVip7,
              width: 45.h,
              height: 50.h,
            ),
            _buildDivider(),
            CustomImageView(
              imagePath: ImageConstant.imgGroup11853,
              width: 50.h,
              height: 50.h,
            ),
            _buildDivider(),
            CustomImageView(
              imagePath: ImageConstant.imgGroup566,
              width: 50.h,
              height: 50.h,
            ),
            _buildDivider(),
            CustomImageView(
              imagePath: ImageConstant.imgGroup827,
              width: 50.h,
              height: 52.h,
            ),
            _buildDivider(),
            Container(
              width: 56.h,
              height: 56.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2542,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup11868,
                  width: 50.h,
                  height: 50.h,
                ),
              ),
            ),
            SizedBox(height: 12.h),
          ],
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      width: 50.h,
      height: 1.h,
      color: appTheme.colorFF2548,
    );
  }
}
