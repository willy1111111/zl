import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_action_button.dart';
import '../../widgets/custom_game_card.dart';
import '../../widgets/custom_image_view.dart';
import './controller/narad_gaming_casino_home_controller.dart';
import './widgets/promotional_banner_widget.dart';
import './widgets/sidebar_navigation_item_widget.dart';

class NaradGamingCasinoHomeScreen extends StatelessWidget {
  NaradGamingCasinoHomeScreen({Key? key}) : super(key: key);

  final NaradGamingCasinoHomeController controller =
      Get.put(NaradGamingCasinoHomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SingleChildScrollView(
        child: Container(
          width: 375.h,
          height: 958.h,
          child: Stack(
            children: [
              // Top Promotional Banner
              PromotionalBannerWidget(),

              // Logo and Balance Section
              Positioned(
                top: 76.h,
                left: 15.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgLogowj93128x78,
                  height: 28.h,
                  width: 78.h,
                ),
              ),

              // Balance Display
              Positioned(
                top: 80.h,
                right: 18.h,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup736,
                      height: 16.h,
                      width: 15.h,
                    ),
                    SizedBox(width: 8.h),
                    Obx(() => Text(
                          '${controller.currencySymbol.value}${controller.balance.value}',
                          style: TextStyleHelper.instance.title16Bold.copyWith(
                              color: appTheme.colorFFFFC6, height: 1.19),
                        )),
                    SizedBox(width: 8.h),
                    GestureDetector(
                      onTap: () => controller.refreshBalance(),
                      child: CustomImageView(
                        imagePath: ImageConstant.img1LightGreenA700,
                        height: 16.h,
                        width: 14.h,
                      ),
                    ),
                  ],
                ),
              ),

              // Action Buttons
              Positioned(
                top: 109.h,
                left: 15.h,
                child: Row(
                  children: [
                    CustomActionButton(
                      text: 'Withdrawal',
                      onPressed: () => controller.onWithdrawalPressed(),
                      backgroundColor: appTheme.transparentCustom,
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      width: 170.h,
                      height: 36.h,
                      borderRadius: 2.h,
                      textStyle: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom, height: 1.21),
                    ),
                    SizedBox(width: 5.h),
                    CustomActionButton(
                      text: 'Deposit',
                      onPressed: () => controller.onDepositPressed(),
                      backgroundColor: appTheme.transparentCustom,
                      gradient: LinearGradient(
                        colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      iconPath: ImageConstant.imgVectorWhiteA700,
                      width: 170.h,
                      height: 36.h,
                      borderRadius: 2.h,
                      textStyle: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.whiteCustom, height: 1.21),
                      iconSize: 16.h,
                      iconSpacing: 8.h,
                    ),
                  ],
                ),
              ),

