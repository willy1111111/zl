import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_badge.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_warning_message.dart';
import './controller/signed_in_rewards_controller.dart';
import './widgets/daily_sign_in_item_widget.dart';
import './widgets/sign_in_rules_item_widget.dart';

class SignedInRewardsScreen extends GetWidget<SignedInRewardsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomAppBar(
          height: 86.h,
          showBackButton: true,
          title: 'Continuous sign-ins',
          balance: '₱19800.00',
          currency: '₱',
          onBackPressed: () => Get.back(),
          backgroundColor: appTheme.colorFF1B1C,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 12.h, bottom: 20.h),
          child: Column(
            children: [
              _buildOrangeHeaderCard(),
              SizedBox(height: 14.h),
              _buildSignInProgressSection(),
              SizedBox(height: 12.h),
              _buildSignInRulesSection(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOrangeHeaderCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      height: 66.h,
      width: 345.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFEF5A12), appTheme.colorFFFF8C, Color(0xFFFFA800)],
        ),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom,
            blurRadius: 4.h,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
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
                color: appTheme.colorFFFFB5,
                borderRadius: BorderRadius.circular(15.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    offset: Offset(0, 4.h),
                    blurRadius: 30.h,
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
                color: appTheme.colorFFFFE3,
                borderRadius: BorderRadius.circular(8.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    offset: Offset(0, 4.h),
                    blurRadius: 21.h,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant
                          .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                      height: 28.h,
                      width: 26.h,
                    ),
                    SizedBox(width: 7.h),
                    Text(
                      '24',
                      style: TextStyleHelper.instance.title18Bold,
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
                      imagePath: ImageConstant.img1733643593,
                      height: 24.h,
                      width: 24.h,
                    ),
                    SizedBox(width: 4.h),
                    Text(
                      '₱ 0.20',
                      style: TextStyleHelper.instance.title18Bold,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 1.h,
            left: 20.h,
            child: Text(
              'Number of sign-ins',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            bottom: 1.h,
            right: 13.h,
            child: Text(
              'Received total bonus',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInProgressSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(6.h),
        border: Border.all(color: appTheme.colorFFD8D9, width: 2.h),
      ),
      padding: EdgeInsets.all(10.h),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                      borderRadius: BorderRadius.circular(6.h),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.h, vertical: 6.h),
                    child: Text(
                      'Re-signing',
                      style: TextStyleHelper.instance.body14Bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 19.h),
              Row(
                children: [
                  CustomInfoRow(
                    iconPath: ImageConstant.img1733643593,
                    labelText: 'Bonus: ',
                    valueText: '₱ 0.20',
                    labelColor: appTheme.whiteCustom,
                    valueColor: appTheme.colorFFFFC6,
                    spacing: 4.h,
                  ),
                  SizedBox(width: 19.h),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img31,
                        height: 20.h,
                        width: 20.h,
                      ),
                      Text(
                        'Extra: ₱0.20',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              Container(
                width: 325.h,
                height: 1.h,
                color: appTheme.colorFF2D34,
                margin: EdgeInsets.only(left: -1.h),
              ),
              SizedBox(height: 13.h),
              Obx(() => Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      controller.dailySignInItems.length,
                      (index) => DailySignInItemWidget(
                        dailySignInItemModel:
                            controller.dailySignInItems[index],
                      ),
                    ),
                  )),
              SizedBox(height: 4.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Day 1',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  Text(
                    'Day 2',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  Text(
                    'Day 3',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  Text(
                    'Day 4',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  Text(
                    'Day 5',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
              SizedBox(height: 25.h),
              _buildBonusCollectionArea(),
              SizedBox(height: 25.h),
              CustomInfoRow(
                iconPath: ImageConstant.imgFrame1Yellow70001,
                labelText: 'Activity Time: ',
                valueText: '29Day 23:59:59',
                labelColor: appTheme.colorFFC0C8,
                valueColor: appTheme.colorFF51A0,
                iconSize: 22.h,
                spacing: 8.h,
              ),
            ],
          ),
          Positioned(
            top: 69.h,
            right: 143.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUnion16x47,
                  height: 16.h,
                  width: 47.h,
                ),
                Positioned(
                  top: 0,
                  left: 4.h,
                  child: Text(
                    '+₱0.20',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 18.h,
            left: 152.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup12661,
              height: 20.h,
              width: 41.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusCollectionArea() {
    return Container(
      width: 325.h,
      height: 224.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.6, -1.0),
          end: Alignment(1.0, 1.0),
          colors: [Color(0xFFD8D908), appTheme.colorFF2FA0, Color(0xFF009E41)],
        ),
        border: Border.all(color: appTheme.colorFFD8D9),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom,
            blurRadius: 4.h,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup12532WhiteA700,
              height: 325.h,
              width: 204.h,
            ),
          ),
          Positioned(
            top: 26.h,
            left: 128.h,
            child: Container(
              width: 70.h,
              height: 70.h,
              decoration: BoxDecoration(
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
              child: Stack(
                children: [
                  Positioned(
                    top: 1.h,
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21,
                      height: 70.h,
                      width: 68.h,
                    ),
                  ),
                  Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.img1733643598,
                      height: 38.h,
                      width: 38.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 102.h,
            left: 116.h,
            child: Text(
              'Bonus: ₱ 0.20',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFFFFF4),
            ),
          ),
          Positioned(
            top: 140.h,
            left: 10.h,
            child: Container(
              width: 305.h,
              height: 64.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF8096,
                borderRadius: BorderRadius.circular(6.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Row(
                children: [
                  Container(
                    width: 48.h,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF6B79,
                      borderRadius: BorderRadius.circular(24.h),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.whiteCustom,
                          blurRadius: 4.h,
                          spreadRadius: 0,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: CustomImageView(
                            imagePath: ImageConstant
                                .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f126x28,
                            height: 39.h,
                            width: 36.h,
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Text(
                            'Sign-in',
                            textAlign: TextAlign.center,
                            style: TextStyleHelper.instance.body13Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 13.h),
                  Expanded(
                    child: Text(
                      'Times of deposits：2\nDeposit amount： ₱200',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom, height: 1.28),
                    ),
                  ),
                  CustomBadge(
                    backgroundImagePath: ImageConstant.imgRectangle719,
                    overlayImagePath: ImageConstant.imgZsofe1,
                    text: 'Finished',
                    width: 65.h,
                    height: 45.h,
                    overlayWidth: 67.h,
                    overlayHeight: 56.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInRulesSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF36383C), Color(0xFF25282D)],
        ),
        border: Border.all(color: appTheme.colorFF292F),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
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
              SizedBox(width: 7.h),
              Text(
                'Sign-in rules',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 13.h),
          Obx(() => Column(
                children: List.generate(
                  controller.signInRulesItems.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(
                        bottom: index < controller.signInRulesItems.length - 1
                            ? 17.h
                            : 0),
                    child: SignInRulesItemWidget(
                      signInRulesItemModel: controller.signInRulesItems[index],
                    ),
                  ),
                ),
              )),
          SizedBox(height: 20.h),
          CustomWarningMessage(
            warningText:
                'After the continuous sign-in is interrupted,\nit will return to Day 1 and start again.',
            iconPath: ImageConstant.imgVectorRedA700,
          ),
        ],
      ),
    );
  }
}
