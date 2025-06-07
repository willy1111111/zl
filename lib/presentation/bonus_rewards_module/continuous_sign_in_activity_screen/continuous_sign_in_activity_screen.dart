import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_warning_message.dart';
import './controller/continuous_sign_in_activity_controller.dart';
import './widgets/daily_reward_item_widget.dart';
import './widgets/special_reward_item_widget.dart';

class ContinuousSignInActivityScreen
    extends GetWidget<ContinuousSignInActivityController> {
  const ContinuousSignInActivityScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Obx(() {
        return Stack(
          children: [
            _buildMainContent(),
            if (controller.showUpdateModal.value) _buildAppUpdateModal(),
          ],
        );
      }),
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

  Widget _buildMainContent() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Column(
        children: [
          _buildSignInStatsCard(),
          _buildSignInCalendarCard(),
          _buildSignInRulesCard(),
        ],
      ),
    );
  }

  Widget _buildSignInStatsCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom.withAlpha(51),
            blurRadius: 8.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 66.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFEF5A12),
                  appTheme.colorFFFF8C,
                  Color(0xFFFFA800)
                ],
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8.h),
                topRight: Radius.circular(8.h),
              ),
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  width: double.infinity,
                  height: 66.h,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant
                                .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                            width: 26.h,
                            height: 28.h,
                          ),
                          SizedBox(width: 12.h),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.signInCount.value.toString(),
                                style: TextStyleHelper.instance.title18Bold,
                              ),
                              Text(
                                'Number of sign-ins',
                                style: TextStyleHelper.instance.body14Bold
                                    .copyWith(color: appTheme.whiteCustom),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.img1733643593,
                            width: 24.h,
                            height: 24.h,
                          ),
                          SizedBox(width: 8.h),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '₱ ${controller.totalBonus.value}',
                                style: TextStyleHelper.instance.title18Bold,
                              ),
                              Text(
                                'Received total bonus',
                                style: TextStyleHelper.instance.body14Bold
                                    .copyWith(color: appTheme.whiteCustom),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInCalendarCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 15.h),
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFFD8D9, width: 2.h),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          _buildSignInHeader(),
          Container(
            width: double.infinity,
            height: 1.h,
            color: appTheme.colorFF2D34,
            margin: EdgeInsets.symmetric(vertical: 16.h),
          ),
          _buildBonusInfo(),
          SizedBox(height: 16.h),
          _buildDailyRewardsGrid(),
          SizedBox(height: 16.h),
          _buildSpecialRewardsSection(),
        ],
      ),
    );
  }

  Widget _buildSignInHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sign-in Today: Day ${controller.currentDay.value}',
          style: TextStyleHelper.instance.title16Bold,
        ),
        GestureDetector(
          onTap: () => controller.signIn(),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
              ),
              border: Border.all(color: appTheme.colorFFFFC6),
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: Text(
              'Sign in',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
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
          valueText: '₱ ${controller.dailyBonus.value}',
          labelColor: appTheme.whiteCustom,
          valueColor: appTheme.colorFFFFC6,
        ),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img31,
              width: 20.h,
              height: 20.h,
            ),
            SizedBox(width: 8.h),
            Text(
              'Extra: ₱${controller.extraBonus.value}',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFFFFF4),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDailyRewardsGrid() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
        controller.dailyRewards.length,
        (index) => DailyRewardItemWidget(
          reward: controller.dailyRewards[index],
          onTap: () => controller.selectDay(index),
        ),
      ),
    );
  }

  Widget _buildSpecialRewardsSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFD8D908), appTheme.colorFF2FA0, Color(0xFF009E41)],
          stops: const [0.0, 0.5, 1.0],
        ),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom.withAlpha(51),
            blurRadius: 8.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup12532,
            width: 240.h,
            height: 325.h,
            alignment: Alignment.topLeft,
          ),
          Column(
            children: [
              ...List.generate(
                controller.specialRewards.length,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: 16.h),
                  child: SpecialRewardItemWidget(
                    reward: controller.specialRewards[index],
                    onTap: () => controller.selectSpecialReward(index),
                  ),
                ),
              ),
              _buildSpecialItems(),
              SizedBox(height: 16.h),
              CustomWarningMessage(),
              SizedBox(height: 16.h),
              CustomInfoRow(
                iconPath: ImageConstant.imgFrame1Yellow70001,
                labelText: 'Activity Time: ',
                valueText: controller.activityTime.value ?? '29Day 23:59:59',
                labelColor: appTheme.colorFFC0C8,
                valueColor: appTheme.colorFF51A0,
                iconSize: 22.h,
                spacing: 8.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 70.h,
          height: 70.h,
          margin: EdgeInsets.only(right: 16.h),
          decoration: BoxDecoration(
            border: Border.all(color: appTheme.whiteCustom),
            borderRadius: BorderRadius.circular(12.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.blackCustom.withAlpha(51),
                blurRadius: 8.h,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21,
                width: 68.h,
                height: 70.h,
                fit: BoxFit.cover,
                radius: BorderRadius.circular(12.h),
              ),
              CustomImageView(
                imagePath: ImageConstant.img1733643598,
                width: 38.h,
                height: 38.h,
                alignment: Alignment.center,
              ),
            ],
          ),
        ),
        Container(
          width: 70.h,
          height: 73.h,
          decoration: BoxDecoration(
            border: Border.all(color: appTheme.whiteCustom),
            borderRadius: BorderRadius.circular(12.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.blackCustom.withAlpha(51),
                blurRadius: 8.h,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21,
                width: 68.h,
                height: 70.h,
                fit: BoxFit.cover,
                radius: BorderRadius.circular(12.h),
              ),
              CustomImageView(
                imagePath: ImageConstant
                    .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb2,
                width: 64.h,
                height: 64.h,
                alignment: Alignment.topCenter,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 19.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
                    ),
                    border: Border.all(color: appTheme.whiteCustom),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12.h),
                      bottomRight: Radius.circular(12.h),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'EXTRA',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildAppUpdateModal() {
    return Container(
      color: appTheme.blackCustom.withAlpha(128),
      child: Center(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.h),
              topRight: Radius.circular(12.h),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildModalHeader(),
              _buildModalContent(),
              _buildInstallationInstructions(),
              _buildFriendlyNotice(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildModalHeader() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: appTheme.colorFF4A4A)),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img112,
            width: 50.h,
            height: 50.h,
            radius: BorderRadius.circular(8.h),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'JBET',
                    style: TextStyleHelper.instance.headline24Black
                        .copyWith(color: appTheme.colorFFF6D1),
                  ),
                  TextSpan(
                    text: '88.COM',
                    style: TextStyleHelper.instance.headline24Black
                        .copyWith(color: appTheme.colorFFE4FE),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => controller.closeUpdateModal(),
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup,
              width: 32.h,
              height: 32.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildModalContent() {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgApp1,
            width: double.infinity,
            height: 126.h,
            fit: BoxFit.cover,
            radius: BorderRadius.circular(8.h),
          ),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFEF4E), Color(0xFFC58D42)],
              ),
              borderRadius: BorderRadius.circular(4.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.blackCustom.withAlpha(51),
                  blurRadius: 4.h,
                  offset: Offset(0, 2.h),
                ),
              ],
            ),
            child: Text(
              'V2.0',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF1E20),
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            'Discover a new version',
            style: TextStyleHelper.instance.title16Bold,
          ),
          SizedBox(height: 8.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Your account ',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFFC0C8),
                ),
                TextSpan(
                  text:
                      '9895546461 has been successfully promoted to VIP Teams.',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF0071),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Update the app and enjoy smoother gameplay and richer benefits.',
            style: TextStyleHelper.instance.body14
                .copyWith(color: appTheme.colorFFC0C8),
          ),
          SizedBox(height: 24.h),
          GestureDetector(
            onTap: () => controller.updateApp(),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 12.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF2BB8,
                borderRadius: BorderRadius.circular(8.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame1WhiteA700,
                    width: 24.h,
                    height: 24.h,
                  ),
                  SizedBox(width: 12.h),
                  Text(
                    'Update now',
                    style: TextStyleHelper.instance.title18Bold,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    '(4.9MB)',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInstallationInstructions() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: appTheme.colorFF4A4A)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Installing an application',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFFC0C8),
          ),
          SizedBox(height: 8.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '1. Click the button above to download the installation file',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFF8089),
              ),
              SizedBox(height: 4.h),
              Text(
                '2. Allow installation of apps from unknown source in your device settings',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFF8089),
              ),
              SizedBox(height: 4.h),
              Text(
                '3. Complete the installation',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFriendlyNotice() {
    return Container(
      padding: EdgeInsets.all(16.h),
      color: appTheme.colorFF1E20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorGreen500,
                width: 16.h,
                height: 16.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'Friendly notice',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFC0C8),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            'This app has passed Google Play security certification, so feel free to install it.',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.colorFF8089),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInRulesCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF36383C), Color(0xFF25282D)],
        ),
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup12648,
                width: 13.h,
                height: 13.h,
              ),
              SizedBox(width: 12.h),
              Text(
                'Sign-in rules',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildRuleItem(
            ImageConstant.imgGroup12650,
            'Log in to the game every day to sign in.',
          ),
          SizedBox(height: 12.h),
          _buildRuleItem(
            ImageConstant.imgGroup12649,
            'Continuous sign-ins will gradually unlock rewards.',
          ),
          SizedBox(height: 12.h),
          _buildRuleItem(
            ImageConstant.imgGroup12651,
            'Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.',
          ),
          SizedBox(height: 12.h),
          _buildRuleItemWithHighlight(
            ImageConstant.imgGroup12647,
            'Each round of sign-in has ',
            '1',
            ' chance to re-sign.',
          ),
          SizedBox(height: 12.h),
          _buildRuleItemWithHighlight(
            ImageConstant.imgGroup12647,
            'Your remaining number of re-signments: ',
            '0',
            '',
            highlightColor: appTheme.colorFFF652,
          ),
        ],
      ),
    );
  }

  Widget _buildRuleItem(String iconPath, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: iconPath,
          width: 13.h,
          height: 15.h,
          margin: EdgeInsets.only(top: 2.h),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: Text(
            text,
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF8089, height: 1.2),
          ),
        ),
      ],
    );
  }

  Widget _buildRuleItemWithHighlight(
    String iconPath,
    String text1,
    String highlightText,
    String text2, {
    Color? highlightColor = const Color(0xFF51A0FF),
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: iconPath,
          width: 12.h,
          height: 14.h,
          margin: EdgeInsets.only(top: 2.h),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: text1,
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.2),
                ),
                TextSpan(
                  text: highlightText,
                  style:
                      TextStyleHelper.instance.body14Bold.copyWith(height: 1.2),
                ),
                TextSpan(
                  text: text2,
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.2),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}