              // Main Banner
              Positioned(
                top: 153.h,
                left: 15.h,
                child: Container(
                  width: 345.h,
                  height: 130.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.img,
                    height: 130.h,
                    width: 345.h,
                    fit: BoxFit.cover,
                    radius: BorderRadius.circular(8.h),
                  ),
                ),
              ),

              // Scrolling Notification
              Positioned(
                top: 300.h,
                left: 15.h,
                child: Container(
                  width: 345.h,
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
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Text(
                                '🔥The recharge of the🔥',
                                style: TextStyleHelper.instance.body14Bold
                                    .copyWith(
                                        color: appTheme.colorFF85D4,
                                        height: 1.21),
                              ),
                              SizedBox(width: 8.h),
                              CustomImageView(
                                imagePath: ImageConstant.img1Red900,
                                height: 16.h,
                                width: 16.h,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                'The recharge',
                                style: TextStyleHelper.instance.body14Bold
                                    .copyWith(
                                        color: appTheme.colorFF85D4,
                                        height: 1.21),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Collect Section
              Positioned(
                top: 350.h,
                left: 0,
                child: GestureDetector(
                  onTap: () => controller.onCollectPressed(),
                  child: Container(
                    width: 72.h,
                    height: 108.h,
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup1084,
                          height: 108.h,
                          width: 72.h,
                        ),
                        Positioned(
                          top: 7.h,
                          left: 16.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.img11,
                            height: 36.h,
                            width: 36.h,
                          ),
                        ),
                        Positioned(
                          top: 44.h,
                          left: 13.h,
                          child: Text(
                            'Collect',
                            style: TextStyleHelper.instance.body12Bold.copyWith(
                                color: appTheme.colorFF8089, height: 1.17),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Jackpot Section
              Positioned(
                top: 364.h,
                left: 76.h,
                child: Container(
                  width: 282.h,
                  height: 44.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF072700),
                        appTheme.colorFF1546,
                        Color(0xFF082701)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    border: Border.all(color: appTheme.colorFF786A),
                    borderRadius: BorderRadius.circular(3.h),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 1.h,
                        left: 1.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgIntersect42x280,
                          height: 42.h,
                          width: 280.h,
                        ),
                      ),
                      Positioned(
                        top: -12.h,
                        left: 1.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.img155x70,
                          height: 55.h,
                          width: 70.h,
                        ),
                      ),
                      Positioned(
                        top: -12.h,
                        left: 82.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.img119x31,
                          height: 19.h,
                          width: 31.h,
                        ),
                      ),
                      Positioned(
                        top: -12.h,
                        right: 17.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.img219x31,
                          height: 19.h,
                          width: 31.h,
                        ),
                      ),
                      Positioned(
                        top: -14.h,
                        left: 108.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgJackpot1,
                          height: 22.h,
                          width: 86.h,
                        ),
                      ),
                      Positioned(
                        top: 7.h,
                        left: 69.h,
                        child: Obx(() => Text(
                              controller.jackpotAmount.value,
                              style: TextStyleHelper.instance.headline24Black
                                  .copyWith(letterSpacing: 2.h, height: 1.42),
                            )),
                      ),
                    ],
                  ),
                ),
              ),

              // Left Sidebar Navigation
              Positioned(
                top: 418.h,
                left: 0,
                child: Column(
                  children: [
                    Obx(() => ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.sidebarItems.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 4.h),
                              child: SidebarNavigationItemWidget(
                                sidebarItem: controller.sidebarItems[index],
                                onTap: () =>
                                    controller.onSidebarItemPressed(index),
                              ),
                            );
                          },
                        )),
                  ],
                ),
              ),

              // Games Grid
              Positioned(
                top: 422.h,
                left: 77.h,
                child: Container(
                  width: 282.h,
                  child: Column(
                    children: [
                      // Row 1
                      Row(
                        children: [
                          CustomGameCard(
                            gameImagePath: ImageConstant.img231000,
                            overlayIconPath: ImageConstant.imgGroup1019,
                            gameTitle: 'Fortune Ox fortune',
                            onTap: () => controller.onGameCardPressed(0),
                          ),
                          SizedBox(width: 9.h),
                          CustomGameCard(
                            gameImagePath: ImageConstant.img491000,
                            overlayIconPath: ImageConstant.imgGroup1019,
                            gameTitle: 'super Ace',
                            onTap: () => controller.onGameCardPressed(1),
                          ),
                          SizedBox(width: 9.h),
                          Container(
                            width: 88.h,
                            child: Column(
                              children: [
                                Container(
                                  width: 88.h,
                                  height: 88.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.colorFF3035,
                                    borderRadius: BorderRadius.circular(4.h),
                                  ),
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        top: 34.h,
                                        left: 16.h,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgLogowj931,
                                          height: 20.h,
                                          width: 56.h,
                                        ),
                                      ),
                                      Positioned(
                                        top: 0,
                                        left: 0,
                                        child: Container(
                                          width: 34.h,
                                          height: 18.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.colorFF4147,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(4.h),
                                              bottomRight: Radius.circular(6.h),
                                            ),
                                            boxShadow: [
                                              BoxShadow(
                                                color: appTheme.blackCustom,
                                                offset: Offset(0, 2.h),
                                                blurRadius: 2.h,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 10.h),
                                Text(
                                  'Money Coming',
                                  style: TextStyleHelper.instance.body13Bold
                                      .copyWith(height: 1.23),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 40.h),

                      // Remaining rows with CustomGameCard
                      Obx(() => Column(
                            children: List.generate(3, (rowIndex) {
                              return Padding(
                                padding: EdgeInsets.only(bottom: 40.h),
                                child: Row(
                                  children: List.generate(3, (colIndex) {
                                    int gameIndex =
                                        (rowIndex + 1) * 3 + colIndex + 1;
                                    if (gameIndex <
                                        controller.gameCards.length) {
                                      return Padding(
                                        padding: EdgeInsets.only(
                                            right: colIndex < 2 ? 9.h : 0),
                                        child: CustomGameCard(
                                          gameImagePath: controller
                                                  .gameCards[gameIndex]
                                                  .gameImagePath
                                                  ?.value ??
                                              '',
                                          overlayIconPath: controller
                                                  .gameCards[gameIndex]
                                                  .overlayIconPath
                                                  ?.value ??
                                              '',
                                          gameTitle: controller
                                                  .gameCards[gameIndex]
                                                  .gameTitle
                                                  ?.value ??
                                              '',
                                          onTap: () => controller
                                              .onGameCardPressed(gameIndex),
                                        ),
                                      );
                                    }
                                    return SizedBox(width: 88.h);
                                  }),
                                ),
                              );
                            }),
                          )),
                    ],
                  ),
                ),
              ),

              // VIP Club Overlay
              Positioned(
                top: 591.h,
                left: 108.h,
                child: GestureDetector(
                  onTap: () => controller.onVipClubPressed(),
                  child: Container(
                    width: 120.h,
                    height: 120.h,
                    child: Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant
                              .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001,
                          height: 120.h,
                          width: 120.h,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant
                              .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002,
                          height: 120.h,
                          width: 120.h,
                        ),
                        Positioned(
                          top: 3.h,
                          left: 15.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.img2333199x91,
                            height: 99.h,
                            width: 91.h,
                          ),
                        ),

                        // Notification Badge
                        Positioned(
                          top: 11.h,
                          right: 16.h,
                          child: Container(
                            width: 16.h,
                            height: 16.h,
                            decoration: BoxDecoration(
                              color: appTheme.colorFFF335,
                              borderRadius: BorderRadius.circular(8.h),
                            ),
                            child: Center(
                              child: Obx(() => Text(
                                    controller.vipNotificationCount.value
                                        .toString(),
                                    style: TextStyleHelper.instance.body12Bold
                                        .copyWith(
                                            color: appTheme.whiteCustom,
                                            height: 1.17),
                                  )),
                            ),
                          ),
                        ),

                        // Bottom Section
                        Positioned(
                          bottom: 26.h,
                          left: 1.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.img1moneyrain22x118,
                            height: 22.h,
                            width: 118.h,
                          ),
                        ),
                        Positioned(
                          bottom: 8.h,
                          left: 12.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.img16,
                            height: 30.h,
                            width: 96.h,
                          ),
                        ),
                        Positioned(
                          bottom: 2.h,
                          left: 30.h,
                          child: GestureDetector(
                            onTap: () => controller.onReceivePressed(),
                            child: Container(
                              width: 61.h,
                              height: 29.h,
                              child: Center(
                                child: Text(
                                  'Receive',
                                  style: TextStyleHelper.instance.title16Bold
                                      .copyWith(height: 1.75),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              // Endless Surprises Banner
              Positioned(
                top: 562.h,
                right: 50.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img410,
                  height: 150.h,
                  width: 130.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
