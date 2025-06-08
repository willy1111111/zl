import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_balance_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_row.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_sidebar.dart';
import '../../../../widgets/custom_timer_box.dart';
import './controller/lucky_wheel_ticket_event_controller.dart';
import './widgets/event_option_widget.dart';
import './widgets/game_grid_item_widget.dart';
import './widgets/spinning_wheel_widget.dart';
import './widgets/winner_item_widget.dart';

class LuckyWheelTicketEventScreen extends StatelessWidget {
  LuckyWheelTicketEventScreen({Key? key}) : super(key: key);

  final LuckyWheelTicketEventController controller =
      Get.put(LuckyWheelTicketEventController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: Stack(
          children: [
            // Main scrollable content
            SingleChildScrollView(
              child: Column(
                children: [
                  // Top Banner
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
                    onClosePressed: () => controller.onClosePressed(),
                  ),

                  // Logo and Balance Section
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    margin: EdgeInsets.only(top: 8.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLogowj931,
                          height: 28.h,
                          width: 78.h,
                        ),
                        SizedBox(height: 5.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CustomButton(
                                  text: 'Withdrawal',
                                  iconPath: ImageConstant.imgVectorWhiteA700,
                                  gradientColors: [
                                    Color(0xFFFFC61E),
                                    Color(0xFFFF9F00)
                                  ],
                                  width: 170.h,
                                  height: 40.h,
                                  onPressed: () =>
                                      controller.onWithdrawalPressed(),
                                ),
                                SizedBox(width: 5.h),
                                CustomButton(
                                  text: 'Deposit',
                                  iconPath:
                                      ImageConstant.imgVectorWhiteA70011x16,
                                  gradientColors: [
                                    Color(0xFF76CD00),
                                    Color(0xFF478A03)
                                  ],
                                  width: 170.h,
                                  height: 40.h,
                                  onPressed: () =>
                                      controller.onDepositPressed(),
                                ),
                              ],
                            ),
                            CustomBalanceWidget(
                              amount: '₱1980.00',
                              onActionTap: () => controller.onBalanceRefresh(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  // Notification Banner
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.h),
                    decoration: BoxDecoration(
                      color: appTheme.colorFF2528,
                      borderRadius: BorderRadius.circular(17.h),
                    ),
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
                          child: Text(
                            '🔥The recharge of th🔥',
                            style: TextStyleHelper.instance.body14Bold,
                          ),
                        ),
                        Text(
                          'The recharge',
                          style: TextStyleHelper.instance.body14Bold,
                        ),
                        SizedBox(width: 6.h),
                        CustomImageView(
                          imagePath: ImageConstant.img1,
                          height: 16.h,
                          width: 16.h,
                        ),
                      ],
                    ),
                  ),

                  // Main Content Area with background images
                  Container(
                    child: Stack(
                      children: [
                        // Background Images
                        CustomImageView(
                          imagePath: ImageConstant.imgF1,
                          height: 414.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          margin: EdgeInsets.only(top: 95.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgF2,
                          height: 472.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          margin: EdgeInsets.only(top: 67.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.img1403x375,
                          height: 403.h,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),

                        // Event Content
                        Column(
                          children: [
                            // Event Header
                            Container(
                              padding: EdgeInsets.only(top: 15.h),
                              child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgImage360,
                                    height: 78.h,
                                    width: 136.h,
                                  ),
                                  Positioned(
                                    top: 48.h,
                                    left: 35.h,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgImage23,
                                      height: 70.h,
                                      width: 306.h,
                                    ),
                                  ),
                                  Positioned(
                                    top: 54.h,
                                    left: 109.h,
                                    child: Stack(
                                      children: [
                                        Text(
                                          'TICKET EVENT',
                                          style: TextStyleHelper
                                              .instance.headline26Regular
                                              .copyWith(height: 1.15),
                                        ),
                                        Positioned(
                                          top: -2.h,
                                          child: ShaderMask(
                                            shaderCallback: (bounds) =>
                                                LinearGradient(
                                              colors: [
                                                Color(0xFFFFFBDB),
                                                Color(0xFFFFC82F)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ).createShader(bounds),
                                            child: Text(
                                              'TICKET EVENT',
                                              style: TextStyleHelper
                                                  .instance.headline26Regular
                                                  .copyWith(
                                                      color:
                                                          appTheme.whiteCustom,
                                                      height: 1.15),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    top: -82.h,
                                    right: 26.h,
                                    child: GestureDetector(
                                      onTap: () =>
                                          controller.onEventClosePressed(),
                                      child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup,
                                        height: 32.h,
                                        width: 32.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            // Event Options
                            Container(
                              margin: EdgeInsets.only(top: 56.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  EventOptionWidget(
                                    imagePath: ImageConstant.imgImage377,
                                    title: 'Golden Egg',
                                    gradientColors: [
                                      Color(0xFF6F1EE4),
                                      Color(0xFFA666F8)
                                    ],
                                    width: 90.h,
                                    height: 54.h,
                                    borderRadius: 8.h,
                                    onTap: () =>
                                        controller.onGoldenEggPressed(),
                                  ),
                                  SizedBox(width: 8.h),
                                  EventOptionWidget(
                                    imagePath: ImageConstant.imgLunpp1,
                                    title: 'luck wheel',
                                    gradientColors: [
                                      Color(0xFFEC3232),
                                      Color(0xFFFFBA48)
                                    ],
                                    width: 110.h,
                                    height: 73.h,
                                    borderRadius: 10.h,
                                    borderColor: appTheme.colorFFFFFB,
                                    borderWidth: 2.h,
                                    isSelected: true,
                                    onTap: () =>
                                        controller.onLuckWheelPressed(),
                                  ),
                                  SizedBox(width: 8.h),
                                  EventOptionWidget(
                                    imagePath: ImageConstant.imgCash1,
                                    title: 'Cash Voucher',
                                    gradientColors: [
                                      Color(0xFF751610),
                                      Color(0xFFFF3E44)
                                    ],
                                    width: 90.h,
                                    height: 54.h,
                                    borderRadius: 8.h,
                                    onTap: () =>
                                        controller.onCashVoucherPressed(),
                                  ),
                                ],
                              ),
                            ),

                            // Event Description
                            Container(
                              margin: EdgeInsets.only(top: 7.h),
                              child: ShaderMask(
                                shaderCallback: (bounds) => LinearGradient(
                                  colors: [
                                    Color(0xFFFFF39A),
                                    Color(0xFFFFC931)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ).createShader(bounds),
                                child: Text(
                                  'You can obtain ₱18 Cash Voucher',
                                  style: TextStyleHelper.instance.title16Black
                                      .copyWith(
                                          color: appTheme.whiteCustom,
                                          height: 1.44),
                                ),
                              ),
                            ),

                            // Countdown Timer
                            Container(
                              margin: EdgeInsets.only(top: 6.h),
                              child: Column(
                                children: [
                                  Text(
                                    'Remaining time',
                                    style: TextStyleHelper.instance.body12Bold
                                        .copyWith(color: appTheme.whiteCustom),
                                  ),
                                  SizedBox(height: 5.h),
                                  Obx(() => Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomTimerBox(
                                            value: controller.hours.value,
                                            unit: 'hr',
                                            useBottomPosition: true,
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.h),
                                            child: Text(
                                              ':',
                                              style: TextStyleHelper
                                                  .instance.title18Black,
                                            ),
                                          ),
                                          CustomTimerBox(
                                            value: controller.minutes.value,
                                            unit: 'min',
                                          ),
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 6.h),
                                            child: Text(
                                              ':',
                                              style: TextStyleHelper
                                                  .instance.title18Black,
                                            ),
                                          ),
                                          CustomTimerBox(
                                            value: controller.seconds.value,
                                            unit: 'sec',
                                          ),
                                        ],
                                      )),
                                ],
                              ),
                            ),

                            // Spinning Wheel
                            Container(
                              margin: EdgeInsets.only(top: 18.h),
                              child: SpinningWheelWidget(
                                onSpin: () => controller.onWheelSpin(),
                              ),
                            ),

                            // Progress Bar
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 47.h, vertical: 32.h),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 12.h,
                                      decoration: BoxDecoration(
                                        color: appTheme.color999FB0,
                                        borderRadius:
                                            BorderRadius.circular(6.h),
                                      ),
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: 35.h,
                                          height: 12.h,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Color(0xFFFFCC18),
                                                Color(0xFFF55800)
                                              ],
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(6.h),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 47.h),
                                  Text(
                                    '10.00%',
                                    style: TextStyleHelper.instance.body12Bold
                                        .copyWith(color: appTheme.whiteCustom),
                                  ),
                                ],
                              ),
                            ),

                            // Claim Button
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 43.h),
                              child: CustomButton(
                                text: 'Claim',
                                gradientColors: [
                                  Color(0xFFFFCC18),
                                  Color(0xFFF55800)
                                ],
                                borderRadius: 20.h,
                                height: 40.h,
                                textColor: appTheme.whiteCustom,
                                fontSize: 16.fSize,
                                fontWeight: FontWeight.w900,
                                onPressed: () => controller.onClaimPressed(),
                              ),
                            ),

                            // Winner Notifications
                            Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 24.h, vertical: 15.h),
                              padding: EdgeInsets.all(10.h),
                              decoration: BoxDecoration(
                                color: appTheme.blackCustom,
                                borderRadius: BorderRadius.circular(9.h),
                              ),
                              child: Obx(() => Column(
                                    children: controller.winnerItems
                                        .map((winner) =>
                                            WinnerItemWidget(winner: winner))
                                        .toList(),
                                  )),
                            ),

                            // Bottom spacing for content
                            SizedBox(height: 200.h),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Left Sidebar
            Positioned(
              left: 0,
              top: 68.h,
              child: CustomSidebar(
                sidebarItems: controller.sidebarItems,
                selectedIndex: 1,
                onItemTap: (index) => controller.onSidebarItemTap(index),
              ),
            ),

            // Game Grid
            Positioned(
              top: 416.h,
              left: 77.h,
              child: Container(
                width: 288.h,
                child: Obx(() => Wrap(
                      spacing: 9.h,
                      runSpacing: 15.h,
                      children: controller.gameItems
                          .map((game) => GameGridItemWidget(game: game))
                          .toList(),
                    )),
              ),
            ),

            // VIP Banners
            Positioned(
              top: 418.h,
              left: 72.h,
              child: CustomImageRow(
                imageList: [
                  ImageConstant.img,
                  ImageConstant.img56x94,
                  ImageConstant.imgVip,
                ],
                spacing: 4.h,
                imageWidth: 94.h,
                imageHeight: 56.h,
                borderRadius: 4.h,
              ),
            ),

            // Mask Overlay
            Positioned(
              top: 221.h,
              left: 15.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgMaskGroup,
                height: 130.h,
                width: 345.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
