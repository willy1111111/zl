import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/sign_in_re_sign_controller.dart';
import './widgets/daily_progress_item_widget.dart';

class SignInReSignScreen extends GetWidget<SignInReSignController> {
  const SignInReSignScreen({Key? key}) : super(key: key);

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
        backButtonIcon: ImageConstant.imgStroke,
        onBackPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.h),
        child: Column(
          children: [
            _buildHeaderCard(),
            SizedBox(height: 16.h),
            _buildSignInProgressSection(),
            SizedBox(height: 16.h),
            _buildRulesSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderCard() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0.0),
          end: Alignment(1.0, 0.0),
          colors: [Color(0xFFEF5A12), appTheme.colorFFFF8C, Color(0xFFFFA800)],
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            spreadRadius: 0,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
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
                    spreadRadius: 0,
                    blurRadius: 30.h,
                    offset: Offset(0, 4.h),
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
                    spreadRadius: 0,
                    blurRadius: 21.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant
                            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f126x28,
                        width: 26.h,
                        height: 28.h,
                      ),
                      SizedBox(width: 8.h),
                      Obx(() => Text(
                            controller.signInReSignModel.value?.signInCount
                                    ?.value ??
                                '24',
                            style: TextStyleHelper.instance.title18Bold
                                .copyWith(color: appTheme.whiteCustom),
                          )),
                    ],
                  ),
                  Container(
                    width: 50.h,
                    height: 1.h,
                    color: appTheme.color4CFFFA,
                    margin: EdgeInsets.only(top: 12.h),
                  ),
                  Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img1733643594,
                        width: 24.h,
                        height: 24.h,
                      ),
                      SizedBox(width: 4.h),
                      Obx(() => Text(
                            controller.signInReSignModel.value?.totalBonus
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
        ],
      ),
    );
  }

  Widget _buildSignInProgressSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(4.h),
        border: Border.all(color: appTheme.colorFFD8D9, width: 2.h),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() => Text(
                    controller
                            .signInReSignModel.value?.currentDayTitle?.value ??
                        'Sign-in Today: Day 4',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.whiteCustom),
                  )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                  ),
                  borderRadius: BorderRadius.circular(4.h),
                  border: Border.all(color: appTheme.colorFF85D4),
                ),
                child: Text(
                  'Re-signing',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
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
                    width: 18.h,
                    height: 18.h,
                  ),
                  SizedBox(width: 4.h),
                  Obx(() => Text(
                        'Bonus: ${controller.signInReSignModel.value?.dailyBonus?.value ?? '₱ 0.20'}',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.whiteCustom),
                      )),
                ],
              ),
              SizedBox(width: 16.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img31,
                    width: 20.h,
                    height: 20.h,
                  ),
                  SizedBox(width: 4.h),
                  Obx(() => Text(
                        'Extra: ${controller.signInReSignModel.value?.extraBonus?.value ?? '₱0.20'}',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.whiteCustom),
                      )),
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
          _buildDailyProgressGrid(),
          SizedBox(height: 16.h),
          _buildBonusCollectionArea(),
          SizedBox(height: 16.h),
          _buildActivityTimer(),
        ],
      ),
    );
  }

  Widget _buildDailyProgressGrid() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            controller.dailyProgressItems.length,
            (index) => DailyProgressItemWidget(
              dailyProgressModel: controller.dailyProgressItems[index],
            ),
          ),
        ));
  }

  Widget _buildBonusCollectionArea() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF363C41), Color(0xFF2B3035)],
        ),
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF292F),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom.withAlpha(77),
            spreadRadius: 0,
            blurRadius: 4.h,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup12532,
            width: 204.h,
            height: 120.h,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  borderRadius: BorderRadius.circular(12.h),
                  border: Border.all(color: appTheme.whiteCustom),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.color99FFF3,
                      spreadRadius: 0,
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
                      width: 68.h,
                      height: 70.h,
                    ),
                    Positioned(
                      top: 16.h,
                      left: 16.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.img1733643598,
                        width: 38.h,
                        height: 38.h,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.h),
              Obx(() => Text(
                    'Bonus: ${controller.signInReSignModel.value?.bonusAmount?.value ?? '₱ 0.20'}',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFFFFF4),
                  )),
              SizedBox(height: 16.h),
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.all(8.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.h),
                      decoration: BoxDecoration(
                        color: appTheme.colorFF2528,
                        borderRadius: BorderRadius.circular(24.h),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.whiteCustom.withAlpha(77),
                            spreadRadius: 0,
                            blurRadius: 4.h,
                            offset: Offset(0, 0),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant
                                .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                            width: 36.h,
                            height: 39.h,
                          ),
                          Text(
                            'Sign-in',
                            style: TextStyleHelper.instance.body13Bold,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8.h),
                    Expanded(
                      child: Obx(() => Text(
                            '${controller.signInReSignModel.value?.depositInfo?.value ?? 'Times of deposits：2\nDeposit amount： ₱200'}',
                            style: TextStyleHelper.instance.body14Bold.copyWith(
                                color: appTheme.whiteCustom, height: 1.3),
                          )),
                    ),
                  ],
                ),
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
          imagePath: ImageConstant.imgFrame1,
          width: 22.h,
          height: 22.h,
        ),
        SizedBox(width: 8.h),
        Obx(() => RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Activity Time: ',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFFC0C8),
                  ),
                  TextSpan(
                    text: controller
                            .signInReSignModel.value?.activityTime?.value ??
                        '29Day 23:59:59',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF51A0),
                  ),
                ],
              ),
            )),
      ],
    );
  }

  Widget _buildRulesSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF36383C), Color(0xFF25282D)],
        ),
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF292F),
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
              SizedBox(width: 8.h),
              Text(
                'Sign-in rules',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup12650,
                width: 11.h,
                height: 12.h,
                margin: EdgeInsets.only(top: 4.h),
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Obx(() => RichText(
                      text: TextSpan(
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.colorFF8089, height: 1.2),
                        children: [
                          TextSpan(
                              text:
                                  '1. Log in to the game every day to sign in.\n'),
                          TextSpan(
                              text:
                                  '2. Continuous sign-ins will gradually unlock rewards.\n'),
                          TextSpan(
                              text:
                                  '3. Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.\n'),
                          TextSpan(text: '4. Each round of sign-in has '),
                          TextSpan(
                            text: '1',
                            style: TextStyleHelper.instance.textStyle29,
                          ),
                          TextSpan(text: ' chance to re-sign.\n'),
                          TextSpan(
                              text:
                                  '5.Your remaining number of re-signments: '),
                          TextSpan(
                            text: controller.signInReSignModel.value
                                    ?.remainingReSignments?.value ??
                                '0',
                            style: TextStyleHelper.instance.textStyle29
                                .copyWith(color: appTheme.colorFFF652),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Column(
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12649,
                    width: 13.h,
                    height: 11.h,
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12651,
                    width: 11.h,
                    height: 15.h,
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12647,
                    width: 12.h,
                    height: 14.h,
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12647,
                    width: 12.h,
                    height: 14.h,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
