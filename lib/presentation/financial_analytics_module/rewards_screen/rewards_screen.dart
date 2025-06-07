import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/rewards_controller.dart';

class RewardsScreen extends GetWidget<RewardsController> {
  const RewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF2529,
      body: Stack(
        children: [
          // Background Image
          CustomImageView(
            imagePath: ImageConstant.imgImage1063,
            height: 964.h,
            width: 375.h,
            fit: BoxFit.cover,
          ),

          // Black Overlay
          Container(
            height: 925.h,
            width: 375.h,
            color: appTheme.blackCustom.withAlpha(204),
          ),

          // Rewards Modal (Bottom Sheet)
          Positioned(
            top: 132.h,
            left: 0,
            child: Container(
              width: 375.h,
              height: 680.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF292F,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.h),
                  topRight: Radius.circular(22.h),
                ),
              ),
              child: Column(
                children: [
                  _buildModalHeader(),
                  _buildChartIllustration(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModalHeader() {
    return Container(
      width: 375.h,
      height: 64.h,
      child: Stack(
        children: [
          // White Line Separator
          Positioned(
            top: 48.h,
            left: 0,
            child: Container(
              width: 375.h,
              height: 1.h,
              color: appTheme.whiteCustom,
            ),
          ),

          // Title
          Positioned(
            top: 16.h,
            left: 141.h,
            child: Text(
              'My Rewards',
              style: TextStyleHelper.instance.title16BoldArial,
            ),
          ),

          // Close Button
          Positioned(
            top: 12.h,
            right: 11.h,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup2131329954,
                height: 28.h,
                width: 28.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChartIllustration() {
    return Container(
      margin: EdgeInsets.only(top: 75.h),
      child: Column(
        children: [
          // Chart Container
          Container(
            height: 280.h,
            width: 375.h,
            child: Stack(
              children: [
                // Main Chart Vector
                Positioned(
                  top: 97.h,
                  left: 109.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector1,
                    height: 45.h,
                    width: 138.h,
                  ),
                ),

                // Chart Bars
                Positioned(
                  top: 117.h,
                  left: 241.h,
                  child: Container(
                    width: 15.h,
                    height: 104.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF4B555C), Color(0xFF4B555C)],
                      ),
                      borderRadius: BorderRadius.circular(7.h),
                    ),
                  ),
                ),

                Positioned(
                  top: 142.h,
                  left: 208.h,
                  child: Container(
                    width: 16.h,
                    height: 79.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF4B555C), Color(0xFF4B555C)],
                      ),
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                  ),
                ),

                Positioned(
                  top: 127.h,
                  left: 174.h,
                  child: Container(
                    width: 15.h,
                    height: 94.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF4B555C), Color(0xFF4B555C)],
                      ),
                      borderRadius: BorderRadius.circular(7.h),
                    ),
                  ),
                ),

                Positioned(
                  top: 147.h,
                  left: 142.h,
                  child: Container(
                    width: 15.h,
                    height: 74.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF4B555C), Color(0xFF4B555C)],
                      ),
                      borderRadius: BorderRadius.circular(7.h),
                    ),
                  ),
                ),

                Positioned(
                  top: 161.h,
                  left: 109.h,
                  child: Container(
                    width: 15.h,
                    height: 59.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF4B555C), Color(0xFF4B555C)],
                      ),
                      borderRadius: BorderRadius.circular(7.h),
                    ),
                  ),
                ),

                // Chart Elements
                Positioned(
                  top: 191.h,
                  left: 149.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup271,
                    height: 46.h,
                    width: 75.h,
                  ),
                ),

                // Additional Chart Vectors
                Positioned(
                  top: 160.h,
                  left: 180.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector2,
                    height: 32.h,
                    width: 24.h,
                  ),
                ),

                Positioned(
                  top: 147.h,
                  left: 204.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPolygon3,
                    height: 15.h,
                    width: 17.h,
                  ),
                ),

                // Chart Base Ellipse
                Positioned(
                  top: 207.h,
                  left: 68.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEllipse27,
                    height: 73.h,
                    width: 240.h,
                  ),
                ),

                // Small Ellipse
                Positioned(
                  top: 239.h,
                  left: 142.h,
                  child: Container(
                    width: 89.h,
                    height: 16.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF171C,
                      borderRadius: BorderRadius.circular(44.h),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // No Data Text
          Container(
            margin: EdgeInsets.only(top: 78.h),
            child: Text(
              'No data',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
      ),
    );
  }
}
