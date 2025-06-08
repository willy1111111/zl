import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class VipPanelWidget extends StatelessWidget {
  VipPanelWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 67.h,
      height: 369.h,
      decoration: BoxDecoration(
        color: appTheme.color800E19,
        border: Border.all(color: appTheme.colorFF5DA4),
        borderRadius: BorderRadius.circular(33.h),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 8.h,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 11.h,
            left: 11.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVip7,
              height: 50.h,
              width: 45.h,
            ),
          ),
          Positioned(
            top: 82.h,
            left: 9.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup11853,
              height: 50.h,
              width: 50.h,
            ),
          ),
          Positioned(
            top: 157.h,
            left: 9.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup566,
              height: 50.h,
              width: 50.h,
            ),
          ),
          Positioned(
            top: 230.h,
            left: 9.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup827,
              height: 52.h,
              width: 50.h,
            ),
          ),
          Positioned(
            bottom: 9.h,
            left: 6.h,
            child: Container(
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
          ),
          _buildSeparatorLine(70.h),
          _buildSeparatorLine(144.h),
          _buildSeparatorLine(219.h),
          _buildSeparatorLine(294.h),
        ],
      ),
    );
  }

  Widget _buildSeparatorLine(double top) {
    return Positioned(
      top: top,
      left: 9.h,
      child: Container(
        width: 50.h,
        height: 1.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2548,
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 2.h,
            ),
          ],
        ),
      ),
    );
  }
}
