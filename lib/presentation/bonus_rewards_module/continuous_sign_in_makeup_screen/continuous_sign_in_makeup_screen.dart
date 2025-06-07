import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/continuous_sign_in_makeup_controller.dart';
import './widgets/bonus_item_widget.dart';
import './widgets/requirement_item_widget.dart';
import './widgets/rule_item_widget.dart';
import './widgets/sign_in_day_card_widget.dart';

class ContinuousSignInMakeupScreen
    extends GetWidget<ContinuousSignInMakeupController> {
  ContinuousSignInMakeupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildAppBar(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Column(
                  children: [
                    SizedBox(height: 16.h),
                    _buildStatsHeader(),
                    SizedBox(height: 16.h),
                    _buildSignInSection(),
                    SizedBox(height: 16.h),
                    _buildRulesSection(),
                    SizedBox(height: 16.h),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      height: 86.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 2),
            blurRadius: 2,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 7.h,
            left: 10.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1,
              width: 356.h,
              height: 13.h,
            ),
          ),
          Positioned(
            top: 41.h,
            left: 16.h,
            child: GestureDetector(
              onTap: () => Get.back(),
              child: CustomImageView(
                imagePath: ImageConstant.imgStroke,
                width: 16.h,
                height: 8.h,
              ),
            ),
          ),
          Positioned(
            top: 39.h,
            left: 50.h,
            right: 120.h,
            child: Text(
              'Continuous Sign-Ins',
              style: TextStyleHelper.instance.title16Bold,
            ),
          ),
          Positioned(
            top: 38.h,
            right: 16.h,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup736,
                  width: 16.h,
                  height: 15.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  '₱19800.00',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.colorFFFFC6),
                ),
                SizedBox(width: 8.h),
                CustomImageView(
                  imagePath: ImageConstant.img1LightGreenA700,
                  width: 14.h,
                  height: 16.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsHeader() {
    return Container(
      height: 66.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFEF5A12), appTheme.colorFFFF8C, Color(0xFFFFA800)],
        ),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom.withAlpha(51),
            blurRadius: 4,
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
                color: appTheme.colorFFFFB5,
                borderRadius: BorderRadius.circular(15.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 30,
                    spreadRadius: 0,
                    offset: Offset(0, 4),
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
                    blurRadius: 21,
                    spreadRadius: 0,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 8.h,
            left: 172.h,
            child: Container(
              width: 50.h,
              height: 1.h,
              color: appTheme.color4CFFFA,
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
                          .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                      width: 26.h,
                      height: 28.h,
                    ),
                    SizedBox(width: 8.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '24',
                          style: TextStyleHelper.instance.title18Bold,
                        ),
                        Text(
                          'Number Of Sign-Ins',
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
                    SizedBox(width: 4.h),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '₱ 0.20',
                          style: TextStyleHelper.instance.title18Bold,
                        ),
                        Text(
                          'Received Total Bonus',
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
    );
  }

  Widget _buildSignInSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFFD8D9, width: 2.h),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sign-In Today: Day 4',
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
          ),
          SizedBox(height: 16.h),
          Container(
            height: 1.h,
            color: appTheme.colorFF2D34,
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img1733643593,
                    width: 18.h,
                    height: 18.h,
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
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img31,
                    width: 20.h,
                    height: 20.h,
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
          SizedBox(height: 24.h),
          _buildDailyCalendar(),
          SizedBox(height: 24.h),
          _buildUnlockRequirements(),
          SizedBox(height: 16.h),
          _buildActivityTimer(),
        ],
      ),
    );
  }

  Widget _buildDailyCalendar() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            controller.signInDays.length,
            (index) => SignInDayCardWidget(
              dayModel: controller.signInDays[index],
            ),
          ),
        ));
  }

  Widget _buildUnlockRequirements() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.44, 1.0],
          colors: [Color(0xFFD8D908), appTheme.colorFF2FA0, Color(0xFF009E41)],
        ),
        border: Border.all(color: appTheme.colorFFD8D9),
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom.withAlpha(51),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.all(12.h),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Opacity(
              opacity: 0.2,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup12532,
                width: 240.h,
                height: 325.h,
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BonusItemWidget(
                    bonusModel: controller.bonusModel.value,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12628,
                    width: 20.h,
                    height: 20.h,
                  ),
                  BonusItemWidget(
                    bonusModel: controller.extraModel.value,
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              Obx(() => Column(
                    children: List.generate(
                      controller.requirements.length,
                      (index) => Padding(
                        padding: EdgeInsets.only(bottom: 16.h),
                        child: RequirementItemWidget(
                          requirementModel: controller.requirements[index],
                        ),
                      ),
                    ),
                  )),
              SizedBox(height: 16.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorRedA700,
                    width: 14.h,
                    height: 14.h,
                  ),
                  SizedBox(width: 8.h),
                  Expanded(
                    child: Text(
                      'After the continuous sign-in is interrupted,\nit will return to Day 1 and start again.',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.redCustom, height: 1.17),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActivityTimer() {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFrame1Yellow70001,
          width: 22.h,
          height: 22.h,
        ),
        SizedBox(width: 8.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Activity Time: ',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFC0C8),
              ),
              TextSpan(
                text: '29Day 23:59:59',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF51A0),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRulesSection() {
    return Container(
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
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup12648,
                width: 13.h,
                height: 13.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'Sign-In Rules',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Obx(() => Column(
                children: List.generate(
                  controller.rules.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: RuleItemWidget(
                      ruleModel: controller.rules[index],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
