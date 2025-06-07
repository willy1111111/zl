import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_badge.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_info_row.dart';
import '../../widgets/custom_warning_message.dart';
import './controller/sign_in_rewards_controller.dart';
import './widgets/daily_reward_card_widget.dart';
import './widgets/special_reward_item_widget.dart';

class SignInRewardsScreen extends GetWidget<SignInRewardsController> {
  const SignInRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 16.h),
          child: Column(
            children: [
              _buildSignInStatsCard(),
              SizedBox(height: 16.h),
              _buildMainSignInCalendar(),
              SizedBox(height: 12.h),
              _buildSignInRulesSection(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
      bottomSheet: _buildDownloadPromotionOverlay(),
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
    );
  }

  Widget _buildSignInStatsCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      width: 345.h,
      height: 66.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFFEF5A12), appTheme.colorFFFF8C, Color(0xFFFFA800)],
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom,
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgMaskGroup,
            width: 345.h,
            height: 66.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 8.h,
            left: 59.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant
                      .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                  width: 26.h,
                  height: 28.h,
                ),
                SizedBox(width: 7.h),
                Text(
                  '24',
                  style: TextStyleHelper.instance.title18Bold,
                ),
              ],
            ),
          ),
          Positioned(
            top: 36.h,
            left: 20.h,
            child: Text(
              'Number of sign-ins',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            top: 10.h,
            right: 28.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img1733643593,
                  width: 24.h,
                  height: 24.h,
                ),
                SizedBox(width: 4.h),
                Text(
                  '₱ 0.20',
                  style: TextStyleHelper.instance.title18Bold,
                ),
              ],
            ),
          ),
          Positioned(
            top: 35.h,
            right: 33.h,
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

  Widget _buildMainSignInCalendar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      width: 345.h,
      height: 534.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        border: Border.all(color: appTheme.colorFFD8D9, width: 2.h),
        borderRadius: BorderRadius.circular(6.h),
      ),
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continuous sign-ins: 3',
                      style: TextStyleHelper.instance.title16Bold,
                    ),
                    CustomButton(
                      text: 'Sign in',
                      width: 85.h,
                      height: 30.h,
                      variant: CustomButtonVariant.gradient1,
                      onPressed: () => controller.onSignInPressed(),
                    ),
                  ],
                ),
                SizedBox(height: 11.h),
                Container(
                  width: 325.h,
                  height: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2D34,
                    borderRadius: BorderRadius.circular(0.5.h),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 38.h,
            left: 12.h,
            child: CustomInfoRow(
              iconPath: ImageConstant.img1733643593,
              labelText: 'Bonus: ',
              valueText: '₱ 0.20',
              labelColor: appTheme.whiteCustom,
              valueColor: appTheme.colorFFFFC6,
            ),
          ),
          Positioned(
            top: 36.h,
            left: 127.h,
            child: Container(
              width: 104.h,
              height: 18.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9.h),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 2.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img31,
                    width: 22.h,
                    height: 22.h,
                  ),
                  SizedBox(width: 2.h),
                  Text(
                    'Extra: ₱0.20',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 81.h,
            left: 10.h,
            child: Obx(() => Row(
                  children: List.generate(
                    controller.dailyRewards.length,
                    (index) => Padding(
                      padding: EdgeInsets.only(right: 6.h),
                      child: DailyRewardCardWidget(
                        dailyReward: controller.dailyRewards[index],
                        isCurrentDay: index == 3,
                      ),
                    ),
                  ),
                )),
          ),
          Positioned(
            top: 145.h,
            left: 24.h,
            child: Row(
              children: [
                Text('Day 1',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom)),
                SizedBox(width: 25.h),
                Text('Day 2',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom)),
                SizedBox(width: 25.h),
                Text('Day 3',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom)),
                SizedBox(width: 25.h),
                Text('Day 4',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom)),
                SizedBox(width: 25.h),
                Text('Day 5',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom)),
              ],
            ),
          ),
          Positioned(
            top: 173.h,
            left: 7.h,
            child: _buildSpecialRewardsSection(),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialRewardsSection() {
    return Container(
      width: 328.h,
      height: 345.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFFD8D9),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFD8D908), appTheme.colorFF2FA0, Color(0xFF009E41)],
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom,
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup12532,
            width: 240.h,
            height: 325.h,
          ),
          Positioned(
            top: 140.h,
            left: 13.h,
            child: Container(
              width: 305.h,
              height: 64.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF006A,
                borderRadius: BorderRadius.circular(6.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFFD8D9,
                    blurRadius: 4.h,
                  ),
                ],
              ),
              padding: EdgeInsets.all(8.h),
              child: Row(
                children: [
                  Container(
                    width: 50.h,
                    height: 49.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24.h),
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFD8D908),
                          appTheme.colorFF2FA0,
                          Color(0xFF009E41)
                        ],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.whiteCustom,
                          blurRadius: 4.h,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant
                              .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                          width: 36.h,
                          height: 39.h,
                        ),
                        Text(
                          'Require',
                          style: TextStyleHelper.instance.body13Bold,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 11.h),
                  Column(
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
                ],
              ),
            ),
          ),
          Positioned(
            top: 261.h,
            left: 13.h,
            child: Container(
              width: 305.h,
              height: 64.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF8096,
                borderRadius: BorderRadius.circular(6.h),
              ),
              padding: EdgeInsets.all(8.h),
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
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: CustomImageView(
                            imagePath: ImageConstant
                                .imgE20d8191b75bf24128ad9a71c8758aec6b55b61f2cf0itmebv2,
                            width: 36.h,
                            height: 43.h,
                          ),
                        ),
                        Positioned(
                          top: 3.h,
                          right: 3.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgStar1,
                            width: 7.h,
                            height: 6.h,
                          ),
                        ),
                        Positioned(
                          top: 9.h,
                          left: 3.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgStar1,
                            width: 10.h,
                            height: 8.h,
                          ),
                        ),
                        Positioned(
                          bottom: 3.h,
                          left: 0,
                          right: 0,
                          child: Text(
                            'Unlocked',
                            textAlign: TextAlign.center,
                            style: TextStyleHelper.instance.body12Bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 17.h),
                  Column(
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
                  Spacer(),
                  CustomBadge(
                    backgroundImagePath: ImageConstant.imgRectangle719,
                    overlayImagePath: ImageConstant.imgZsofe1,
                    text: 'Finished',
                    width: 45.h,
                    height: 65.h,
                    overlayWidth: 56.h,
                    overlayHeight: 67.h,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 26.h,
            left: 56.h,
            child: SpecialRewardItemWidget(
              specialReward: controller.specialRewards.value?.first,
            ),
          ),
          Positioned(
            top: 23.h,
            left: 205.h,
            child: SpecialRewardItemWidget(
              specialReward: controller.specialRewards.value?[1],
              hasExtraLabel: true,
            ),
          ),
          Positioned(
            top: 220.h,
            left: 13.h,
            child: CustomWarningMessage(),
          ),
        ],
      ),
    );
  }

  Widget _buildDownloadPromotionOverlay() {
    return Container(
      width: 375.h,
      height: 306.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0x00003F2C),
            appTheme.colorCE008E,
            Color(0xCE008E2A),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 5.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 68.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .imgF34da971e03d8ed6857774dd97be25b4979e089d3df1a7av9im1,
              width: 374.h,
              height: 212.h,
            ),
          ),
          Positioned(
            top: 24.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .imgC5630efa0be61f6463d81fb873a7448366ec3c434ea4a5pkeyx,
              width: 375.h,
              height: 50.h,
            ),
          ),
          Positioned(
            top: 77.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .img0ca323f5188d84eac7bb91d44e743376ee0a3fa6221e9dlc9icw,
              width: 215.h,
              height: 121.h,
            ),
          ),
          Positioned(
            top: 40.h,
            left: 21.h,
            child: CustomImageView(
              imagePath: ImageConstant.img170x77,
              width: 70.h,
              height: 77.h,
            ),
          ),
          Positioned(
            top: 57.h,
            right: 2.h,
            child: CustomImageView(
              imagePath: ImageConstant.img188x90,
              width: 88.h,
              height: 90.h,
            ),
          ),
          Positioned(
            top: 59.h,
            right: 78.h,
            child: CustomImageView(
              imagePath: ImageConstant.img119x29,
              width: 19.h,
              height: 29.h,
            ),
          ),
          Positioned(
            top: 192.h,
            right: 40.h,
            child: CustomImageView(
              imagePath: ImageConstant.img288x40,
              width: 88.h,
              height: 40.h,
            ),
          ),
          Positioned(
            top: 83.h,
            left: 114.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup12691,
                  width: 24.h,
                  height: 28.h,
                ),
                SizedBox(width: 7.h),
                Text(
                  'Faster, smoother gaming experience',
                  style:
                      TextStyleHelper.instance.body15Black.copyWith(shadows: [
                    Shadow(
                      offset: Offset(0, 1.h),
                      color: appTheme.colorFF4409,
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Positioned(
            top: 128.h,
            left: 114.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img79,
                  width: 24.h,
                  height: 28.h,
                ),
                SizedBox(width: 7.h),
                Text(
                  'Extra bonus for sign-in',
                  style:
                      TextStyleHelper.instance.body15Black.copyWith(shadows: [
                    Shadow(
                      offset: Offset(0, 1.h),
                      color: appTheme.colorFF4409,
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Positioned(
            top: 184.h,
            left: 133.h,
            child: Container(
              width: 203.h,
              height: 40.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4.h),
                border: Border.all(color: appTheme.colorFFF6D1),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFFEE7F), Color(0xFFEEAD3C)],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorGray90006,
                    width: 17.h,
                    height: 20.h,
                  ),
                  SizedBox(width: 11.h),
                  Text(
                    'Quick version (4.5MB)',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF2D0A),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 167.h,
            left: 198.h,
            child: Container(
              width: 132.h,
              height: 26.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.h),
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle669,
                    width: 132.h,
                    height: 26.h,
                  ),
                  Positioned(
                    top: 6.h,
                    left: 6.h,
                    child: Text(
                      'Enjoy more benefits!',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 233.h,
            left: 170.h,
            child: GestureDetector(
              onTap: () => controller.onContinueH5Pressed(),
              child: Column(
                children: [
                  Text(
                    'Continue to use H5',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  SizedBox(height: 2.h),
                  Container(
                    width: 126.h,
                    height: 1.h,
                    color: appTheme.whiteCustom,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 220.h,
            left: 110.h,
            child: CustomImageView(
              imagePath: ImageConstant.img2,
              width: 43.h,
              height: 36.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInRulesSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      width: 345.h,
      height: 223.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF292F),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF36383C), Color(0xFF25282D)],
        ),
      ),
      padding: EdgeInsets.all(12.h),
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
              SizedBox(width: 7.h),
              Text(
                'Sign-in rules',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 25.h),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12650,
                    width: 11.h,
                    height: 12.h,
                    margin: EdgeInsets.only(top: 2.h, right: 14.h),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12649,
                    width: 13.h,
                    height: 11.h,
                    margin: EdgeInsets.only(top: 2.h, right: 13.h),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12651,
                    width: 11.h,
                    height: 15.h,
                    margin: EdgeInsets.only(top: 2.h, right: 15.h),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12647,
                    width: 12.h,
                    height: 14.h,
                    margin: EdgeInsets.only(top: 2.h, right: 14.h),
                  ),
                ],
              ),
              SizedBox(height: 4.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup12647,
                    width: 12.h,
                    height: 14.h,
                    margin: EdgeInsets.only(top: 2.h, right: 14.h),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 25.h),
          RichText(
            text: TextSpan(
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089, height: 1.14),
              children: [
                TextSpan(text: '1. Log in to the game every day to sign in.\n'),
                TextSpan(
                    text:
                        '2. Continuous sign-ins will gradually unlock rewards.\n'),
                TextSpan(
                    text:
                        '3. Please pay attention! After the continuous sign-in is interrupted, it will return to Day 1 and start again.\n'),
                TextSpan(text: '4. Each round of sign-in has '),
                TextSpan(
                  text: '1',
                  style: TextStyleHelper.instance.textStyle21
                      .copyWith(color: appTheme.colorFF51A0),
                ),
                TextSpan(text: ' chance to re-sign.\n'),
                TextSpan(text: '5.Your remaining number of re-signments: '),
                TextSpan(
                  text: '0',
                  style: TextStyleHelper.instance.textStyle21
                      .copyWith(color: appTheme.colorFFF652),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
