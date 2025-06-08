import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_game_withdrawal_controller.dart';

class SpinGameWithdrawalScreen extends GetWidget<SpinGameWithdrawalController> {
  SpinGameWithdrawalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteCustom,
      body: SizedBox(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1137,
              height: 1132.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),

            // Dark Overlay
            Container(
              width: 375.h,
              height: 812.h,
              color: appTheme.blackCustom,
              child: Stack(
                children: [
                  // Main Content Card
                  Positioned(
                    left: 15.h,
                    top: 180.h,
                    child: Container(
                      width: 345.h,
                      height: 412.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF3f444b), Color(0xFF3f444b)],
                        ),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.h),
                          topRight: Radius.circular(20.h),
                          bottomLeft: Radius.circular(12.h),
                          bottomRight: Radius.circular(12.h),
                        ),
                      ),
                      child: Stack(
                        children: [
                          // Progress Bar Section
                          Positioned(
                            left: 10.h,
                            top: 27.h,
                            child: Container(
                              width: 325.h,
                              height: 17.h,
                              decoration: BoxDecoration(
                                color: appTheme.color7FA6AB,
                                borderRadius: BorderRadius.circular(8.h),
                              ),
                              child: Stack(
                                children: [
                                  // Progress Bar Fill
                                  Positioned(
                                    left: 0,
                                    top: 1.h,
                                    child: Container(
                                      width: 183.h,
                                      height: 14.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.centerLeft,
                                          end: Alignment.centerRight,
                                          colors: [
                                            Color(0xFFFF7F00),
                                            Color(0xFFFFE900)
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(7.h),
                                      ),
                                      child: Row(
                                        children: [
                                          CustomImageView(
                                            imagePath: ImageConstant
                                                .imgSubtractWhiteA700,
                                            width: 7.h,
                                            height: 183.h,
                                          ),
                                          _buildProgressSegments(),
                                        ],
                                      ),
                                    ),
                                  ),
                                  // Progress Percentage
                                  Positioned(
                                    right: 111.h,
                                    top: 0,
                                    child: Text(
                                      '70%',
                                      style: TextStyleHelper
                                          .instance.body12SemiBoldInter
                                          .copyWith(height: 1.25),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Main Money Display
                          Positioned(
                            left: 0,
                            top: 0,
                            child: Container(
                              width: 345.h,
                              height: 140.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.h),
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgF1140x345,
                                    width: 345.h,
                                    height: 140.h,
                                    fit: BoxFit.cover,
                                  ),

                                  // Overlay
                                  Positioned(
                                    left: 0,
                                    top: 62.h,
                                    child: Container(
                                      width: 345.h,
                                      height: 78.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF3f444b),
                                            Color(0xFF3f444b)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),

                                  // Money Stack Images
                                  Positioned(
                                    left: 130.h,
                                    top: 16.h,
                                    child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                                      width: 104.h,
                                      height: 104.h,
                                    ),
                                  ),
                                  Positioned(
                                    left: 111.h,
                                    top: 30.h,
                                    child: CustomImageView(
                                      imagePath: ImageConstant
                                          .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                                      width: 104.h,
                                      height: 104.h,
                                    ),
                                  ),

                                  // Amount Text
                                  Positioned(
                                    left: 131.h,
                                    top: 117.h,
                                    child: Text(
                                      '₱100',
                                      style: TextStyleHelper
                                          .instance.headline32BlackArial
                                          .copyWith(height: 1.44),
                                    ),
                                  ),
                                  Positioned(
                                    left: 129.h,
                                    top: 160.h,
                                    child: Text(
                                      'withdraw',
                                      style: TextStyleHelper
                                          .instance.title20BoldArial
                                          .copyWith(height: 1.15),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Progress Text
                          Positioned(
                            left: 13.h,
                            top: 230.h,
                            child: Text(
                              'only need to invite 3 more people to withdraw ₱100',
                              style: TextStyleHelper.instance.body14RegularArial
                                  .copyWith(height: 1.21),
                            ),
                          ),

                          // Invite Button
                          Positioned(
                            left: 10.h,
                            top: 275.h,
                            child: CustomGradientButton(
                              text: 'Invite 3 friends to GET ₱1000',
                              onPressed: () => controller.onInviteFriends(),
                              width: 325.h,
                              height: 40.h,
                              borderRadius: 20.h,
                              fontSize: 14.fSize,
                              textColor: appTheme.whiteCustom,
                              gradientColors: [
                                Color(0xFF76CD00),
                                Color(0xFF478A03)
                              ],
                            ),
                          ),

                          // Event Timer Section
                          Positioned(
                            left: 121.h,
                            top: 325.h,
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage,
                                  width: 28.h,
                                  height: 28.h,
                                ),
                                SizedBox(width: 8.h),
                                Text(
                                  'Event ends',
                                  style: TextStyleHelper
                                      .instance.body14RegularArial
                                      .copyWith(
                                          color: appTheme.whiteCustom,
                                          height: 1.21),
                                ),
                              ],
                            ),
                          ),

                          // Countdown Timer
                          Positioned(
                            left: 77.h,
                            top: 353.h,
                            child: Row(
                              children: [
                                _buildTimerUnit('02', 'Day'),
                                SizedBox(width: 8.h),
                                Text(
                                  ':',
                                  style: TextStyleHelper
                                      .instance.title18BlackArial
                                      .copyWith(height: 1.44),
                                ),
                                SizedBox(width: 8.h),
                                _buildTimerUnit('01', 'hr'),
                                SizedBox(width: 8.h),
                                Text(
                                  ':',
                                  style: TextStyleHelper
                                      .instance.title18BlackArial
                                      .copyWith(height: 1.44),
                                ),
                                SizedBox(width: 8.h),
                                _buildTimerUnit('21', 'min'),
                                SizedBox(width: 8.h),
                                Text(
                                  ':',
                                  style: TextStyleHelper
                                      .instance.title18BlackArial
                                      .copyWith(height: 1.44),
                                ),
                                SizedBox(width: 8.h),
                                _buildTimerUnit('06', 'sec'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Close Button
                  Positioned(
                    left: 172.h,
                    top: 602.h,
                    child: GestureDetector(
                      onTap: () => controller.onClose(),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup848,
                        width: 32.h,
                        height: 32.h,
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

  Widget _buildProgressSegments() {
    return Row(
      children: List.generate(12, (index) {
        return Positioned(
          left: (6 + (index * 14)).h,
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle1248,
            width: 14.h,
            height: 12.h,
          ),
        );
      }),
    );
  }

  Widget _buildTimerUnit(String value, String label) {
    return Container(
      width: 36.h,
      height: 36.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup14176,
            width: 36.h,
            height: 36.h,
          ),
          Center(
            child: Text(
              value,
              style: TextStyleHelper.instance.body14BlackSFProText
                  .copyWith(height: 1.21),
            ),
          ),
          Positioned(
            left: label == 'Day'
                ? 8.h
                : (label == 'hr' ? 12.h : (label == 'min' ? 10.h : 11.h)),
            bottom: 0,
            child: Text(
              label,
              style: TextStyleHelper.instance.label9BoldSFProText
                  .copyWith(height: 1.22),
            ),
          ),
        ],
      ),
    );
  }
}
