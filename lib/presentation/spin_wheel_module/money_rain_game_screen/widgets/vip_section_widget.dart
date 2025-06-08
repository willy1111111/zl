import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class VipSectionWidget extends StatelessWidget {
  const VipSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 0,
      bottom: 128.h,
      child: Container(
        padding: EdgeInsets.all(8.h),
        decoration: BoxDecoration(
          color: appTheme.color0E1900,
          border: Border.all(color: appTheme.colorFF5DA4),
          borderRadius: BorderRadius.circular(33.h),
        ),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVip7,
              width: 45.h,
              height: 50.h,
            ),
            SizedBox(height: 8.h),
            _buildSeparator(),
            SizedBox(height: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgGroup11853,
              width: 50.h,
              height: 50.h,
            ),
            SizedBox(height: 8.h),
            _buildSeparator(),
            SizedBox(height: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgGroup566,
              width: 50.h,
              height: 50.h,
            ),
            SizedBox(height: 8.h),
            _buildSeparator(),
            SizedBox(height: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgGroup827,
              width: 50.h,
              height: 52.h,
            ),
            SizedBox(height: 8.h),
            _buildSeparator(),
            SizedBox(height: 8.h),
            Container(
              padding: EdgeInsets.all(4.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF2542,
                shape: BoxShape.circle,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup11868,
                width: 50.h,
                height: 50.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSeparator() {
    return Container(
      width: 50.h,
      height: 4.h,
      color: appTheme.colorFF2548,
    );
  }
}
