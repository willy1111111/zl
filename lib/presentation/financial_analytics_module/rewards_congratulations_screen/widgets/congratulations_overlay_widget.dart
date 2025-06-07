import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';

class CongratulationsOverlayWidget extends StatelessWidget {
  final String amount;
  final VoidCallback onConfirm;

  CongratulationsOverlayWidget({
    Key? key,
    required this.amount,
    required this.onConfirm,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.h,
      height: 812.h,
      color: appTheme.blackCustom.withAlpha(191),
      child: Stack(
        children: [
          // Congratulations background
          Positioned(
            top: 151.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .imgA7391d138e9d5dcd059d6c79dea79e949b2b00f7f1ec9zm7swt1,
              height: 362.h,
              width: 375.h,
            ),
          ),

          // Main congratulations card
          Positioned(
            top: 210.h,
            child: Container(
              width: 375.h,
              height: 201.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.9, 0),
                  end: Alignment(0, 0),
                  colors: [Color(0xFFC92A37), Color(0xFFF2B61A)],
                ),
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12532,
                    height: 201.h,
                    width: 375.h,
                  ),

                  Positioned(
                    top: 35.h,
                    left: 66.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRectangle694,
                      height: 120.h,
                      width: 243.h,
                    ),
                  ),

                  // Money stack container
                  Positioned(
                    top: 16.h,
                    left: 138.h,
                    child: Container(
                      width: 100.h,
                      height: 100.h,
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: appTheme.whiteCustom, width: 2.h),
                        borderRadius: BorderRadius.circular(12.h),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 2.h),
                            blurRadius: 3.h,
                            color: appTheme.color99FFF3,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 2.h,
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21,
                              height: 97.h,
                              width: 100.h,
                            ),
                          ),
                          Positioned(
                            top: 1.h,
                            left: 18.h,
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                              height: 79.h,
                              width: 79.h,
                            ),
                          ),
                          Positioned(
                            top: 15.h,
                            left: 2.h,
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                              height: 79.h,
                              width: 79.h,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Amount text
                  Positioned(
                    top: 115.h,
                    left: 143.h,
                    child: Text(
                      amount,
                      style: TextStyleHelper.instance.headline28Bold
                          .copyWith(height: 1.18),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Congratulations text
          Positioned(
            top: 146.h,
            left: 72.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgCongratulations,
              height: 32.h,
              width: 230.h,
            ),
          ),

          // Confirm button
          Positioned(
            top: 365.h,
            left: 83.h,
            child: GestureDetector(
              onTap: onConfirm,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img234r1,
                    height: 33.h,
                    width: 210.h,
                  ),
                  Positioned(
                    top: 6.h,
                    left: 74.h,
                    child: Text(
                      'Confirm',
                      style: TextStyleHelper.instance.title16Bold
                          .copyWith(color: appTheme.colorFFA600, height: 1.19),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Decorative elements
          Positioned(
            top: 396.h,
            left: 41.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1273,
              height: 49.h,
              width: 11.h,
            ),
          ),

          Positioned(
            top: 396.h,
            left: 320.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1273,
              height: 49.h,
              width: 11.h,
            ),
          ),

          // Privileges section
          Positioned(
            top: 431.h,
            left: 15.h,
            child: Container(
              width: 345.h,
              height: 170.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.9, 0),
                  end: Alignment(0, 0),
                  colors: [Color(0xFFC92A37), Color(0xFFF6BC28)],
                ),
                borderRadius: BorderRadius.circular(8.h),
              ),
              child: Stack(
                children: [
                  // Dark overlay
                  Positioned(
                    top: 46.h,
                    left: 10.h,
                    child: Container(
                      width: 325.h,
                      height: 108.h,
                      decoration: BoxDecoration(
                        color: appTheme.color8C2405,
                        borderRadius: BorderRadius.circular(8.h),
                      ),
                    ),
                  ),

                  // Privileges title
                  Positioned(
                    top: 17.h,
                    left: 101.h,
                    child: Text(
                      'Activate privileges',
                      style: TextStyleHelper.instance.title16Bold
                          .copyWith(height: 1.19),
                    ),
                  ),

                  // Privileges text
                  Positioned(
                    top: 57.h,
                    left: 20.h,
                    child: Container(
                      width: 292.h,
                      child: Text(
                        '1.Congratulations on activating the [Recharge Promotion]you can enjoy up to 30% bonus.\n2.Congratulations on activating the [Newbie RewardPrivilege], you can receive up to P1446 bonus',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(height: 1.14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
