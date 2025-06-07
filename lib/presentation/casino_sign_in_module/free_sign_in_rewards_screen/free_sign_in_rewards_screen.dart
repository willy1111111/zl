import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/free_sign_in_rewards_controller.dart';
import './widgets/daily_progress_item_widget.dart';

class FreeSignInRewardsScreen extends GetWidget<FreeSignInRewardsController> {
  const FreeSignInRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Continuous Sign-Ins',
        showBalance: true,
        balanceAmount: '₱19800.00',
        balanceIcon: ImageConstant.imgGroup736,
        lightningIcon: ImageConstant.img1,
        height: 86.h,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            _buildStatsCard(),
            SizedBox(height: 16.h),
            _buildSignInProgressSection(),
            SizedBox(height: 16.h),
            _buildNavigationArrow(),
            SizedBox(height: 16.h),
            _buildSignInRules(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsCard() {
    return Container(
      height: 66.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [
            Color(0xFFEF5A12),
            appTheme.colorFFFF8C,
            appTheme.colorFFFFA8,
          ],
        ),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFFFFFF,
            blurRadius: 4.h,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 35.h,
            left: 0,
            child: Container(
              width: 20.h,
              height: 31.h,
              decoration: BoxDecoration(
                color: appTheme.colorB2FFB5,
                borderRadius: BorderRadius.circular(15.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 30.h,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 25.h,
            child: Container(
              width: 17.h,
              height: 14.h,
              decoration: BoxDecoration(
                color: appTheme.color99FFE3,
                borderRadius: BorderRadius.circular(8.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 21.h,
                    spreadRadius: 0,
                  ),
                ],
              ),
            ),
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
                          .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f11,
                      height: 28.h,
                      width: 26.h,
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      '24',
                      style: TextStyleHelper.instance.title18BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ],
                ),
                Container(
                  width: 1.h,
                  height: 50.h,
                  color: appTheme.color4CFFFA,
                ),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img1733643594,
                      height: 24.h,
                      width: 24.h,
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      '₱ 0.20',
                      style: TextStyleHelper.instance.title18BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 8.h,
            left: 20.h,
            child: Text(
              'Number Of Sign-Ins',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            bottom: 8.h,
            right: 20.h,
            child: Text(
              'Received Total Bonus',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInProgressSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(
          color: appTheme.colorFFD8D9,
          width: 2.h,
        ),
        borderRadius: BorderRadius.circular(6.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildSectionHeader(),
          SizedBox(height: 16.h),
          _buildBonusInfo(),
          SizedBox(height: 16.h),
          _buildDailyProgress(),
          SizedBox(height: 16.h),
          Container(
            width: double.infinity,
            height: 1.h,
            color: appTheme.colorFF2D34,
          ),
          SizedBox(height: 16.h),
          _buildBonusCollectionArea(),
        ],
      ),
    );
  }

  Widget _buildSectionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sign-In Today: Day 4',
          style: TextStyleHelper.instance.title16BoldArial
              .copyWith(color: appTheme.whiteCustom),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF76CD00),
                appTheme.colorFF478A,
              ],
            ),
            border: Border.all(color: appTheme.colorFF85D4),
            borderRadius: BorderRadius.circular(6.h),
          ),
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
          child: Text(
            'Re-signing',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
      ],
    );
  }

  Widget _buildBonusInfo() {
    return Row(
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1733643594,
              height: 18.h,
              width: 18.h,
            ),
            SizedBox(width: 4.h),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Bonus: ',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  TextSpan(
                    text: '₱ 0.20',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(width: 16.h),
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
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildDailyProgress() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            controller.dailyProgressItems.length,
            (index) => DailyProgressItemWidget(
              dailyProgressItemModel: controller.dailyProgressItems[index],
            ),
          ),
        ));
  }

  Widget _buildBonusCollectionArea() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.44, 0),
          end: Alignment(0.44, 1),
          colors: [
            Color(0xFFD8D908),
            appTheme.colorFF2FA0,
            appTheme.colorFF009E,
          ],
        ),
        border: Border.all(color: appTheme.colorFFD8D9),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFFFFFF,
            blurRadius: 4.h,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup12532,
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200.h,
          ),
          Column(
            children: [
              _buildCoinIcon(),
              SizedBox(height: 16.h),
              _buildBonusText(),
              SizedBox(height: 16.h),
              _buildCollectButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCoinIcon() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.whiteCustom,
        border: Border.all(color: appTheme.whiteCustom),
        borderRadius: BorderRadius.circular(12.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.color99FFF3,
            offset: Offset(0, 2.h),
            blurRadius: 3.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21,
            height: 68.h,
            width: 70.h,
          ),
          Positioned(
            top: 16.h,
            left: 16.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1733643598,
              height: 38.h,
              width: 38.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusText() {
    return Text(
      'Bonus: ₱ 0.20',
      style: TextStyleHelper.instance.body14BoldArial
          .copyWith(color: appTheme.colorFFFFF4),
    );
  }

  Widget _buildCollectButton() {
    return GestureDetector(
      onTap: () => controller.collectBonus(),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF006A,
          borderRadius: BorderRadius.circular(6.h),
        ),
        padding: EdgeInsets.all(8.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.44, 0),
                  end: Alignment(0.44, 1),
                  colors: [
                    Color(0xFFD8D908),
                    appTheme.colorFF2FA0,
                    appTheme.colorFF009E,
                  ],
                ),
                borderRadius: BorderRadius.circular(24.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFFFFFF,
                    blurRadius: 4.h,
                    spreadRadius: 0,
                  ),
                ],
              ),
              padding: EdgeInsets.all(12.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant
                        .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                    height: 39.h,
                    width: 36.h,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'Require',
                    style: TextStyleHelper.instance.body13BoldArial
                        .copyWith(color: appTheme.colorFFEEFF),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.h),
            CustomImageView(
              imagePath: ImageConstant.imgFree1,
              height: 42.h,
              width: 122.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavigationArrow() {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup12694,
        height: 22.h,
        width: 22.h,
      ),
    );
  }

  Widget _buildSignInRules() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF36383C),
            appTheme.colorFF2528,
          ],
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
                'Sign-In Rules',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildRuleItem(
            ImageConstant.imgGroup12650,
            '1. Log in to the game every day to sign in.',
            11.h,
            12.h,
          ),
          SizedBox(height: 12.h),
          _buildRuleItem(
            ImageConstant.imgGroup12649,
            '2. Continuous sign-ins will gradually unlock rewards.',
            13.h,
            11.h,
          ),
          SizedBox(height: 12.h),
          _buildRuleItem(
            ImageConstant.imgGroup12651,
            '3. Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.',
            11.h,
            15.h,
          ),
          SizedBox(height: 12.h),
          _buildRuleItemWithHighlight(
            ImageConstant.imgGroup12647,
            '4. Each round of sign-in has ',
            '1',
            ' chance to re-sign.',
            12.h,
            14.h,
          ),
          SizedBox(height: 12.h),
          _buildRuleItemWithHighlight(
            ImageConstant.imgGroup12647,
            '5.Your remaining number of re-signments: ',
            '0',
            '',
            12.h,
            14.h,
          ),
        ],
      ),
    );
  }

  Widget _buildRuleItem(
      String iconPath, String text, double iconWidth, double iconHeight) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 4.h),
          child: CustomImageView(
            imagePath: iconPath,
            height: iconHeight,
            width: iconWidth,
          ),
        ),
        SizedBox(width: 8.h),
        Expanded(
          child: Text(
            text,
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF8089, height: 1.2),
          ),
        ),
      ],
    );
  }

  Widget _buildRuleItemWithHighlight(
      String iconPath,
      String beforeText,
      String highlightText,
      String afterText,
      double iconWidth,
      double iconHeight) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 4.h),
          child: CustomImageView(
            imagePath: iconPath,
            height: iconHeight,
            width: iconWidth,
          ),
        ),
        SizedBox(width: 8.h),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: beforeText,
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF8089, height: 1.2),
                ),
                TextSpan(
                  text: highlightText,
                  style: TextStyleHelper.instance.body14BoldArial.copyWith(
                      color: highlightText == '1'
                          ? Color(0xFF51A0FF)
                          : appTheme.colorFFF652,
                      height: 1.2),
                ),
                if (afterText.isNotEmpty)
                  TextSpan(
                    text: afterText,
                    style: TextStyleHelper.instance.body14BoldArial
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
