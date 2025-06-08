import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_ticket_bonus_card.dart';
import './controller/my_ticket_rewards_controller.dart';
import './widgets/reward_item_widget.dart';

class MyTicketRewardsScreen extends GetWidget<MyTicketRewardsController> {
  const MyTicketRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Obx(() {
        if (controller.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildUserProfileSection(),
              _buildTaskCompletionNotice(),
              _buildNavigationTabs(),
              _buildRewardsList(),
            ],
          ),
        );
      }),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Ticket Event',
      leadingIcon: ImageConstant.imgStroke,
      onLeadingPressed: () => Get.back(),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame14117,
            width: 24.h,
            height: 24.h,
          ),
        ),
      ],
      showStatusBar: true,
      statusBarIcon: ImageConstant.img1,
    );
  }

  Widget _buildUserProfileSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      child: Stack(
        children: [
          CustomTicketBonusCard(
            userId: controller.myTicketRewardsModel.value?.userId?.value ??
                '939038393',
            bonusAmount:
                controller.myTicketRewardsModel.value?.bonusAmount?.value ??
                    '₱ 123456789.00',
            profileImagePath: ImageConstant.img87131,
            decorationImagePath: ImageConstant.img10161114x112,
            label: 'Total Ticket Bonus:',
          ),
          Positioned(
            top: 20.h,
            right: 15.h,
            child: CustomImageView(
              imagePath: ImageConstant.img10161114x112,
              width: 112.h,
              height: 114.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskCompletionNotice() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(11.h),
      ),
      width: 236.h,
      child: Text(
        'Completing tasks below earns ticket',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFFC0C8),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildNavigationTabs() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      height: 38.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2B32,
        borderRadius: BorderRadius.circular(16.h),
      ),
      child: Stack(
        children: [
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => controller.selectTab(0),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Earn Ticket',
                      style: TextStyleHelper.instance.title16BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ),
              ),
              Expanded(child: SizedBox()),
            ],
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              width: 172.h,
              height: 38.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF85D4,
                borderRadius: BorderRadius.circular(16.h),
              ),
              child: Stack(
                children: [
                  Center(
                    child: Text(
                      'My Ticket',
                      style: TextStyleHelper.instance.title16BoldArial
                          .copyWith(color: appTheme.colorFF1E20),
                    ),
                  ),
                  Positioned(
                    top: -8.h,
                    right: -8.h,
                    child: Container(
                      width: 20.h,
                      height: 20.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFFF335,
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      child: Center(
                        child: Text(
                          controller.myTicketRewardsModel.value
                                  ?.notificationCount?.value
                                  .toString() ??
                              '9',
                          style: TextStyleHelper.instance.body14BoldArial
                              .copyWith(color: appTheme.whiteCustom),
                        ),
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

  Widget _buildRewardsList() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          ...controller.rewardItems.map((rewardItem) {
            return Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: RewardItemWidget(
                rewardItem: rewardItem,
                onClaimPressed: () => controller.claimReward(rewardItem),
              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}
