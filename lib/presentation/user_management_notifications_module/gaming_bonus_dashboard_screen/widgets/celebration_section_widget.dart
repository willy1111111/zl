import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/gaming_bonus_dashboard_controller.dart';

class CelebrationSectionWidget extends StatelessWidget {
  CelebrationSectionWidget({Key? key}) : super(key: key);

  var controller = Get.find<GamingBonusDashboardController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 371.h,
      margin: EdgeInsets.only(top: 191.h),
      child: Stack(
        children: [
          // Background celebration images
          CustomImageView(
            imagePath: ImageConstant.imgF1,
            height: 371.h,
            width: 375.h,
            alignment: Alignment.topLeft,
          ),

          // Positioned decorative elements
          CustomImageView(
            imagePath: ImageConstant.img401,
            height: 81.h,
            width: 81.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 39.h, left: 25.h),
          ),

          CustomImageView(
            imagePath: ImageConstant.img403,
            height: 61.h,
            width: 61.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 55.h, left: 2.h),
          ),

          CustomImageView(
            imagePath: ImageConstant.imgImage58,
            height: 114.h,
            width: 341.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 98.h, left: 58.h),
          ),

          CustomImageView(
            imagePath: ImageConstant.imgImage278,
            height: 70.h,
            width: 202.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 137.h, left: 9.h),
          ),

          CustomImageView(
            imagePath: ImageConstant.img13,
            height: 59.h,
            width: 79.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 45.h, right: 75.h),
          ),

          CustomImageView(
            imagePath: ImageConstant.img1176x204,
            height: 176.h,
            width: 204.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 8.h),
          ),

          // Various coin decorations
          _buildCoinDecorations(),

          // Main text content
          _buildMainTextContent(),
        ],
      ),
    );
  }

  Widget _buildCoinDecorations() {
    return Stack(
      children: [
        CustomImageView(
          imagePath: ImageConstant.img920,
          height: 24.h,
          width: 28.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 183.h, left: 112.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img932,
          height: 19.h,
          width: 22.h,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 118.h, right: 47.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img923,
          height: 27.h,
          width: 27.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 107.h, left: 28.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img923,
          height: 30.h,
          width: 30.h,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 103.h, right: 27.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup13080,
          height: 75.h,
          width: 166.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 102.h, left: 29.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img933,
          height: 26.h,
          width: 24.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 134.h, left: 8.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage275,
          height: 48.h,
          width: 46.h,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 160.h, right: 53.h),
        ),
      ],
    );
  }

  Widget _buildMainTextContent() {
    return Positioned(
      top: 37.h,
      left: 0,
      right: 0,
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup13009,
            height: 37.h,
            width: 125.h,
            margin: EdgeInsets.only(top: 56.h),
          ),

          SizedBox(height: 16.h),

          // Total Text with Gradient
          Text(
            'Total',
            style: TextStyleHelper.instance.display40Black
                .copyWith(letterSpacing: 3, height: 1.4),
          ),

          SizedBox(height: 8.h),

          // Bonus Claimed Text
          Text(
            'Bonus Claimed',
            style: TextStyleHelper.instance.headline28Black
                .copyWith(height: 0.6, shadows: [
              Shadow(
                offset: Offset(0, 3),
                color: appTheme.colorFF0000,
              ),
            ]),
          ),

          SizedBox(height: 16.h),

          // Amount Text
          Obx(() => Text(
                controller.totalBonusAmount.value,
                style: TextStyleHelper.instance.headline24Black.copyWith(
                    color: appTheme.colorFF2345,
                    height: 0.75,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 1),
                        blurRadius: 2,
                        color: appTheme.colorFF2345,
                      ),
                    ]),
              )),
        ],
      ),
    );
  }
}
