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
import './controller/gaming_ticket_spin_wheel_controller.dart';
import './widgets/event_option_widget.dart';
import './widgets/wheel_prize_widget.dart';

class GamingTicketSpinWheelScreen extends StatelessWidget {
  GamingTicketSpinWheelScreen({Key? key}) : super(key: key);

  final GamingTicketSpinWheelController controller =
      Get.put(GamingTicketSpinWheelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        body: Stack(children: [
          // Main Screen Content
          SingleChildScrollView(
              child: Column(children: [
            // Top promotional banner
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

            SizedBox(height: 8.h),

            // Logo and Balance Section
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLogowj931,
                          height: 28.h,
                          width: 78.h),
                      CustomBalanceWidget(
                          amount: '₱1980.00',
                          onActionTap: () => controller.onBalanceActionTap()),
                    ])),

            SizedBox(height: 5.h),

            // Withdrawal/Deposit Buttons
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: Row(children: [
                  Expanded(
                      child: CustomButton(
                          text: 'Withdrawal',
                          iconPath: ImageConstant.imgVectorWhiteA700,
                          gradientColors: [
                            Color(0xFFFFC61E),
                            Color(0xFFFF9F00)
                          ],
                          height: 36.h,
                          onPressed: () => controller.onWithdrawalPressed())),
                  SizedBox(width: 5.h),
                  Expanded(
                      child: CustomButton(
                          text: 'Deposit',
                          iconPath: ImageConstant.imgVectorWhiteA70011x16,
                          gradientColors: [
                            Color(0xFF76CD00),
                            Color(0xFF478A03)
                          ],
                          height: 36.h,
                          onPressed: () => controller.onDepositPressed())),
                ])),

            SizedBox(height: 14.h),

            // Mask Group Image
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h),
                child: CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup,
                    height: 130.h,
                    width: 345.h,
                    fit: BoxFit.cover)),

            SizedBox(height: 17.h),

            // Notification Banner
            Container(
                margin: EdgeInsets.symmetric(horizontal: 15.h),
                padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.h),
                decoration: BoxDecoration(
                    color: appTheme.colorFF2528,
                    borderRadius: BorderRadius.circular(17.h)),
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
                  Text('The recharge',
                      style: TextStyleHelper.instance.body14Bold),
                  SizedBox(width: 20.h),
                  CustomImageView(
                      imagePath: ImageConstant.img1, height: 16.h, width: 16.h),
                ])),

            SizedBox(height: 16.h),

            // Main Content with Sidebar and Game Grid
            Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              // Left Sidebar
              Obx(() => CustomSidebar(
                  sidebarItems: controller.sidebarItems,
                  selectedIndex: controller.selectedSidebarIndex.value,
                  onItemTap: (index) => controller.onSidebarItemTap(index))),

              SizedBox(width: 11.h),

              // Game Grid and VIP Banners
              Expanded(
                  child: Column(children: [
                // VIP Banners
                CustomImageRow(imageList: [
                  ImageConstant.img,
                  ImageConstant.img56x94,
                  ImageConstant.imgVip,
                ], imageWidth: 94.h, imageHeight: 56.h, spacing: 4.h),

                SizedBox(height: 10.h),

                // Game Grid
                GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.zero,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 9.h,
                        mainAxisSpacing: 10.h,
                        childAspectRatio: 0.7),
                    itemCount: controller.gameItems.length,
                    itemBuilder: (context, index) {
                      final gameItem = controller.gameItems[index];
                      return CustomGameCard(
                          gameImagePath: gameItem.backgroundImage?.value ??
                              '', // Modified: Added required parameter
                          gameTitle: gameItem.title?.value ??
                              '', // Modified: Added required parameter
                          overlayIconPath: gameItem.iconImage?.value ??
                              '', // Modified: Added required parameter
                          onTap: () => controller.onGameCardTap(gameItem));
                    }),
              ])),
            ]),

            SizedBox(height: 100.h),
          ])),

          // Event Overlay
          Obx(() {
            if (controller.showEventOverlay.value) {
              return Container(
                  color: appTheme.blackCustom.withAlpha(204),
                  child: Stack(children: [
                    // Background Images
                    Positioned(
                        top: 198.h,
                        left: 0,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgF1,
                            height: 414.h,
                            width: 375.h)),
                    Positioned(
                        top: 170.h,
                        left: 0,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgF2,
                            height: 472.h,
                            width: 375.h)),
                    Positioned(
                        top: 103.h,
                        left: 0,
                        child: CustomImageView(
                            imagePath: ImageConstant.img1403x375,
                            height: 403.h,
                            width: 375.h)),

                    // Event Header
                    Positioned(
                        top: 15.h,
                        left: 124.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgImage360,
                            height: 78.h,
                            width: 136.h)),
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
                            style: TextStyleHelper.instance.headline26)),

                    // Event Options
                    Positioned(
                        top: 139.h,
                        left: 35.h,
                        child: EventOptionWidget(
                            imagePath: ImageConstant.imgImage377,
                            title: 'Golden Egg',
                            gradientColors: [
                              Color(0x006F1EE4),
                              Color(0xFFA666F8)
                            ],
                            onTap: () =>
                                controller.onEventOptionTap('golden_egg'))),
                    Positioned(
                        top: 127.h,
                        left: 133.h,
                        child: EventOptionWidget(
                            imagePath: ImageConstant.imgLunpp1,
                            title: 'luck wheel',
                            gradientColors: [
                              Color(0x00EC3232),
                              Color(0xFFFFBA48)
                            ],
                            borderColor: appTheme.colorFFFFFB,
                            width: 110.h,
                            height: 73.h,
                            isHighlighted: true,
                            onTap: () =>
                                controller.onEventOptionTap('luck_wheel'))),
                    Positioned(
                        top: 141.h,
                        left: 251.h,
                        child: EventOptionWidget(
                            imagePath: ImageConstant.imgCash1,
                            title: 'Cash Voucher',
                            gradientColors: [
                              Color(0x00751610),
                              Color(0xFFFF3E44)
                            ],
                            onTap: () =>
                                controller.onEventOptionTap('cash_voucher'))),

                    // Navigation Arrows
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
                        right: 7.h,
                        child: GestureDetector(
                            onTap: () => controller.onNextEvent(),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgUnion28x28,
                                height: 28.h,
                                width: 28.h))),

                    // Close Button
                    Positioned(
                        top: 21.h,
                        right: 26.h,
                        child: GestureDetector(
                            onTap: () => controller.closeEventOverlay(),
                            child: CustomImageView(
                                imagePath: ImageConstant.imgGroup,
                                height: 32.h,
                                width: 32.h))),

                    // Main Text
                    Positioned(
                        top: 200.h,
                        left: 41.h,
                        child: Text('You can obtain ₱18 Cash Voucher',
                            style: TextStyleHelper.instance.title16Black
                                .copyWith(color: appTheme.colorFFFFF3))),

                    // Countdown Timer
                    Positioned(
                        top: 232.h,
                        left: 142.h,
                        child: Text('Remaining time',
                            style: TextStyleHelper.instance.body12Bold
                                .copyWith(color: appTheme.whiteCustom))),

                    // Timer Boxes
                    Positioned(
                        top: 251.h,
                        left: 105.h,
                        child: Row(children: [
                          Obx(() => CustomTimerBox(
                              value: controller.hours.value,
                              unit: 'hr',
                              useBottomPosition: true)),
                          SizedBox(width: 6.h),
                          Text(':',
                              style: TextStyleHelper.instance.title18Black),
                          SizedBox(width: 6.h),
                          Obx(() => CustomTimerBox(
                              value: controller.minutes.value, unit: 'min')),
                          SizedBox(width: 6.h),
                          Text(':',
                              style: TextStyleHelper.instance.title18Black),
                          SizedBox(width: 6.h),
                          Obx(() => CustomTimerBox(
                              value: controller.seconds.value, unit: 'sec')),
                        ])),

                    // Spin Wheel Images
                    Positioned(
                        top: 221.h,
                        left: 38.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.img1215x301,
                            height: 215.h,
                            width: 301.h)),
                    Positioned(
                        top: 306.h,
                        left: 67.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.img12,
                            height: 244.h,
                            width: 244.h)),
                    Positioned(
                        top: 303.h,
                        left: 130.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgZhizhen1,
                            height: 99.h,
                            width: 117.h)),
                    Positioned(
                        top: 320.h,
                        left: 32.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgYellow300,
                            height: 211.h,
                            width: 296.h)),

                    // Wheel Prizes
                    ...controller.wheelPrizes.map((prize) => Positioned(
                        top: prize.top?.value ?? 0,
                        left: prize.left?.value ?? 0,
                        child: WheelPrizeWidget(
                            imagePath: prize.imagePath?.value ?? '',
                            prizeValue: prize.prizeValue?.value ?? '',
                            imageWidth: prize.imageWidth?.value ?? 30.h,
                            imageHeight: prize.imageHeight?.value ?? 30.h))),

                    // Progress Bar
                    Positioned(
                        top: 553.h,
                        left: 47.h,
                        child: Container(
                            width: 280.h,
                            height: 12.h,
                            decoration: BoxDecoration(
                                color: Color(0xFF9FB0C1).withAlpha(153),
                                borderRadius: BorderRadius.circular(6.h)),
                            child: Align(
                                alignment: Alignment.centerLeft,
                                child: Container(
                                    width: 35.h,
                                    height: 12.h,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            colors: [
                                              Color(0xFFFFF80E),
                                              Color(0xFFFF7A00)
                                            ],
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter),
                                        borderRadius:
                                            BorderRadius.circular(6.h)))))),
                    Positioned(
                        top: 550.h,
                        right: 56.h,
                        child: Text('10.00%',
                            style: TextStyleHelper.instance.body12Bold
                                .copyWith(color: appTheme.whiteCustom))),

                    // Claim Button
                    Positioned(
                        top: 579.h,
                        left: 43.h,
                        child: CustomButton(
                            text: 'Claim',
                            width: 290.h,
                            height: 40.h,
                            gradientColors: [
                              Color(0xFFFFCC18),
                              Color(0xFFF55800)
                            ],
                            borderRadius: 20.h,
                            onPressed: () => controller.onClaimPressed())),

                    // Winner Notifications
                    Positioned(
                        top: 634.h,
                        left: 24.h,
                        child: Obx(() => CustomWinnerList(
                            winnerItems: controller.winnerItems))),
                  ]));
            }
            return SizedBox.shrink();
          }),

          // Arrow Indicator
          Positioned(
              top: 431.h,
              left: 63.h,
              child: CustomImageView(
                  imagePath: ImageConstant.imgPolygon10,
                  height: 15.h,
                  width: 9.h)),
        ]));
  }
}
