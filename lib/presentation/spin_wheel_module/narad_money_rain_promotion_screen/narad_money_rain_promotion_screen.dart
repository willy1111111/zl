import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_money_overlay.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_widget.dart';
import './controller/narad_money_rain_promotion_controller.dart';
import './widgets/game_item_widget.dart';
import './widgets/sidebar_item_widget.dart';

class NaradMoneyRainPromotionScreen
    extends GetWidget<NaradMoneyRainPromotionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Money Rain Animation Background
          CustomFloatingMoneyOverlay(
            floatingItems: [
              CustomFloatingItem(
                imagePath: ImageConstant.img6554,
                left: 177,
                top: 34,
                width: 53,
                height: 54,
              ),
              CustomFloatingItem(
                imagePath: ImageConstant.img6563,
                left: 75,
                top: 89,
                width: 69,
                height: 70,
                animationDelay: Duration(milliseconds: 500),
              ),
              CustomFloatingItem(
                imagePath: ImageConstant.img6563,
                left: 221,
                top: 100,
                width: 69,
                height: 70,
                animationDelay: Duration(seconds: 1),
              ),
              CustomFloatingItem(
                imagePath: ImageConstant.img6567,
                left: 146,
                top: 614,
                width: 52,
                height: 52,
                animationDelay: Duration(milliseconds: 1500),
              ),
              CustomFloatingItem(
                imagePath: ImageConstant.img6568,
                left: 310,
                top: 661,
                width: 50,
                height: 49,
                animationDelay: Duration(seconds: 2),
              ),
              CustomFloatingItem(
                imagePath: ImageConstant.img6555,
                left: 295,
                top: 34,
                width: 53,
                height: 48,
                animationDelay: Duration(milliseconds: 2500),
              ),
              CustomFloatingItem(
                imagePath: ImageConstant.img6559,
                left: 235,
                top: 654,
                width: 45,
                height: 45,
                animationDelay: Duration(seconds: 3),
              ),
            ],
          ),

          // Main Content
          Column(
            children: [
              // Top Promotional Banner
              CustomAppBar(
                showPromotionalContent: true,
                profileImagePath: ImageConstant.img112,
                promotionalText: 'MANY BENEFITS FOR NEWCOMERS',
                backgroundImagePath: ImageConstant
                    .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
                starCount: 5,
                onDownloadTap: () => controller.onDownloadTap(),
                onCloseTap: () => controller.onCloseTap(),
                backgroundColor: appTheme.colorFF478A,
              ),

              // Logo and Balance Section
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLogowj93128x78,
                      height: 28.h,
                      width: 78.h,
                    ),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup736,
                          height: 16.h,
                          width: 15.h,
                        ),
                        SizedBox(width: 8.h),
                        Obx(() => Text(
                              controller.balance.value ?? '',
                              style: TextStyleHelper.instance.title16Bold
                                  .copyWith(color: appTheme.colorFFFFB9),
                            )),
                        SizedBox(width: 8.h),
                        CustomImageView(
                          imagePath: ImageConstant.img1LightGreenA700,
                          height: 14.h,
                          width: 16.h,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Deposit/Withdrawal Buttons
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'Withdrawal',
                        iconPath: ImageConstant.imgVectorWhiteA700,
                        variant: CustomButtonVariant.withdrawal,
                        height: 36.h,
                        backgroundColor: appTheme.colorFFFFC6,
                        onTap: () => controller.onWithdrawalTap(),
                      ),
                    ),
                    SizedBox(width: 4.h),
                    Expanded(
                      child: CustomButton(
                        text: 'Deposit',
                        iconPath: ImageConstant.imgVectorWhiteA70011x16,
                        variant: CustomButtonVariant.withdrawal,
                        height: 36.h,
                        backgroundColor: appTheme.colorFF76CD,
                        onTap: () => controller.onDepositTap(),
                      ),
                    ),
                  ],
                ),
              ),

              // Main Content Area
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  margin: EdgeInsets.only(top: 16.h),
                  child: Column(
                    children: [
                      // Promotional Banner Image
                      CustomImageView(
                        imagePath: ImageConstant.img130x345,
                        height: 130.h,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),

                      SizedBox(height: 16.h),

                      // Scrolling Message
                      Container(
                        height: 34.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF2528,
                          borderRadius: BorderRadius.circular(17.h),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 8.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant
                                  .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
                              height: 19.h,
                              width: 24.h,
                            ),
                            SizedBox(width: 8.h),
                            Expanded(
                              child: CustomRichTextWidget(
                                isFlexible: true,
                                textSpans: [
                                  CustomTextSpanData(
                                    text: '🔥',
                                    color: appTheme.colorFF85D4,
                                    fontSize: 14.fSize,
                                    fontWeight: FontWeight.normal,
                                  ),
                                  CustomTextSpanData(
                                    text: 'The recharge of th',
                                    color: appTheme.colorFF85D4,
                                    fontSize: 14.fSize,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  CustomTextSpanData(
                                    text: 'e🔥',
                                    color: appTheme.colorFF85D4,
                                    fontSize: 14.fSize,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ],
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img1Red900,
                              height: 16.h,
                              width: 16.h,
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 16.h),

                      // Jackpot Section
                      Container(
                        height: 44.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF072700),
                              appTheme.colorFF1546,
                              Color(0xFF082701)
                            ],
                          ),
                          border: Border.all(color: appTheme.colorFF786A),
                          borderRadius: BorderRadius.circular(4.h),
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 4.h,
                              top: 4.h,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgIntersect,
                                height: 42.h,
                                width: 280.h,
                              ),
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgJackpot1,
                                    height: 22.h,
                                    width: 86.h,
                                  ),
                                  SizedBox(width: 16.h),
                                  Obx(() => Text(
                                        controller.jackpotAmount.value ?? '',
                                        style: TextStyleHelper
                                            .instance.headline24Black,
                                      )),
                                  SizedBox(width: 8.h),
                                  CustomImageView(
                                    imagePath: ImageConstant.img119x31,
                                    height: 19.h,
                                    width: 31.h,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.img219x31,
                                    height: 19.h,
                                    width: 31.h,
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              left: 4.h,
                              top: 0,
                              child: CustomImageView(
                                imagePath: ImageConstant.img155x70,
                                height: 55.h,
                                width: 70.h,
                              ),
                            ),
                            Positioned(
                              left: 0,
                              top: 0,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup1084,
                                height: 108.h,
                                width: 72.h,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 16.h),

                      // Game Icons Grid
                      Expanded(
                        child: Obx(() => GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 16.h,
                                mainAxisSpacing: 16.h,
                                childAspectRatio: 0.8,
                              ),
                              itemCount: controller.gameItems.length,
                              itemBuilder: (context, index) {
                                return GameItemWidget(
                                  gameItem: controller.gameItems[index],
                                  onTap: () => controller.onGameItemTap(index),
                                );
                              },
                            )),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Left Sidebar
          Positioned(
            left: 0,
            top: 68.h,
            child: Container(
              width: 66.h,
              height: 744.h,
              child: Column(
                children: [
                  Obx(() => Column(
                        children: controller.sidebarItems.map((item) {
                          return SidebarItemWidget(
                            sidebarItem: item,
                            onTap: () => controller.onSidebarItemTap(item),
                          );
                        }).toList(),
                      )),
                  Spacer(),
                  Container(
                    margin: EdgeInsets.only(bottom: 84.h),
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup1084,
                          height: 108.h,
                          width: 72.h,
                        ),
                        SizedBox(height: 8.h),
                        Column(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img11,
                              height: 36.h,
                              width: 36.h,
                            ),
                            SizedBox(height: 4.h),
                            Text(
                              'Collect',
                              style: TextStyleHelper.instance.body12Bold
                                  .copyWith(color: appTheme.colorFF8089),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          // VIP Sidebar
          Positioned(
            right: 0,
            top: 533.h,
            child: Container(
              width: 67.h,
              height: 369.h,
              decoration: BoxDecoration(
                color: appTheme.color0E1900,
                border: Border.all(color: appTheme.colorFF5DA4),
                borderRadius: BorderRadius.circular(33.h),
              ),
              padding: EdgeInsets.symmetric(vertical: 12.h),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVip7,
                    height: 50.h,
                    width: 45.h,
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    height: 1.h,
                    width: 50.h,
                    color: appTheme.colorFF2548,
                  ),
                  SizedBox(height: 12.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup11853,
                    height: 50.h,
                    width: 50.h,
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    height: 1.h,
                    width: 50.h,
                    color: appTheme.colorFF2548,
                  ),
                  SizedBox(height: 12.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup566,
                    height: 50.h,
                    width: 50.h,
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    height: 1.h,
                    width: 50.h,
                    color: appTheme.colorFF2548,
                  ),
                  SizedBox(height: 12.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup827,
                    height: 52.h,
                    width: 50.h,
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    height: 1.h,
                    width: 50.h,
                    color: appTheme.colorFF2548,
                  ),
                  SizedBox(height: 12.h),
                  Container(
                    height: 56.h,
                    width: 56.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF2542,
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup11868,
                        height: 50.h,
                        width: 50.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // VIP Badge
          Positioned(
            bottom: 75.h,
            right: 16.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup11862,
              height: 56.h,
              width: 56.h,
            ),
          ),

          // Money Rain Promotion Popup
          Obx(() => controller.showMoneyRainDialog.value ?? false
              ? Container(
                  margin: EdgeInsets.all(16.h),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
                    ),
                    borderRadius: BorderRadius.circular(12.h),
                  ),
                  child: Column(
                    children: [
                      // Close Button
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.all(8.h),
                          child: CustomButton(
                            variant: CustomButtonVariant.close,
                            iconPath: ImageConstant.imgGroup848,
                            onTap: () => controller.closeMoneyRainDialog(),
                          ),
                        ),
                      ),

                      // Header with Money Rain Title
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16.h),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 83.h,
                              top: -10.h,
                              child: CustomImageView(
                                imagePath: ImageConstant.img2858,
                                height: 48.h,
                                width: 180.h,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 16.h),
                              child: Text(
                                'Money Rain',
                                textAlign: TextAlign.center,
                                style: TextStyleHelper.instance.title22Bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Promotion Content
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(16.h),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFFFF0D6), Color(0xFFFFC48B)],
                            ),
                            borderRadius: BorderRadius.circular(8.h),
                          ),
                          padding: EdgeInsets.all(16.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '·',
                                    style:
                                        TextStyleHelper.instance.headline24Bold,
                                  ),
                                  SizedBox(width: 12.h),
                                  Expanded(
                                    child: Text(
                                      'Recharge users can get it for free',
                                      style:
                                          TextStyleHelper.instance.title20Bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 16.h),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '·',
                                    style:
                                        TextStyleHelper.instance.headline24Bold,
                                  ),
                                  SizedBox(width: 12.h),
                                  Expanded(
                                    child: Text(
                                      'Maximum cash drop value ₱7,777',
                                      style:
                                          TextStyleHelper.instance.title20Bold,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              Container(
                                decoration: BoxDecoration(
                                  color: appTheme.blackCustom,
                                  borderRadius: BorderRadius.circular(4.h),
                                ),
                                padding: EdgeInsets.all(16.h),
                                child: Column(
                                  children: [
                                    Text(
                                      'Deposit any amount to activate your\neligibility to claim the bonus.',
                                      textAlign: TextAlign.center,
                                      style:
                                          TextStyleHelper.instance.title18Bold,
                                    ),
                                    SizedBox(height: 8.h),
                                    Text(
                                      'Go to deposit →',
                                      textAlign: TextAlign.center,
                                      style: TextStyleHelper
                                          .instance.title20Bold
                                          .copyWith(
                                              color: appTheme.colorFF85D4,
                                              decoration:
                                                  TextDecoration.underline),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 16.h),
                              CustomButton(
                                text: 'Turn To Luck',
                                variant: CustomButtonVariant.gradient,
                                height: 44.h,
                                backgroundColor: appTheme.colorFFC5C5,
                                textColor: appTheme.colorFF6565,
                                onTap: () => controller.onTurnToLuckTap(),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Bottom Coins and Timer
                      Container(
                        height: 93.h,
                        child: Stack(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img861719114,
                              height: 93.h,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 16.h,
                              child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgGroup12503YellowA20002,
                                height: 157.h,
                                width: 323.h,
                              ),
                            ),
                            Positioned(
                              bottom: 32.h,
                              left: 0,
                              right: 0,
                              child: Center(
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: appTheme.whiteCustom,
                                    borderRadius: BorderRadius.circular(12.h),
                                  ),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 16.h, vertical: 4.h),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgVectorGray90002,
                                        height: 14.h,
                                        width: 13.h,
                                      ),
                                      SizedBox(width: 8.h),
                                      Obx(() => Text(
                                            controller.nextRoundTimer.value ??
                                                '',
                                            style: TextStyleHelper
                                                .instance.body14Bold
                                                .copyWith(
                                                    color: appTheme.redCustom),
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              : SizedBox.shrink()),
        ],
      ),

      // Bottom Navigation
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index, route) =>
            controller.onBottomNavItemTapped(index, route),
      ),
    );
  }
}
