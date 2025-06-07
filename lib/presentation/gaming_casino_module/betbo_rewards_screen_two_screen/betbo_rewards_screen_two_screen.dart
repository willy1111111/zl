import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/betbo_rewards_screen_two_controller.dart';
import './widgets/reward_item_widget.dart';

class BetboRewardsScreenTwo extends GetWidget<BetboRewardsScreenTwoController> {
  const BetboRewardsScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1519,
      body: Stack(
        children: [
          // Background Image
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1063,
              height: 951.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          // Black Overlay
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Opacity(
              opacity: 0.8,
              child: Container(
                height: 912.h,
                color: appTheme.blackCustom,
              ),
            ),
          ),

          // My Rewards Modal
          Positioned(
            top: 137.h,
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
                  _buildHeader(),
                  _buildDivider(),
                  Expanded(
                    child: _buildRewardsList(),
                  ),
                ],
              ),
            ),
          ),

          // Success Notification Dialog
          Obx(() {
            return controller.showSuccessDialog.value
                ? _buildSuccessDialog()
                : SizedBox.shrink();
          }),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      height: 48.h,
      child: Stack(
        children: [
          // Close Button
          Positioned(
            top: 12.h,
            right: 16.h,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup2131329219,
                height: 28.h,
                width: 28.h,
              ),
            ),
          ),

          // Title
          Center(
            child: Text(
              'My Rewards',
              style: TextStyleHelper.instance.title16Bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDivider() {
    return Container(
      height: 1.h,
      color: appTheme.whiteCustom,
    );
  }

  Widget _buildRewardsList() {
    return Obx(() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h).copyWith(top: 32.h),
        child: ListView.separated(
          itemCount: controller.rewardItems.length,
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemBuilder: (context, index) {
            return RewardItemWidget(
              rewardItem: controller.rewardItems[index],
              onClaimTap: () => controller.claimReward(index),
            );
          },
        ),
      );
    });
  }

  Widget _buildSuccessDialog() {
    return Positioned(
      top: 239.h,
      left: 104.h,
      child: Container(
        width: 164.h,
        height: 122.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF4B55,
          borderRadius: BorderRadius.circular(12.h),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector,
              height: 43.h,
              width: 50.h,
            ),
            SizedBox(height: 16.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Text(
                'Received successfully!',
                style: TextStyleHelper.instance.body13
                    .copyWith(color: appTheme.whiteCustom),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
