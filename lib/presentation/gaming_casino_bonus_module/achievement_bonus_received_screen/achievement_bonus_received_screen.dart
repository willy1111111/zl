import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/achievement_bonus_received_controller.dart';
import './widgets/achievement_item_widget.dart';

class AchievementBonusReceivedScreen
    extends GetWidget<AchievementBonusReceivedController> {
  AchievementBonusReceivedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Background Money Glow Effect
          Positioned(
            top: 189.h,
            left: 121.h,
            child: Container(
              width: 143.h,
              height: 143.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0x4CD3F760),
                    appTheme.color4C8CF6,
                  ],
                ),
                borderRadius: BorderRadius.circular(71.5.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 95.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
            ),
          ),

          // Main Achievement Dialog
          Positioned(
            top: 216.h,
            left: 19.h,
            child: Container(
              width: 340.h,
              height: 669.h,
              padding: EdgeInsets.all(16.h),
              decoration: BoxDecoration(
                color: appTheme.color300303,
                border: Border.all(color: appTheme.color448E8E),
                borderRadius: BorderRadius.circular(10.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 11.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Achievement List
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(height: 44.h),
                        Obx(() => ListView.separated(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.achievementItems.length,
                              separatorBuilder: (context, index) => Container(
                                height: 1.h,
                                color: appTheme.colorFF4045,
                                margin: EdgeInsets.symmetric(vertical: 16.h),
                              ),
                              itemBuilder: (context, index) {
                                return AchievementItemWidget(
                                  achievementItem:
                                      controller.achievementItems[index],
                                  onClaimTap: () =>
                                      controller.onClaimAchievement(index),
                                );
                              },
                            )),
                      ],
                    ),
                  ),

                  // Header Vector
                  Positioned(
                    top: 14.h,
                    left: 10.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgWhiteA700,
                      width: 588.h,
                      height: 30.h,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Top Header with App Bar
          CustomAppBar(
            title: '',
            height: 68.h,
            showBackButton: false,
            showLogo: true,
            showBalance: true,
            balanceAmount: '₱1980.00',
            onBalancePressed: () => controller.onBalanceTap(),
          ),

          // Countdown and Status
          Positioned(
            top: 146.h,
            left: 13.h,
            child: Text(
              'countdown: 22days 22hr 9min 30 sec',
              style: TextStyleHelper.instance.body12
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),

          Positioned(
            top: 155.h,
            left: 329.h,
            child: Text(
              'rules',
              style: TextStyleHelper.instance.label10,
            ),
          ),

          Positioned(
            top: 186.h,
            left: 18.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'We\'re ',
                    style: TextStyleHelper.instance.label10
                        .copyWith(color: appTheme.colorFF8384),
                  ),
                  TextSpan(
                    text: '5 missions short of completion.',
                    style: TextStyleHelper.instance.label10
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                ],
              ),
            ),
          ),

          // Question Mark Icon
          Positioned(
            top: 140.h,
            left: 332.h,
            child: Container(
              width: 16.h,
              height: 19.h,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.colorFFFFC6),
                borderRadius: BorderRadius.circular(8.h),
              ),
              child: Center(
                child: Text(
                  '?',
                  style: TextStyleHelper.instance.body12Black
                      .copyWith(color: appTheme.colorFFFFC6),
                ),
              ),
            ),
          ),

          Positioned(
            top: 162.h,
            left: 192.h,
            child: Text(
              '40/100',
              style: TextStyleHelper.instance.label10,
            ),
          ),

          // Bottom Navigation Bar
          Positioned(
            top: 68.h,
            left: 0,
            right: 0,
            child: Container(
              height: 54.h,
              color: appTheme.colorFF1012,
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildBottomNavItem(
                    ImageConstant.imgFrame,
                    'invite',
                    false,
                    () => controller.navigateToInvite(),
                  ),
                  _buildBottomNavItem(
                    ImageConstant.imgFrameLightGreenA700,
                    'Achievement',
                    true,
                    () {},
                  ),
                  _buildBottomNavItem(
                    ImageConstant.imgFrameBlueGray40020x20,
                    'Teams',
                    false,
                    () => controller.navigateToTeams(),
                  ),
                  _buildBottomNavItem(
                    ImageConstant.imgFrameBlueGray400,
                    'Incomes',
                    false,
                    () => controller.navigateToIncomes(),
                  ),
                  _buildBottomNavItem(
                    ImageConstant.imgGroup1321314646,
                    'bonus',
                    false,
                    () => controller.navigateToBonus(),
                  ),
                  _buildBottomNavItem(
                    ImageConstant.imgFrame20x20,
                    'FAQ',
                    false,
                    () => controller.navigateToFaq(),
                  ),
                ],
              ),
            ),
          ),

          // Success Dialog Overlay
          Obx(() => controller.showSuccessDialog.value
              ? _buildSuccessDialog()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildBottomNavItem(
      String iconPath, String title, bool isActive, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: iconPath,
            width: 20.h,
            height: 20.h,
          ),
          SizedBox(height: 4.h),
          Text(
            title,
            style: TextStyleHelper.instance.body12.copyWith(
                color: isActive ? appTheme.whiteCustom : appTheme.colorFF8089),
          ),
          if (isActive)
            Container(
              margin: EdgeInsets.only(top: 2.h),
              width: 36.h,
              height: 2.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF85D4,
                borderRadius: BorderRadius.circular(1.h),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildSuccessDialog() {
    return Container(
      width: 375.h,
      height: 812.h,
      color: appTheme.blackCustom,
      child: Stack(
        children: [
          // Background Images
          Positioned(
            top: 79.h,
            child: CustomImageView(
              imagePath: ImageConstant.img2281x375,
              width: 375.h,
              height: 281.h,
            ),
          ),
          Positioned(
            top: 300.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1375x375,
              width: 375.h,
              height: 375.h,
            ),
          ),

          // Success Dialog Content
          Positioned(
            top: 159.h,
            left: 24.h,
            child: Container(
              width: 327.h,
              height: 357.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(12.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 8.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Achievement Glow Effect
                  Positioned(
                    top: 247.h,
                    child: Container(
                      width: 327.h,
                      height: 110.h,
                      decoration: BoxDecoration(
                        color: appTheme.color5954E7,
                        borderRadius: BorderRadius.circular(55.h),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.colorFF8888,
                            blurRadius: 180.h,
                            offset: Offset(0, 4.h),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Got It Button
                  Positioned(
                    bottom: 14.h,
                    left: 15.h,
                    child: CustomButton(
                      text: 'Got It',
                      width: 296.h,
                      height: 50.h,
                      borderRadius: 25.h,
                      gradientType: CustomButtonGradient.orange,
                      onPressed: () => controller.closeSuccessDialog(),
                    ),
                  ),

                  // Money Stack Images
                  Positioned(
                    top: 25.h,
                    left: 80.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgF1,
                      width: 165.h,
                      height: 165.h,
                    ),
                  ),
                  Positioned(
                    top: 47.h,
                    left: 117.h,
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                      width: 99.h,
                      height: 99.h,
                    ),
                  ),
                  Positioned(
                    top: 61.h,
                    left: 98.h,
                    child: CustomImageView(
                      imagePath: ImageConstant
                          .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                      width: 99.h,
                      height: 99.h,
                    ),
                  ),

                  // Bonus Amount
                  Positioned(
                    top: 160.h,
                    left: 112.h,
                    child: Text(
                      '₱12.00',
                      style: TextStyleHelper.instance.headline32Bold,
                    ),
                  ),

                  // Description Text
                  Positioned(
                    top: 207.h,
                    left: 29.h,
                    child: SizedBox(
                      width: 266.h,
                      child: Text(
                        'New user experience bonus ৳12.00 has been issued to your account wallet',
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.title16Bold
                            .copyWith(color: appTheme.colorFFE1E1, height: 1.5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Success Banner
          Positioned(
            top: 147.h,
            left: 84.h,
            child: SizedBox(
              width: 207.h,
              height: 30.h,
              child: Text(
                'Received successfully',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.title22LilitaOne,
              ),
            ),
          ),

          // Star Icon
          Positioned(
            top: 554.h,
            left: 171.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup,
              width: 32.h,
              height: 32.h,
            ),
          ),

          // Additional Images
          Positioned(
            top: 88.h,
            left: 119.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage360,
              width: 136.h,
              height: 78.h,
            ),
          ),
          Positioned(
            top: 133.h,
            left: 38.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage540,
              width: 298.h,
              height: 78.h,
            ),
          ),
        ],
      ),
    );
  }
}
