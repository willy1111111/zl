import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_balance_widget.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_game_card.dart';
import '../../widgets/custom_image_row.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_sidebar.dart';
import '../../widgets/custom_timer_box.dart';
import '../../widgets/custom_winner_list.dart';
import './controller/app_download_bonus_ticket_controller.dart';
import './widgets/event_option_item_widget.dart';

class AppDownloadBonusTicketScreen extends StatelessWidget {
  AppDownloadBonusTicketScreen({Key? key}) : super(key: key);

  final AppDownloadBonusTicketController controller =
      Get.put(AppDownloadBonusTicketController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        body: Stack(children: [
          // Main content
          _buildMainContent(),

          // Event overlay
          Obx(() => controller.showEventOverlay.value
              ? _buildEventOverlay()
              : SizedBox.shrink()),
        ]));
  }

  Widget _buildMainContent() {
    return Column(children: [
      // App Bar
      CustomAppBar(
          height: 68.h,
          backgroundImagePath: ImageConstant
              .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
          overlayImagePath: ImageConstant
              .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
          showProfile: true,
          profileImagePath: ImageConstant.img112,
          profileText: 'Many benefits for newcomers',
          showStars: true,
          starCount: 5,
          showDownloadButton: true,
          downloadButtonText: 'Download',
          showCloseButton: true,
          onDownloadPressed: () => controller.onDownloadPressed(),
          onClosePressed: () => controller.onClosePressed()),

      // Content area
      Expanded(
          child: Stack(children: [
        _buildContentSection(),
        _buildSideNavigation(),
        _buildVipImages(),
        _buildArrowIndicator(),
        _buildMaskGroup(),
      ])),
    ]);
  }

  Widget _buildContentSection() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 8.h),

          // Logo
          CustomImageView(
              imagePath: ImageConstant.imgLogowj931, height: 28.h, width: 78.h),

          SizedBox(height: 5.h),

          // Action buttons
          _buildActionButtons(),

          SizedBox(height: 5.h),

          // Balance display
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            CustomBalanceWidget(
                amount: '₱1980.00',
                onActionTap: () => controller.onBalanceRefresh()),
          ]),

          SizedBox(height: 117.h),

          // Notification banner
          _buildNotificationBanner(),

          SizedBox(height: 82.h),

          // Game grid
          _buildGameGrid(),
        ]));
  }

  Widget _buildActionButtons() {
    return Row(children: [
      Expanded(
          child: CustomButton(
              text: 'Withdrawal',
              iconPath: ImageConstant.imgVectorWhiteA700,
              gradientColors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
              onPressed: () => controller.onWithdrawalPressed())),
      SizedBox(width: 5.h),
      Expanded(
          child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
              onPressed: () => controller.onDepositPressed())),
    ]);
  }

  Widget _buildNotificationBanner() {
    return Container(
        decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(17.h)),
        padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.h),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant
                  .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
              height: 19.h,
              width: 24.h),
          SizedBox(width: 8.h),
          Expanded(
              child: Text('🔥The recharge of the🔥',
                  style: TextStyleHelper.instance.body14Bold)),
          Text('The recharge', style: TextStyleHelper.instance.body14Bold),
          SizedBox(width: 8.h),
          CustomImageView(
              imagePath: ImageConstant.img1, height: 16.h, width: 16.h),
        ]));
  }

  Widget _buildGameGrid() {
    return Obx(() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 62.h),
        child: Column(children: [
          // First row
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomGameCard(
                gameImagePath: ImageConstant.img231000,
                overlayIconPath: ImageConstant.imgGroup1019,
                gameTitle:
                    'Fortune Ox fortune', // Modified: Added required gameTitle parameter
                onTap: () => controller.onGameTap(0)),
            CustomGameCard(
                gameImagePath: ImageConstant.img491000,
                overlayIconPath: ImageConstant.imgGroup1019,
                gameTitle:
                    'super Ace', // Modified: Added required gameTitle parameter
                onTap: () => controller.onGameTap(1)),
            Container(
                height: 88.h,
                width: 88.h,
                decoration: BoxDecoration(
                    color: appTheme.colorFF3035,
                    borderRadius: BorderRadius.circular(4.h)),
                child: Stack(children: [
                  Center(
                      child: CustomImageView(
                          imagePath: ImageConstant.imgLogowj931,
                          height: 20.h,
                          width: 56.h)),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgGroup1019,
                          height: 34.h,
                          width: 18.h)),
                ])),
          ]),

          SizedBox(height: 10.h),

          // Second row
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Column(children: [
              CustomGameCard(
                  gameImagePath: ImageConstant.img102x1000,
                  overlayIconPath: ImageConstant.imgGroup1024,
                  gameTitle:
                      'Money Coming', // Modified: Added required gameTitle parameter
                  onTap: () => controller.onGameTap(2)),
              SizedBox(height: 10.h),
              Text('Money Coming',
                  style: TextStyleHelper.instance.body13Bold
                      .copyWith(color: appTheme.colorFF8089)),
            ]),
            Column(children: [
              CustomGameCard(
                  gameImagePath: ImageConstant.img211000,
                  overlayIconPath: ImageConstant.imgGroup1024,
                  gameTitle:
                      'lucky coming', // Modified: Added required gameTitle parameter
                  onTap: () => controller.onGameTap(3)),
              SizedBox(height: 10.h),
              Text('lucky coming',
                  style: TextStyleHelper.instance.body13Bold
                      .copyWith(color: appTheme.colorFF8089)),
            ]),
            Column(children: [
              Stack(children: [
                CustomGameCard(
                    gameImagePath: ImageConstant.img911000,
                    overlayIconPath: ImageConstant.imgGroup1024,
                    gameTitle:
                        'lucky coming', // Modified: Added required gameTitle parameter
                    onTap: () => controller.onGameTap(4)),
                Positioned(
                    top: 64.h,
                    right: 7.h,
                    child: Container(
                        height: 14.h,
                        width: 14.h,
                        decoration: BoxDecoration(
                            color: appTheme.colorFFF335,
                            shape: BoxShape.circle),
                        child: Center(
                            child: Text('1',
                                style: TextStyleHelper.instance.body12Black)))),
              ]),
              SizedBox(height: 10.h),
              Text('lucky coming',
                  style: TextStyleHelper.instance.body13Bold
                      .copyWith(color: appTheme.colorFF8089)),
            ]),
          ]),

          SizedBox(height: 10.h),

          // Third row
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomGameCard(
                gameImagePath: ImageConstant.img277771000,
                overlayIconPath: ImageConstant.imgGroup1029,
                gameTitle:
                    'Triple Flame', // Modified: Added required gameTitle parameter
                onTap: () => controller.onGameTap(5)),
            CustomGameCard(
                gameImagePath: ImageConstant.img431000,
                overlayIconPath: ImageConstant.imgGroup1029,
                gameTitle:
                    'Fortune Rabbit', // Modified: Added required gameTitle parameter
                onTap: () => controller.onGameTap(6)),
            Stack(children: [
              CustomGameCard(
                  gameImagePath: ImageConstant.img441000,
                  overlayIconPath: ImageConstant.imgGroup1029,
                  gameTitle:
                      'Lucky Neko', // Modified: Added required gameTitle parameter
                  progressType: CustomProgressType.horizontalBar,
                  onTap: () => controller.onGameTap(7)),
            ]),
          ]),

          SizedBox(height: 10.h),

          // Fourth row
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            CustomGameCard(
                gameImagePath: ImageConstant.img471000,
                overlayIconPath: ImageConstant.imgGroup1024,
                gameTitle:
                    'Rooster Fury', // Modified: Added required gameTitle parameter
                onTap: () => controller.onGameTap(8)),
            Stack(children: [
              CustomGameCard(
                  gameImagePath: ImageConstant.img461000,
                  overlayIconPath: ImageConstant.imgGroup1024,
                  gameTitle:
                      'Double Fortune', // Modified: Added required gameTitle parameter
                  progressType: CustomProgressType.redDot,
                  onTap: () => controller.onGameTap(9)),
            ]),
            CustomGameCard(
                gameImagePath: ImageConstant.imgJdbslot092,
                overlayIconPath: ImageConstant.imgGroup1024,
                gameTitle:
                    'JDB Slot', // Modified: Added required gameTitle parameter
                onTap: () => controller.onGameTap(10)),
          ]),
        ])));
  }

  Widget _buildSideNavigation() {
    return Positioned(
        left: 0,
        top: 350.h,
        child: Obx(() => CustomSidebar(
            sidebarItems: controller.sidebarItems.value
                .map((item) => CustomSidebarItem(
                    iconPath: item.iconPath?.value ?? '',
                    label: item.label?.value ?? '',
                    routeName: item.routeName?.value ?? ''))
                .toList(),
            selectedIndex: controller.selectedSidebarIndex.value,
            onItemTap: (index) => controller.onSidebarItemTap(index))));
  }

  Widget _buildVipImages() {
    return Positioned(
        top: 350.h,
        left: 72.h,
        child: CustomImageRow(imageList: [
          ImageConstant.img,
          ImageConstant.img56x94,
          ImageConstant.imgVip,
        ]));
  }

  Widget _buildArrowIndicator() {
    return Positioned(
        top: 431.h,
        left: 63.h,
        child: CustomImageView(
            imagePath: ImageConstant.imgPolygon10, height: 15.h, width: 9.h));
  }

  Widget _buildMaskGroup() {
    return Positioned(
        top: 153.h,
        left: 15.h,
        child: CustomImageView(
            imagePath: ImageConstant.imgMaskGroup,
            height: 130.h,
            width: 345.h));
  }

  Widget _buildEventOverlay() {
    return Container(
        color: appTheme.blackCustom.withAlpha(128),
        child: Stack(children: [
          // Background images
          Positioned(
              top: 220.h,
              left: 0,
              child: CustomImageView(
                  imagePath: ImageConstant.imgF1395x375,
                  height: 395.h,
                  width: 375.h)),
          Positioned(
              top: 193.h,
              left: 0,
              child: CustomImageView(
                  imagePath: ImageConstant.imgF2450x375,
                  height: 450.h,
                  width: 375.h)),

          // Event image
          Positioned(
              top: 15.h,
              left: 124.h,
              child: CustomImageView(
                  imagePath: ImageConstant.imgImage360,
                  height: 78.h,
                  width: 136.h)),

          // Ribbon
          Positioned(
              top: 63.h,
              left: 35.h,
              child: CustomImageView(
                  imagePath: ImageConstant.imgImage23,
                  height: 70.h,
                  width: 306.h)),

          // Title
          Positioned(
              top: 67.h,
              left: 109.h,
              child: Text('TICKET EVENT',
                  style: TextStyleHelper.instance.headline26Regular
                      .copyWith(height: 1.15))),

          // Event options
          Positioned(top: 135.h, left: 35.h, child: _buildEventOptions()),

          // Navigation arrows
          Positioned(
              top: 153.h,
              left: 6.h,
              child: GestureDetector(
                  onTap: () => controller.onPreviousEvent(),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgUnion,
                      height: 28.h,
                      width: 28.h))),
          Positioned(
              top: 153.h,
              right: 9.h,
              child: GestureDetector(
                  onTap: () => controller.onNextEvent(),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgUnion28x28,
                      height: 28.h,
                      width: 28.h))),

          // Close button
          Positioned(
              top: 21.h,
              right: 26.h,
              child: GestureDetector(
                  onTap: () => controller.closeEventOverlay(),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 32.h,
                      width: 32.h))),

          // Bonus text
          Positioned(
              top: 200.h,
              left: 71.h,
              child: Text('APP download bonus – ₱38',
                  style: TextStyleHelper.instance.title16Black
                      .copyWith(height: 1.44))),

          // Countdown timer
          Positioned(top: 231.h, left: 143.h, child: _buildCountdownTimer()),

          // Gift box images
          Positioned(
              top: 309.h,
              left: 32.h,
              child: Stack(children: [
                CustomImageView(
                    imagePath: ImageConstant.img4, height: 224.h, width: 291.h),
                CustomImageView(
                    imagePath: ImageConstant.img3219x322,
                    height: 219.h,
                    width: 322.h),
                Positioned(
                    top: 34.h,
                    left: 101.h,
                    child: CustomImageView(
                        imagePath: ImageConstant.img2134x102,
                        height: 134.h,
                        width: 102.h)),
              ])),

          // Progress bar
          Positioned(top: 552.h, left: 47.h, child: _buildProgressBar()),

          // Claim button
          Positioned(
              top: 579.h,
              left: 43.h,
              child: CustomButton(
                  text: 'Claim',
                  width: 290.h,
                  height: 40.h,
                  gradientColors: [Color(0xFFFFCC18), Color(0xFFF55800)],
                  borderRadius: 20.h,
                  onPressed: () => controller.onClaimPressed())),

          // Winners list
          Positioned(
              top: 634.h,
              left: 24.h,
              child: Obx(() => CustomWinnerList(
                  winnerItems: controller.winnerItems.value
                      .map((item) => CustomWinnerItem(
                          // Modified: Converted WinnerItemModel to CustomWinnerItem
                          avatarPath: item.avatarPath?.value ?? '',
                          username: item.username?.value ?? '',
                          bonusAmount: item.bonusAmount?.value ?? ''))
                      .toList()))),
        ]));
  }

  Widget _buildEventOptions() {
    return Row(children: [
      EventOptionItemWidget(
          imagePath: ImageConstant.imgMaskGroup,
          title: 'Lucky Wheel',
          onTap: () => controller.onEventOptionTap(0)),
      SizedBox(width: 8.h),
      EventOptionItemWidget(
          imagePath: ImageConstant.imgImage413,
          title: 'Red Package',
          isSpecial: true,
          onTap: () => controller.onEventOptionTap(1)),
      SizedBox(width: 8.h),
      EventOptionItemWidget(
          imagePath: ImageConstant.imgCash1,
          title: 'Cash Voucher',
          onTap: () => controller.onEventOptionTap(2)),
    ]);
  }

  Widget _buildCountdownTimer() {
    return Column(children: [
      Text('Remaining time',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.whiteCustom)),
      SizedBox(height: 5.h),
      Obx(() => Row(children: [
            CustomTimerBox(value: controller.days.value, unit: 'Day'),
            SizedBox(width: 6.h),
            Text(':', style: TextStyleHelper.instance.title18Black),
            SizedBox(width: 6.h),
            CustomTimerBox(
                value: controller.hours.value,
                unit: 'hr',
                useBottomPosition: true),
            SizedBox(width: 6.h),
            Text(':', style: TextStyleHelper.instance.title18Black),
            SizedBox(width: 6.h),
            CustomTimerBox(value: controller.minutes.value, unit: 'min'),
            SizedBox(width: 6.h),
            Text(':', style: TextStyleHelper.instance.title18Black),
            SizedBox(width: 6.h),
            CustomTimerBox(value: controller.seconds.value, unit: 'sec'),
          ])),
    ]);
  }

  Widget _buildProgressBar() {
    return Row(children: [
      Container(
          width: 280.h,
          height: 12.h,
          decoration: BoxDecoration(
              color: appTheme.color999FB0,
              borderRadius: BorderRadius.circular(6.h)),
          child: Stack(children: [
            Container(
                width: 35.h,
                height: 12.h,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFFFFF80E), Color(0xFFFF7A00)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter),
                    borderRadius: BorderRadius.circular(6.h))),
          ])),
      SizedBox(width: 8.h),
      Text('10.00%',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.whiteCustom)),
    ]);
  }
}
