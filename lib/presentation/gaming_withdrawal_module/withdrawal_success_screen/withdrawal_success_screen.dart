import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/withdrawal_success_controller.dart';

class WithdrawalSuccessScreen extends GetWidget<WithdrawalSuccessController> {
  const WithdrawalSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1137,
              height: 1132.h,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),

            // Main Black Overlay
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: appTheme.blackCustom,
              child: Stack(
                children: [
                  // Main Content Card
                  Positioned(
                    left: 15.h,
                    top: 125.h,
                    child: Container(
                      width: 345.h,
                      height: 520.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF3F444B), Color(0xFF3F444B)],
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
                          // Top Section with Gradient and Images
                          Positioned(
                            top: 0,
                            left: 0,
                            child: Container(
                              width: 345.h,
                              height: 140.h,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color(0xFF30B824),
                                    Color(0xFF062730)
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12.h),
                                  topRight: Radius.circular(12.h),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgF1,
                                    width: 345.h,
                                    height: 140.h,
                                    fit: BoxFit.cover,
                                    radius: BorderRadius.only(
                                      topLeft: Radius.circular(12.h),
                                      topRight: Radius.circular(12.h),
                                    ),
                                  ),
                                  Positioned(
                                    top: 62.h,
                                    left: 0,
                                    child: Container(
                                      width: 345.h,
                                      height: 78.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFF3F444B),
                                            Color(0xFF3F444B)
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Coin and Treasure Images
                          Positioned(
                            top: 55.h,
                            left: 111.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgTdr22,
                              width: 84.h,
                              height: 79.h,
                            ),
                          ),
                          Positioned(
                            top: 22.h,
                            left: 121.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage1100,
                              width: 121.h,
                              height: 121.h,
                            ),
                          ),
                          Positioned(
                            top: 86.h,
                            left: 192.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage1104,
                              width: 41.h,
                              height: 39.h,
                            ),
                          ),

                          // Main Title
                          Positioned(
                            top: 122.h,
                            left: 53.h,
                            child: SizedBox(
                              width: 239.h,
                              child: Text(
                                'Get ₱500 for free',
                                style: TextStyleHelper.instance.headline26Black
                                    .copyWith(height: 1.42),
                              ),
                            ),
                          ),

                          // Quick Cash Withdrawal Text
                          Positioned(
                            top: 167.h,
                            left: 107.h,
                            child: Text(
                              'Quick cash withdrawl',
                              style: TextStyleHelper.instance.body14Regular
                                  .copyWith(
                                      color: appTheme.whiteCustom,
                                      height: 1.21),
                            ),
                          ),

                          // Amount Display
                          Positioned(
                            top: 177.h,
                            left: 114.h,
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgGroup12734,
                                  width: 40.h,
                                  height: 38.h,
                                ),
                                SizedBox(width: 8.h),
                                Text(
                                  '₱500.00',
                                  style: TextStyleHelper.instance.display40Black
                                      .copyWith(height: 1.43),
                                ),
                              ],
                            ),
                          ),

                          // Withdrawal Details
                          Positioned(
                            top: 241.h,
                            left: 19.h,
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 308.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Withdrawal account：',
                                        style: TextStyleHelper
                                            .instance.body14Regular
                                            .copyWith(height: 1.21),
                                      ),
                                      Text(
                                        '9409303930',
                                        style: TextStyleHelper
                                            .instance.body14Regular
                                            .copyWith(height: 1.21),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 22.h),
                                SizedBox(
                                  width: 306.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Withdrawal method：',
                                        style: TextStyleHelper
                                            .instance.body14Regular
                                            .copyWith(height: 1.21),
                                      ),
                                      Text(
                                        'Account wallet',
                                        style: TextStyleHelper
                                            .instance.body14Regular
                                            .copyWith(height: 1.21),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Success Confirmation Section
                          Positioned(
                            top: 290.h,
                            left: 13.h,
                            child: Container(
                              width: 319.h,
                              height: 125.h,
                              decoration: BoxDecoration(
                                color: appTheme.colorFF3032,
                                borderRadius: BorderRadius.circular(12.h),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0,
                                    left: 1.h,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.img3,
                                      width: 316.h,
                                      height: 125.h,
                                    ),
                                  ),

                                  // Success Checkmark
                                  Positioned(
                                    top: 13.h,
                                    left: 126.h,
                                    child: Container(
                                      width: 66.h,
                                      height: 66.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.colorFF85D4,
                                        borderRadius:
                                            BorderRadius.circular(33.h),
                                      ),
                                      child: Center(
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgVectorWhiteA700,
                                          width: 32.h,
                                          height: 23.h,
                                        ),
                                      ),
                                    ),
                                  ),

                                  // Success Message
                                  Positioned(
                                    top: 91.h,
                                    left: 60.h,
                                    child: SizedBox(
                                      width: 198.h,
                                      child: Text(
                                        'Withdrawal Request Completed',
                                        textAlign: TextAlign.center,
                                        style: TextStyleHelper
                                            .instance.body14Regular
                                            .copyWith(height: 1.21),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Withdraw Button
                          Positioned(
                            top: 455.h,
                            left: 10.h,
                            child: GestureDetector(
                              onTap: () => controller.onWithdrawButtonPressed(),
                              child: Container(
                                width: 325.h,
                                height: 40.h,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Color(0xFFFFBF00),
                                      Color(0xFFFF7A00)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(20.h),
                                ),
                                child: Center(
                                  child: Text(
                                    'Withdraw money to account wallet',
                                    style: TextStyleHelper.instance.body14Bold
                                        .copyWith(height: 1.21),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Close Button
                  Positioned(
                    top: 655.h,
                    left: 172.h,
                    child: GestureDetector(
                      onTap: () => controller.onCloseButtonPressed(),
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
}
