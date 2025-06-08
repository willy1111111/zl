import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/spin_game_cash_withdrawal_controller.dart';
import './widgets/activity_item_widget.dart';

class SpinGameCashWithdrawalScreen
    extends GetWidget<SpinGameCashWithdrawalController> {
  SpinGameCashWithdrawalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: Get.height,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1137,
              height: 1132.h,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),

            // Black Overlay
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: appTheme.colorFF0000,
              child: Stack(
                children: [
                  // Main Content Card
                  _buildMainContentCard(),

                  // Activity Feed Frame
                  _buildActivityFeedFrame(),

                  // Activity List
                  _buildActivityList(),

                  // Close Button
                  _buildCloseButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainContentCard() {
    return Positioned(
      top: 125.h,
      left: 15.h,
      child: Container(
        width: 345.h,
        height: 520.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF3F444B), Color(0xFF3F444B)],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.h),
            topRight: Radius.circular(20.h),
            bottomLeft: Radius.circular(12.h),
            bottomRight: Radius.circular(12.h),
          ),
        ),
        child: Stack(
          children: [
            // Background Gradient Section
            _buildBackgroundGradientSection(),

            // Game Elements
            _buildGameElements(),

            // Main Title
            _buildMainTitle(),

            // Quick Cash Withdrawal Text
            _buildQuickCashText(),

            // Amount Display
            _buildAmountDisplay(),

            // Progress Bar Container
            _buildProgressBar(),

            // Progress Text
            _buildProgressText(),

            // Earn More Cash Button
            _buildEarnMoreCashButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundGradientSection() {
    return Positioned(
      top: 0,
      left: 0,
      child: Container(
        width: 345.h,
        height: 140.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF30B824), Color(0xFF062730)],
          ),
          borderRadius: BorderRadius.circular(12.h),
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgF1,
              height: 140.h,
              width: 345.h,
              fit: BoxFit.cover,
              radius: BorderRadius.circular(12.h),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: 345.h,
                height: 78.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF3F444B), Color(0xFF3F444B)],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGameElements() {
    return Stack(
      children: [
        Positioned(
          top: 55.h,
          left: 111.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgTdr22,
            height: 79.h,
            width: 84.h,
          ),
        ),
        Positioned(
          top: 22.h,
          left: 121.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1100,
            height: 121.h,
            width: 121.h,
          ),
        ),
        Positioned(
          top: 86.h,
          left: 192.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage1104,
            height: 39.h,
            width: 41.h,
          ),
        ),
      ],
    );
  }

  Widget _buildMainTitle() {
    return Positioned(
      top: 122.h,
      left: 53.h,
      child: Container(
        width: 239.h,
        height: 43.h,
        child: Text(
          'Get ₱500 for free',
          style: TextStyleHelper.instance.headline26Black
              .copyWith(color: appTheme.colorFFFFFF, height: 1.42),
        ),
      ),
    );
  }

  Widget _buildQuickCashText() {
    return Positioned(
      top: 167.h,
      left: 107.h,
      child: Container(
        width: 132.h,
        height: 19.h,
        child: Text(
          'Quick cash withdrawl',
          style: TextStyleHelper.instance.body14
              .copyWith(color: appTheme.colorFFFFFF, height: 1.21),
        ),
      ),
    );
  }

  Widget _buildAmountDisplay() {
    return Positioned(
      top: 177.h,
      left: 74.h,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup12734,
            height: 38.h,
            width: 40.h,
            margin: EdgeInsets.only(top: 12.h),
          ),
          SizedBox(width: 14.h),
          Obx(() => Text(
                controller.withdrawalAmount.value,
                style: TextStyleHelper.instance.display40Black
                    .copyWith(height: 1.43),
              )),
        ],
      ),
    );
  }

  Widget _buildProgressBar() {
    return Positioned(
      bottom: 25.h,
      left: 25.h,
      child: Container(
        width: 295.h,
        height: 17.h,
        decoration: BoxDecoration(
          color: appTheme.color7FA6AB,
          borderRadius: BorderRadius.circular(8.h),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 1.h,
              left: 0,
              child: Container(
                width: 183.h,
                height: 14.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFFFF7F00), Color(0xFFFFE900)],
                  ),
                  borderRadius: BorderRadius.circular(7.h),
                ),
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSubtractWhiteA700,
                      height: 7.h,
                      width: 183.h,
                    ),
                    ...List.generate(12, (index) {
                      return Positioned(
                        left: (6 + (index * 14)).h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle1248,
                          height: 14.h,
                          width: 12.h,
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Obx(() => Text(
                    controller.progressPercentage.value,
                    style: TextStyleHelper.instance.body12SemiBold
                        .copyWith(height: 1.25),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressText() {
    return Positioned(
      bottom: 49.h,
      left: 49.h,
      child: Container(
        width: 247.h,
        height: 19.h,
        child: RichText(
          text: TextSpan(
            style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
            children: [
              TextSpan(
                text: 'You still need ',
                style: TextStyleHelper.instance.textStyle24
                    .copyWith(color: appTheme.colorFF8089),
              ),
              TextSpan(
                text: '7.64',
                style: TextStyleHelper.instance.bodyTextBold,
              ),
              TextSpan(
                text: ' to withdraw to Wallet',
                style: TextStyleHelper.instance.textStyle24
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEarnMoreCashButton() {
    return Positioned(
      bottom: 10.h,
      left: 10.h,
      child: CustomGradientButton(
        text: 'Earn more cash',
        width: 325.h,
        height: 40.h,
        borderRadius: 20.h,
        gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
        textStyle: TextStyleHelper.instance.body14Bold2
            .copyWith(color: appTheme.colorFFFFFF, height: 1.21),
        onPressed: () => controller.onEarnMoreCashPressed(),
      ),
    );
  }

  Widget _buildActivityFeedFrame() {
    return Positioned(
      top: 489.h,
      left: 11.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgFrame2131329793,
        height: 159.h,
        width: 352.h,
      ),
    );
  }

  Widget _buildActivityList() {
    return Positioned(
      top: 520.h,
      left: 37.h,
      child: Container(
        width: 296.h,
        child: Obx(() => Column(
              children: List.generate(
                controller.activityItems.length,
                (index) => ActivityItemWidget(
                  activityItem: controller.activityItems[index],
                ),
              ),
            )),
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      top: 655.h,
      left: 172.h,
      child: GestureDetector(
        onTap: () => controller.onClosePressed(),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup848,
          height: 32.h,
          width: 32.h,
        ),
      ),
    );
  }
}
