import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_jackpot_card.dart';
import './controller/agent_jackpot_history_controller.dart';

class AgentJackpotHistoryScreen
    extends GetWidget<AgentJackpotHistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1063,
              width: 375.h,
              height: 964.h,
              fit: BoxFit.cover,
            ),

            // Modal Overlay
            Container(
              width: 375.h,
              height: 812.h,
              color: appTheme.color990000,
              child: Stack(
                children: [
                  // History Modal Bottom Sheet
                  Positioned(
                    top: 167.h,
                    left: 0,
                    child: Container(
                      width: 375.h,
                      height: 645.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF292F,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(22.h),
                          topRight: Radius.circular(22.h),
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Close Button
                          Positioned(
                            top: 12.h,
                            right: 11.h,
                            child: GestureDetector(
                              onTap: () => Get.back(),
                              child: Container(
                                width: 28.h,
                                height: 28.h,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgGroup2131329954,
                                  width: 28.h,
                                  height: 28.h,
                                ),
                              ),
                            ),
                          ),

                          // Title
                          Positioned(
                            top: 11.h,
                            left: 160.h,
                            child: Text(
                              'History',
                              style: TextStyleHelper.instance.title16BoldArial,
                            ),
                          ),

                          // Separator Line
                          Positioned(
                            top: 48.h,
                            left: 0,
                            child: Container(
                              width: 375.h,
                              height: 1.h,
                              color: appTheme.whiteCustom,
                            ),
                          ),

                          // Agent Jackpot Card
                          Positioned(
                            top: 65.h,
                            left: 15.h,
                            child: CustomJackpotCard(
                              title: 'AGENT JACKPOT',
                              amount: '₱15,666,523.70',
                              titleColor: appTheme.colorFFFFC8,
                              leftIconPath: ImageConstant.imgGrasscpirlbv1,
                              rightIconPath: ImageConstant.imgGrasscpirlbv2,
                              decorativeImagePath: ImageConstant.imgEllipse624,
                              backgroundColor: appTheme.colorFF2528,
                              borderRadius: 10.h,
                              width: 345.h,
                              height: 79.h,
                            ),
                          ),

                          // Date Range
                          Positioned(
                            top: 152.h,
                            left: 15.h,
                            child: Text(
                              'Date:2024.03.09-2024.03.116',
                              style: TextStyleHelper.instance.body12Arial
                                  .copyWith(color: appTheme.whiteCustom),
                            ),
                          ),

                          // Chart Background
                          Positioned(
                            top: 219.h,
                            left: 68.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEllipse27,
                              width: 240.h,
                              height: 73.h,
                            ),
                          ),

                          // Chart Bars
                          _buildChartBars(),

                          // Chart Elements
                          Positioned(
                            top: 341.h,
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

                          // Chart Vectors and Elements
                          _buildChartElements(),

                          // No Data Text
                          Positioned(
                            top: 387.h,
                            left: 161.h,
                            child: Text(
                              'No data',
                              style: TextStyleHelper.instance.body14BoldArial
                                  .copyWith(color: appTheme.colorFF8089),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildChartBars() {
    return Stack(
      children: [
        // Chart Bar 1
        Positioned(
          top: 219.h,
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

        // Chart Bar 2
        Positioned(
          top: 244.h,
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

        // Chart Bar 3
        Positioned(
          top: 229.h,
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

        // Chart Bar 4
        Positioned(
          top: 249.h,
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

        // Chart Bar 5
        Positioned(
          top: 263.h,
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
      ],
    );
  }

  Widget _buildChartElements() {
    return Stack(
      children: [
        // Chart Vector 1
        Positioned(
          top: 199.h,
          left: 109.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector1,
            width: 138.h,
            height: 45.h,
          ),
        ),

        // Chart Group
        Positioned(
          top: 293.h,
          left: 149.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup271,
            width: 75.h,
            height: 46.h,
          ),
        ),

        // Chart Vector 2
        Positioned(
          top: 262.h,
          left: 180.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector2,
            width: 24.h,
            height: 32.h,
          ),
        ),

        // Chart Polygon
        Positioned(
          top: 249.h,
          left: 204.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgPolygon3,
            width: 17.h,
            height: 15.h,
          ),
        ),
      ],
    );
  }
}
