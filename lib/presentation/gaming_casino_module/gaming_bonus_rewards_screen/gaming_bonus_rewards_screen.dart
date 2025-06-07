import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/gaming_bonus_rewards_controller.dart';
import './widgets/bonus_card_widget.dart';

class GamingBonusRewardsScreen extends GetWidget<GamingBonusRewardsController> {
  GamingBonusRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            // Background Image
            Positioned(
              top: 0.h,
              left: 17.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage1061,
                width: 342.h,
                height: 1028.h,
                fit: BoxFit.cover,
              ),
            ),

            // Main Content Frame
            Container(
              width: double.infinity,
              height: 957.h,
              color: appTheme.blackCustom,
              child: Stack(
                children: [
                  // Decorative Background Images
                  Positioned(
                    top: 83.h,
                    left: 2.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img323x370,
                      width: 370.h,
                      height: 323.h,
                    ),
                  ),
                  Positioned(
                    top: 302.h,
                    left: 0.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img362x363,
                      width: 363.h,
                      height: 362.h,
                    ),
                  ),
                  Positioned(
                    top: 85.h,
                    left: 0.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img362x375,
                      width: 375.h,
                      height: 362.h,
                    ),
                  ),
                  Positioned(
                    top: 98.h,
                    left: 38.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img203x313,
                      width: 313.h,
                      height: 203.h,
                    ),
                  ),
                  Positioned(
                    top: 387.h,
                    left: 0.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img393x375,
                      width: 375.h,
                      height: 393.h,
                    ),
                  ),

                  // Close Button
                  Positioned(
                    top: 664.h,
                    left: 172.h,
                    child: GestureDetector(
                      onTap: () => controller.onClosePressed(),
                      child: Container(
                        width: 32.h,
                        height: 32.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgGroupGray900,
                          width: 32.h,
                          height: 32.h,
                        ),
                      ),
                    ),
                  ),

                  // Main Bonus Container
                  Positioned(
                    top: 233.h,
                    left: 18.h,
                    child: Container(
                      width: 341.h,
                      height: 373.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFB1E173), Color(0xFFDCF8B9)],
                        ),
                        borderRadius: BorderRadius.circular(15.h),
                      ),
                      child: Stack(
                        children: [
                          // Decorative Images
                          Positioned(
                            top: 22.h,
                            left: -5.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.img363x346,
                              width: 346.h,
                              height: 363.h,
                            ),
                          ),
                          Positioned(
                            top: 23.h,
                            left: 0.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.img350x326,
                              width: 326.h,
                              height: 350.h,
                            ),
                          ),

                          // Header Section
                          Positioned(
                            top: 0.h,
                            left: 0.h,
                            child: Container(
                              width: 341.h,
                              height: 44.h,
                              decoration: BoxDecoration(
                                color: appTheme.colorFF85D4,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(15.h),
                                  topRight: Radius.circular(15.h),
                                ),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 0.h,
                                    left: 0.h,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGezi,
                                      width: 173.h,
                                      height: 44.h,
                                    ),
                                  ),
                                  Positioned(
                                    top: 0.h,
                                    right: 0.h,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGezi44x168,
                                      width: 168.h,
                                      height: 44.h,
                                    ),
                                  ),
                                  Center(
                                    child: ShaderMask(
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFFFFEE7F),
                                          Color(0xFFEEAD3C)
                                        ],
                                      ).createShader(bounds),
                                      child: Text(
                                        'অভিনন্দন',
                                        style: TextStyleHelper
                                            .instance.headline30Bold
                                            .copyWith(height: 0.8, shadows: [
                                          Shadow(
                                            offset: Offset(0, 4.h),
                                            blurRadius: 4.h,
                                            color: appTheme.blackCustom,
                                          ),
                                        ]),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Celebration Icon
                          Positioned(
                            top: -68.h,
                            left: 130.h,
                            child: Container(
                              width: 80.h,
                              height: 77.h,
                              child: CustomImageView(
                                imagePath: ImageConstant.img202405201132181,
                                width: 80.h,
                                height: 77.h,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          // Bonus Cards Container
                          Positioned(
                            top: 66.h,
                            left: 17.h,
                            child: Container(
                              width: 307.h,
                              child: Obx(() => Column(
                                    children: List.generate(
                                      controller.bonusCards.length,
                                      (index) => Padding(
                                        padding: EdgeInsets.only(bottom: 16.h),
                                        child: BonusCardWidget(
                                          bonusCard:
                                              controller.bonusCards[index],
                                          onClaimPressed: () =>
                                              controller.onClaimPressed(index),
                                        ),
                                      ),
                                    ),
                                  )),
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
}
