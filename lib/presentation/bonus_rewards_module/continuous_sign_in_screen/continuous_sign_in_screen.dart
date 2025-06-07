import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_warning_message.dart';
import './controller/continuous_sign_in_controller.dart';
import './widgets/daily_progress_item_widget.dart';
import './widgets/requirement_item_widget.dart';
import './widgets/sign_in_rule_item_widget.dart';
import './widgets/stats_card_widget.dart';
import './widgets/unlock_reward_item_widget.dart';

class ContinuousSignInScreen extends GetWidget<ContinuousSignInController> {
  const ContinuousSignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStatsCard(),
              SizedBox(height: 16.h),
              _buildSignInProgressCard(),
              SizedBox(height: 16.h),
              _buildActivityTimer(),
              SizedBox(height: 16.h),
              _buildSignInRules(),
              SizedBox(height: 16.h),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 86.h,
      showBackButton: true,
      title: 'Continuous sign-ins',
      balance: '19800.00',
      currency: '₱',
      onBackPressed: () => Get.back(),
      backgroundColor: appTheme.colorFF1B1C,
    );
  }

  Widget _buildStatsCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: StatsCardWidget(),
    );
  }

  Widget _buildSignInProgressCard() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          border: Border.all(color: appTheme.colorFFD8D9, width: 2.h),
          borderRadius: BorderRadius.circular(8.h),
        ),
        padding: EdgeInsets.all(12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildProgressHeader(),
            SizedBox(height: 16.h),
            _buildBonusInfo(),
            SizedBox(height: 16.h),
            _buildDivider(),
            SizedBox(height: 16.h),
            _buildDailyProgress(),
            SizedBox(height: 24.h),
            _buildUnlockSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sign-in Today: Day 4',
          style: TextStyleHelper.instance.title16Bold,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF76CD00), Color(0xFF478A03)],
            ),
            border: Border.all(color: appTheme.colorFF85D4),
            borderRadius: BorderRadius.circular(4.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
          child: Text(
            'Re-signing',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
      ],
    );
  }

  Widget _buildBonusInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomInfoRow(
          iconPath: ImageConstant.img1733643593,
          labelText: 'Bonus: ',
          valueText: '₱ 0.20',
          labelColor: appTheme.whiteCustom,
          valueColor: appTheme.colorFFFFC6,
          iconSize: 18.h,
          spacing: 4.h,
        ),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img31,
              height: 20.h,
              width: 20.h,
            ),
            SizedBox(width: 4.h),
            Text(
              'Extra: ₱0.20',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Container(
      width: double.infinity,
      height: 1.h,
      color: appTheme.colorFF2D34,
    );
  }

  Widget _buildDailyProgress() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            controller.dailyProgressItems.length,
            (index) => DailyProgressItemWidget(
              dailyProgress: controller.dailyProgressItems[index],
            ),
          ),
        ));
  }

  Widget _buildUnlockSection() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFD8D908), appTheme.colorFF2FA0, Color(0xFF009E41)],
        ),
        border: Border.all(color: appTheme.colorFFD8D9),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom.withAlpha(77),
            blurRadius: 4.h,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.all(12.h),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.2,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup12532,
              height: 325.h,
              width: 240.h,
              alignment: Alignment.topLeft,
            ),
          ),
          Column(
            children: [
              _buildUnlockRewards(),
              SizedBox(height: 16.h),
              _buildUnlockBanner(),
              SizedBox(height: 16.h),
              _buildRequirements(),
              SizedBox(height: 16.h),
              CustomWarningMessage(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUnlockRewards() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            UnlockRewardItemWidget(
              unlockReward: controller.unlockRewards[0],
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup12628,
              height: 20.h,
              width: 20.h,
            ),
            UnlockRewardItemWidget(
              unlockReward: controller.unlockRewards[1],
            ),
          ],
        ));
  }

  Widget _buildUnlockBanner() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF3BC117), appTheme.colorFF3BC1, Color(0xFF3BC117)],
        ),
        border: Border.all(color: appTheme.colorFF55FF),
        borderRadius: BorderRadius.circular(4.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img51,
            height: 60.h,
            width: 48.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Text(
              'Unlock missed rewards after completing the re-signing task',
              style: TextStyleHelper.instance.title16Bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRequirements() {
    return Obx(() => Column(
          children: List.generate(
            controller.requirements.length,
            (index) => Padding(
              padding: EdgeInsets.only(
                  bottom: index < controller.requirements.length - 1 ? 8.h : 0),
              child: RequirementItemWidget(
                requirement: controller.requirements[index],
              ),
            ),
          ),
        ));
  }

  Widget _buildActivityTimer() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomInfoRow(
        iconPath: ImageConstant.imgFrame1Yellow70001,
        labelText: 'Activity Time: ',
        valueText: '29Day 23:59:59',
        labelColor: appTheme.colorFFC0C8,
        valueColor: appTheme.colorFF51A0,
        iconSize: 22.h,
        spacing: 8.h,
      ),
    );
  }

  Widget _buildSignInRules() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF36383C), Color(0xFF25282D)],
          ),
          border: Border.all(color: appTheme.colorFF292F),
          borderRadius: BorderRadius.circular(8.h),
        ),
        padding: EdgeInsets.all(16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup12648,
                  height: 13.h,
                  width: 13.h,
                ),
                SizedBox(width: 8.h),
                Text(
                  'Sign-in rules',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Obx(() => Column(
                  children: List.generate(
                    controller.signInRules.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(
                          bottom: index < controller.signInRules.length - 1
                              ? 12.h
                              : 0),
                      child: SignInRuleItemWidget(
                        signInRule: controller.signInRules[index],
                      ),
                    ),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
