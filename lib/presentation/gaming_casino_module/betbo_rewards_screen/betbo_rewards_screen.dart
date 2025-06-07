import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/betbo_rewards_controller.dart';
import './widgets/reward_item_widget.dart';

class BetboRewardsScreen extends GetWidget<BetboRewardsController> {
  BetboRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1519,
      body: SizedBox(
        width: double.maxFinite,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1063,
              height: 951.h,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),

            // Overlay with opacity
            Container(
              height: 812.h,
              width: double.maxFinite,
              color: appTheme.blackCustom.withAlpha(204),
            ),

            // Bottom Sheet Modal
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
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
                    _buildAppBar(),
                    _buildRewardsList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: appTheme.whiteCustom.withAlpha(51),
            width: 1.h,
          ),
        ),
      ),
      child: Row(
        children: [
          Spacer(),
          Text(
            'My Rewards',
            style: TextStyleHelper.instance.title16Bold,
          ),
          Spacer(),
          GestureDetector(
            onTap: () {
              Get.back();
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131329219,
              height: 28.h,
              width: 28.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRewardsList() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(
          children: [
            SizedBox(height: 32.h),
            Expanded(
              child: Obx(() => ListView.separated(
                    itemCount: controller.rewards.length,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 16.h),
                    itemBuilder: (context, index) {
                      return RewardItemWidget(
                        reward: controller.rewards[index],
                        onClaimTap: () {
                          controller.claimReward(index);
                        },
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
