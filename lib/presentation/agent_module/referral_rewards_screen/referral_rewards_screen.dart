import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/referral_rewards_controller.dart';
import './widgets/domain_link_widget.dart';
import './widgets/reward_card_widget.dart';

class ReferralRewardsScreen extends GetWidget<ReferralRewardsController> {
  const ReferralRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Stack(
            children: [
              // Background Image
              CustomImageView(
                imagePath: ImageConstant.img21,
                height: 799.h,
                width: 375.h,
                fit: BoxFit.cover,
              ),

              // Gaming Characters Image
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
                  height: 50.h,
                  width: 140.h,
                ),
              ),

              // Main Heading
              Positioned(
                top: 91.h,
                left: 46.h,
                child: SizedBox(
                  width: 291.h,
                  height: 48.h,
                  child: Text(
                    'Make a Million Every Month\nInvite Friends Now',
                    textAlign: TextAlign.center,
                    style: TextStyleHelper.instance.title19Black
                        .copyWith(height: 1.2),
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
                          rewardCard: controller.rewardCards[0],
                          width: 141.h,
                        )),
                    SizedBox(width: 8.h),
                    Obx(() => RewardCardWidget(
                          rewardCard: controller.rewardCards[1],
                          width: 141.h,
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
                          rewardCard: controller.rewardCards[2],
                          width: 93.h,
                        )),
                    SizedBox(width: 8.h),
                    Obx(() => RewardCardWidget(
                          rewardCard: controller.rewardCards[3],
                          width: 93.h,
                        )),
                    SizedBox(width: 8.h),
                    Obx(() => RewardCardWidget(
                          rewardCard: controller.rewardCards[4],
                          width: 93.h,
                        )),
                  ],
                ),
              ),

              // Domain Links Section
              Positioned(
                bottom: 63.h,
                left: 84.h,
                child: Column(
                  children: [
                    // Group Icon
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup11842,
                      height: 29.h,
                      width: 215.h,
                    ),
                    SizedBox(height: 7.h),

                    // jbet88.com
                    Padding(
                      padding: EdgeInsets.only(left: 83.h),
                      child: Text(
                        'jbet88.com',
                        style: TextStyleHelper.instance.body13Bold
                            .copyWith(color: appTheme.colorFFC0CD),
                      ),
                    ),
                    SizedBox(height: 10.h),

                    // Domain Links
                    Obx(() => DomainLinkWidget(
                          domainLink: controller.domainLinks[0],
                        )),
                    SizedBox(height: 8.h),
                    Obx(() => DomainLinkWidget(
                          domainLink: controller.domainLinks[1],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
