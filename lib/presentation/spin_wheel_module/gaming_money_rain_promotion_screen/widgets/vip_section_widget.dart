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
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF8888,
              blurRadius: 4.h,
              offset: Offset(0, 4.h),
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(vertical: 8.h),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVip7,
              height: 50.h,
              width: 45.h,
            ),
            SizedBox(height: 8.h),
            _buildVipItem(ImageConstant.imgGroup11853),
            _buildVipItem(ImageConstant.imgGroup566),
            _buildVipItem(ImageConstant.imgGroup827),
            _buildVipSpecialItem(),
          ],
        ),
      ),
    );
  }

  Widget _buildVipItem(String imagePath) {
    return Column(
      children: [
        Container(
          width: 50.h,
          height: 1.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF2548,
            boxShadow: [
              BoxShadow(
                color: appTheme.colorFF8888,
                blurRadius: 0,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        CustomImageView(
          imagePath: imagePath,
          height: 50.h,
          width: 50.h,
        ),
        SizedBox(height: 4.h),
      ],
    );
  }

  Widget _buildVipSpecialItem() {
    return Column(
      children: [
        Container(
          width: 50.h,
          height: 1.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF2548,
            boxShadow: [
              BoxShadow(
                color: appTheme.colorFF8888,
                blurRadius: 0,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        Container(
          width: 56.h,
          height: 56.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF2542,
            borderRadius: BorderRadius.circular(28.h),
          ),
          child: Center(
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup11868,
              height: 50.h,
              width: 50.h,
            ),
          ),
        ),
      ],
    );
  }
}
