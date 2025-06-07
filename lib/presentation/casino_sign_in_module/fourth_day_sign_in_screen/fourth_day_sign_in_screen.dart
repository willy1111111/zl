import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/fourth_day_sign_in_controller.dart';
import './widgets/daily_sign_in_item.dart';
import './widgets/sign_in_rule_item.dart';

class FourthDaySignInScreen extends GetWidget<FourthDaySignInController> {
  const FourthDaySignInScreen({Key? key}) : super(key: key);

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
        backButtonIcon: ImageConstant.imgStroke,
        onBackPressed: () => Get.back(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            _buildStatsCard(),
            SizedBox(height: 16.h),
            _buildSignInProgress(),
            SizedBox(height: 16.h),
            _buildRulesSection(),
          ],
        ),
      ),
    );
  }

  Widget _buildStatsCard() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFEF5A12), appTheme.colorFFFF8C, Color(0xFFFFA800)],
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
          Padding(
            padding: EdgeInsets.all(20.h),
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
                          width: 26.h,
                        ),
                        SizedBox(width: 8.h),
                        Text(
                          '24',
                          style: TextStyleHelper.instance.title18Bold
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.img1733643594,
                          height: 24.h,
                          width: 24.h,
                        ),
                        SizedBox(width: 4.h),
                        Text(
                          '₱ 0.20',
                          style: TextStyleHelper.instance.title18Bold
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Container(
                  width: 50.h,
                  height: 1.h,
                  color: appTheme.color4CFFFA,
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
          ),
        ],
      ),
    );
  }

  Widget _buildSignInProgress() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFFD8D9, width: 2.h),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Sign-in Today: Day 4',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                  ),
                  border: Border.all(color: appTheme.colorFF4B55),
                  borderRadius: BorderRadius.circular(8.h),
                ),
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
                child: Text(
                  'Sign in',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            width: double.infinity,
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
                    height: 20.h,
                    width: 20.h,
                  ),
                  SizedBox(width: 8.h),
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
          Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 5,
                  crossAxisSpacing: 8.h,
                  mainAxisSpacing: 8.h,
                  childAspectRatio: 1.0,
                ),
                itemCount: controller.dailySignInItems.length,
                itemBuilder: (context, index) {
                  return DailySignInItem(
                    signInData: controller.dailySignInItems[index],
                  );
                },
              )),
          SizedBox(height: 16.h),
          _buildRewardsSection(),
          SizedBox(height: 16.h),
          Row(
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
          ),
        ],
      ),
    );
  }

  Widget _buildRewardsSection() {
    return Container(
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
            color: appTheme.whiteCustom,
            offset: Offset(0, 0),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              CustomImageView(
                imagePath: ImageConstant.imgGroup12685,
                height: 20.h,
                width: 20.h,
              ),
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
                      top: 4.h,
                      left: 4.h,
                      child: CustomImageView(
                        imagePath: ImageConstant
                            .img5dfa96056b444f5e96cae769e22f48911a71a1646f451kzw1wb2,
                        height: 64.h,
                        width: 64.h,
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
                          ),
                          border: Border.all(color: appTheme.whiteCustom),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.h),
                            bottomRight: Radius.circular(8.h),
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.h, vertical: 4.h),
                        child: Text(
                          'EXTRA',
                          style: TextStyleHelper.instance.body12Bold
                              .copyWith(color: appTheme.whiteCustom),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Bonus: ₱ 0.20',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFFFF4),
              ),
              Text(
                'Extra: ₱0.20',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFFFF4),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildDepositInfo(),
          SizedBox(height: 16.h),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVectorRedA700,
                height: 14.h,
                width: 14.h,
              ),
              SizedBox(width: 8.h),
              Expanded(
                child: Text(
                  'After the continuous sign-in is interrupted,\nit will return to Day 1 and start again.',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFFFF00),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          _buildUnlockedSection(),
        ],
      ),
    );
  }

  Widget _buildDepositInfo() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF006A,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom,
            offset: Offset(0, 0),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.44, 0),
                end: Alignment(0.44, 1),
                colors: [
                  Color(0xFFD8D908),
                  appTheme.colorFF2FA0,
                  Color(0xFF009E41)
                ],
              ),
              borderRadius: BorderRadius.circular(24.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.whiteCustom,
                  offset: Offset(0, 0),
                  blurRadius: 4.h,
                ),
              ],
            ),
            padding: EdgeInsets.all(12.h),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant
                      .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                  height: 40.h,
                  width: 36.h,
                ),
                SizedBox(height: 4.h),
                Text(
                  'Sign-in',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF85D4),
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
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4),
                ),
                Text(
                  'Deposit amount： ₱200',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle727,
                height: 67.h,
                width: 53.h,
              ),
              Positioned(
                top: 8.h,
                right: 8.h,
                child: Text(
                  'Undone',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildUnlockedSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF8096,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          Stack(
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
                padding: EdgeInsets.all(12.h),
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant
                          .imgE20d8191b75bf24128ad9a71c8758aec6b55b61f2cf0itmebv2,
                      height: 44.h,
                      width: 36.h,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Unlocked',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFC1C1),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 4.h,
                right: 8.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgStar1,
                  height: 6.h,
                  width: 7.h,
                ),
              ),
              Positioned(
                top: 8.h,
                left: 4.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgStar1,
                  height: 8.h,
                  width: 10.h,
                ),
              ),
            ],
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Times of deposits：1',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                Text(
                  'Deposit amount： ₱200',
                  style: TextStyleHelper.instance.body14Bold
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
              Positioned.fill(
                child: CustomImageView(
                  imagePath: ImageConstant.imgZsofe1,
                  height: 67.h,
                  width: 56.h,
                ),
              ),
              Positioned(
                bottom: 8.h,
                left: 4.h,
                child: Text(
                  'Finished',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF6677),
                ),
              ),
            ],
          ),
        ],
      ),
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
      padding: EdgeInsets.all(24.h),
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
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Obx(() => ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.signInRules.length,
                separatorBuilder: (context, index) => SizedBox(height: 12.h),
                itemBuilder: (context, index) {
                  return SignInRuleItem(
                    ruleData: controller.signInRules[index],
                  );
                },
              )),
        ],
      ),
    );
  }
}
