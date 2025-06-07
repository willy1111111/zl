import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/splash_controller.dart';
import './widgets/reward_card_widget.dart';
import './widgets/url_indicator_widget.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: 799.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.img21,
              height: 799.h,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),

            // Secondary Background Image
            Positioned(
              top: 178.h,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.img11488x375,
                height: 488.h,
                width: 375.h,
                fit: BoxFit.cover,
              ),
            ),

            // Logo
            Positioned(
              top: 17.h,
              left: 121.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgLogowj932,
                width: 140.h,
                height: 50.h,
              ),
            ),

            // Main Heading
            Positioned(
              top: 91.h,
              left: 46.h,
              child: Container(
                width: 291.h,
                child: Text(
                  'Make a Million Every Month\nInvite Friends Now',
                  textAlign: TextAlign.center,
                  style: TextStyleHelper.instance.title19BlackArial
                      .copyWith(height: 1.16),
                ),
              ),
            ),

            // Reward Cards Row 1
            Positioned(
              top: 147.h,
              left: 41.h,
              child: Row(
                children: [
                  Obx(() => RewardCardWidget(
                        rewardModel: controller.rewardCards[0],
                        width: 141.h,
                        height: 52.h,
                      )),
                  SizedBox(width: 8.h),
                  Obx(() => RewardCardWidget(
                        rewardModel: controller.rewardCards[1],
                        width: 141.h,
                        height: 52.h,
                      )),
                ],
              ),
            ),

            // Reward Cards Row 2
            Positioned(
              top: 217.h,
              left: 39.h,
              child: Row(
                children: [
                  Obx(() => RewardCardWidget(
                        rewardModel: controller.rewardCards[2],
                        width: 93.h,
                        height: 52.h,
                      )),
                  SizedBox(width: 8.h),
                  Obx(() => RewardCardWidget(
                        rewardModel: controller.rewardCards[3],
                        width: 93.h,
                        height: 52.h,
                      )),
                  SizedBox(width: 8.h),
                  Obx(() => RewardCardWidget(
                        rewardModel: controller.rewardCards[4],
                        width: 93.h,
                        height: 52.h,
                      )),
                ],
              ),
            ),

            // URL Indicators Section
            Positioned(
              top: 536.h,
              left: 84.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Group Icon
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup11842,
                    width: 215.h,
                    height: 29.h,
                  ),

                  SizedBox(height: 7.h),

                  // jbet88.com URL
                  Text(
                    'jbet88.com',
                    style: TextStyleHelper.instance.body13BoldArial,
                  ),

                  SizedBox(height: 18.h),

                  // URL Indicators
                  Obx(() => UrlIndicatorWidget(
                        urlModel: controller.urlIndicators[0],
                      )),

                  SizedBox(height: 8.h),

                  Obx(() => UrlIndicatorWidget(
                        urlModel: controller.urlIndicators[1],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
