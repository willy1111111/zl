import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/fifth_day_sign_in_controller.dart';
import './widgets/daily_progress_item_widget.dart';
import './widgets/sign_in_rule_item_widget.dart';

class FifthDaySignInScreen extends GetWidget<FifthDaySignInController> {
  const FifthDaySignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 12.h),
            _buildOrangeStatsCard(),
            SizedBox(height: 16.h),
            _buildSignInProgressSection(),
            SizedBox(height: 16.h),
            _buildSignInRulesSection(),
            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Continuous sign-ins',
      showBalance: true,
      balanceAmount: '₱19800.00',
      balanceIcon: ImageConstant.imgGroup736,
      lightningIcon: ImageConstant.img1,
      backButtonIcon: ImageConstant.imgStroke,
      onBackPressed: () => Get.back(),
      height: 86.h,
    );
  }

  Widget _buildOrangeStatsCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        height: 66.h,
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
                  color: appTheme.colorB2FFB5,
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
                  color: appTheme.color99FFE3,
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
            Positioned(
              top: 10.h,
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant
                                .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
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
                      SizedBox(height: 4.h),
                      Text(
                        'Number of sign-ins',
                        style: TextStyleHelper.instance.body14BoldArial
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
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
                      SizedBox(height: 4.h),
                      Text(
                        'Received total bonus',
                        style: TextStyleHelper.instance.body14BoldArial
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSignInProgressSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(6.h),
          border: Border.all(
            color: appTheme.colorFFD8D9,
            width: 2.h,
          ),
        ),
        padding: EdgeInsets.all(12.h),
        child: Column(
          children: [
            _buildSectionHeader(),
            SizedBox(height: 16.h),
            _buildBonusInfo(),
            SizedBox(height: 16.h),
            Container(
              width: double.maxFinite,
              height: 1.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2D34,
                borderRadius: BorderRadius.circular(0.5.h),
              ),
            ),
            SizedBox(height: 16.h),
            _buildDailyProgressCards(),
            SizedBox(height: 16.h),
            _buildSpecialBonusSection(),
            SizedBox(height: 16.h),
            _buildActivityTimer(),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Sign-in Today: Day 5',
          style: TextStyleHelper.instance.title16BoldArial
              .copyWith(color: appTheme.whiteCustom),
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF363C41),
                    appTheme.colorFF2B30,
                  ],
                ),
                borderRadius: BorderRadius.circular(6.h),
                border: Border.all(color: appTheme.colorFF4B55),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12663,
                    height: 16.h,
                    width: 16.h,
                  ),
                  SizedBox(width: 4.h),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [appTheme.whiteCustom, Color(0xFFEBFDEE)],
                    ).createShader(bounds),
                    child: Text(
                      'Received',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 8.h),
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
                borderRadius: BorderRadius.circular(6.h),
                border: Border.all(color: appTheme.colorFF85D4),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant
                        .imgE20d8191b75bf24128ad9a71c8758aec6b55b61f2cf0itmebv220x21,
                    height: 21.h,
                    width: 20.h,
                  ),
                  SizedBox(width: 4.h),
                  ShaderMask(
                    shaderCallback: (bounds) => LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [appTheme.whiteCustom, Color(0xFFEBFDEE)],
                    ).createShader(bounds),
                    child: Text(
                      'Unlock',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBonusInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1733643594,
              height: 18.h,
              width: 18.h,
            ),
            SizedBox(width: 8.h),
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
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img31,
              height: 20.h,
              width: 20.h,
            ),
            SizedBox(width: 8.h),
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

  Widget _buildDailyProgressCards() {
    return Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: controller.dailyProgressItems.asMap().entries.map((entry) {
            int index = entry.key;
            return DailyProgressItemWidget(
              dailyProgressItemModel: entry.value,
              index: index,
            );
          }).toList(),
        ));
  }

  Widget _buildSpecialBonusSection() {
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
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFFD8D9),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom,
            offset: Offset(0, 0),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Opacity(
              opacity: 0.2,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup12532,
                height: 325.h,
                width: 204.h,
              ),
            ),
          ),
          Column(
            children: [
              Container(
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
                padding: EdgeInsets.all(8.h),
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant
                          .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo21,
                      height: 70.h,
                      width: 68.h,
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
              ),
              SizedBox(height: 16.h),
              Text(
                'Bonus: ₱ 0.20',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFFFFF4),
              ),
              SizedBox(height: 16.h),
              Container(
                decoration: BoxDecoration(
                  color: appTheme.colorFF8096,
                  borderRadius: BorderRadius.circular(6.h),
                ),
                padding: EdgeInsets.all(8.h),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: appTheme.colorFF6B79,
                        borderRadius: BorderRadius.circular(24.h),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.whiteCustom,
                            offset: Offset(0, 0),
                            blurRadius: 4.h,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(8.h),
                      child: Column(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant
                                .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f126x28,
                            height: 39.h,
                            width: 36.h,
                          ),
                          SizedBox(height: 4.h),
                          ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFEEEEEE), Color(0xFFC1C1C1)],
                            ).createShader(bounds),
                            child: Text(
                              'Sign-in',
                              style: TextStyleHelper.instance.body13BoldArial,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12.h),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Times of deposits：2',
                            style: TextStyleHelper.instance.body14BoldArial
                                .copyWith(color: appTheme.whiteCustom),
                          ),
                          Text(
                            'Deposit amount： ₱200',
                            style: TextStyleHelper.instance.body14BoldArial
                                .copyWith(color: appTheme.whiteCustom),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgRectangle719,
                          height: 65.h,
                          width: 45.h,
                        ),
                        Positioned(
                          top: 0,
                          left: 0,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgZsofe1,
                            height: 67.h,
                            width: 56.h,
                          ),
                        ),
                        Positioned(
                          top: 8.h,
                          left: 8.h,
                          child: Text(
                            'Finished',
                            style: TextStyleHelper.instance.body13BoldArial
                                .copyWith(color: appTheme.colorFF6677),
                          ),
                        ),
                      ],
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
          height: 22.h,
          width: 22.h,
        ),
        SizedBox(width: 8.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Activity Time: ',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFFC0C8),
              ),
              TextSpan(
                text: '29Day 23:59:59',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(color: appTheme.colorFF51A0),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSignInRulesSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
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
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup12648,
                  height: 13.h,
                  width: 13.h,
                ),
                SizedBox(width: 12.h),
                Text(
                  'Sign-in rules',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Obx(() => Column(
                  children: controller.signInRules.asMap().entries.map((entry) {
                    return SignInRuleItemWidget(
                      signInRuleItemModel: entry.value,
                      index: entry.key,
                    );
                  }).toList(),
                )),
          ],
        ),
      ),
    );
  }
}
