import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/daily_sign_in_rewards_controller.dart';
import './widgets/daily_progress_item_widget.dart';
import './widgets/sign_in_rule_item_widget.dart';

class DailySignInRewardsScreen extends GetWidget<DailySignInRewardsController> {
  DailySignInRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Continuous sign-ins',
        showBalance: true,
        balanceAmount: '₱19800.00',
        balanceIcon: ImageConstant.imgGroup736,
        lightningIcon: ImageConstant.img1,
        height: 86.h,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
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
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFEF5A12), appTheme.colorFFFF8C, Color(0xFFFFA800)],
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant
                        .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                    height: 28.h,
                    width: 28.h,
                  ),
                  SizedBox(width: 12.h),
                  Obx(() => Text(
                        controller.dailySignInRewardsModel.value?.signInCount
                                ?.value ??
                            '24',
                        style: TextStyleHelper.instance.title18Bold
                            .copyWith(color: appTheme.whiteCustom),
                      )),
                ],
              ),
              Container(
                width: 1.h,
                height: 48.h,
                color: appTheme.colorFFFFFA,
                child: Opacity(
                  opacity: 0.3,
                  child: Container(),
                ),
              ),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1733643594,
                    height: 24.h,
                    width: 24.h,
                  ),
                  SizedBox(width: 8.h),
                  Obx(() => Text(
                        controller.dailySignInRewardsModel.value?.totalBonus
                                ?.value ??
                            '₱ 0.20',
                        style: TextStyleHelper.instance.title18Bold
                            .copyWith(color: appTheme.whiteCustom),
                      )),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Number of sign-ins',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
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
    );
  }

  Widget _buildSignInProgressSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFFD8D9, width: 2.h),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    controller.dailySignInRewardsModel.value?.currentDayTitle
                            ?.value ??
                        'Sign-in Today: Day 4',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.whiteCustom),
                  )),
              GestureDetector(
                onTap: () => controller.onReSignTap(),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                    ),
                    border: Border.all(color: appTheme.colorFF85D4),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: Text(
                    'Re-signing',
                    style: TextStyleHelper.instance.body14Bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1733643594,
                    height: 16.h,
                    width: 16.h,
                  ),
                  SizedBox(width: 4.h),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Bonus: ',
                          style: TextStyleHelper.instance.body14Bold
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                        TextSpan(
                          text: '₱ 0.20',
                          style: TextStyleHelper.instance.body14Bold
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
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            width: double.maxFinite,
            height: 1.h,
            color: appTheme.colorFF2D34,
          ),
          SizedBox(height: 16.h),
          Obx(() => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  controller.dailyProgressItems.length,
                  (index) => DailyProgressItemWidget(
                    dailyProgressItemModel:
                        controller.dailyProgressItems[index],
                  ),
                ),
              )),
          SizedBox(height: 16.h),
          _buildCurrentDayBonusCollection(),
        ],
      ),
    );
  }

  Widget _buildCurrentDayBonusCollection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.44, 0),
          end: Alignment(0.44, 1),
          colors: [Color(0xFFD8D908), appTheme.colorFF2FA0, Color(0xFF009E41)],
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
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup12532,
            height: 81.h,
            width: 51.h,
            alignment: Alignment.topLeft,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  border: Border.all(color: appTheme.whiteCustom),
                  borderRadius: BorderRadius.circular(12.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.color99FFF3,
                      blurRadius: 3.h,
                      offset: Offset(0, 2.h),
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant
                          .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21,
                      height: 68.h,
                      width: 68.h,
                    ),
                    Positioned(
                      top: 16.h,
                      left: 16.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.img1733643598,
                        height: 36.h,
                        width: 36.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Bonus: ₱ 0.20',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFFFF4),
              ),
              SizedBox(height: 32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Require',
                        style: TextStyleHelper.instance.body12Bold,
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFree1,
                    height: 40.h,
                    width: 120.h,
                  ),
                  Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgRectangle719,
                        height: 44.h,
                        width: 64.h,
                      ),
                      Positioned(
                        top: 0,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgZsofe1,
                          height: 68.h,
                          width: 56.h,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Text(
                          'Finished',
                          textAlign: TextAlign.center,
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.colorFF6677),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            bottom: 16.h,
            left: 8.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup12656,
              height: 64.h,
              width: 304.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavigationArrow() {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup12694,
        height: 24.h,
        width: 24.h,
      ),
    );
  }

  Widget _buildSignInRules() {
    return Container(
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
                height: 12.h,
                width: 12.h,
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
          Obx(() => Column(
                children: List.generate(
                  controller.signInRuleItems.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 12.h),
                    child: SignInRuleItemWidget(
                      signInRuleItemModel: controller.signInRuleItems[index],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
