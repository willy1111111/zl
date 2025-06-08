import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_balance_widget.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_row.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_sidebar.dart';
import '../../widgets/custom_timer_box.dart';
import '../../widgets/custom_winner_list.dart';
import './controller/spin_wheel_gameplay_controller.dart';
import './widgets/game_grid_item_widget.dart';

class SpinWheelGameplayScreen extends StatelessWidget {
  SpinWheelGameplayScreen({Key? key}) : super(key: key);

  final SpinWheelGameplayController controller =
      Get.put(SpinWheelGameplayController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: Stack(
          children: [
            // Main Screen Content
            Column(
              children: [
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
                  onClosePressed: () => controller.onClosePressed(),
                ),

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Logo and Balance Section
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 8.h),
                          child: Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgLogowj931,
                                height: 28.h,
                                width: 78.h,
                              ),
                              Spacer(),
                              CustomBalanceWidget(
                                amount: '₱1980.00',
                                onActionTap: () =>
                                    controller.onBalanceActionTap(),
                              ),
                            ],
                          ),
                        ),

                        // Action Buttons
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 15.h),
                          child: Row(
                            children: [
                              Expanded(
                                child: CustomButton(
                                  text: 'Withdrawal',
                                  iconPath: ImageConstant.imgVectorWhiteA700,
                                  gradientColors: [
                                    Color(0xFFFFC61E),
                                    Color(0xFFFF9F00)
                                  ],
                                  height: 36.h,
                                  onPressed: () =>
                                      controller.onWithdrawalPressed(),
                                ),
                              ),
                              SizedBox(width: 5.h),
                              Expanded(
                                child: CustomButton(
                                  text: 'Deposit',
                                  iconPath:
                                      ImageConstant.imgVectorWhiteA70011x16,
                                  gradientColors: [
                                    Color(0xFF76CD00),
                                    Color(0xFF478A03)
                                  ],
                                  height: 36.h,
                                  onPressed: () =>
                                      controller.onDepositPressed(),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 40.h),

                        // Notification Bar
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 8.h, vertical: 8.h),
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
                              SizedBox(width: 8.h),
                              CustomImageView(
                                imagePath: ImageConstant.img1,
                                height: 16.h,
                                width: 16.h,
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 16.h),

                        // VIP Banners
                        CustomImageRow(
                          imageList: [
                            ImageConstant.img,
                            ImageConstant.img56x94,
                            ImageConstant.imgVip,
                          ],
                          spacing: 4.h,
                        ),

                        SizedBox(height: 16.h),

                        // Content Area with Sidebar and Game Grid
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Sidebar
                            Obx(() => CustomSidebar(
                                  sidebarItems: controller.sidebarItems.value,
                                  selectedIndex:
                                      controller.selectedSidebarIndex.value,
                                  onItemTap: (index) =>
                                      controller.onSidebarItemTap(index),
                                )),

                            // Game Grid
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 11.h),
                                child: Obx(() => GridView.builder(
                                      shrinkWrap: true,
                                      physics: NeverScrollableScrollPhysics(),
                                      gridDelegate:
                                          SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 3,
                                        crossAxisSpacing: 16.h,
                                        mainAxisSpacing: 24.h,
                                        childAspectRatio: 0.7,
                                      ),
                                      itemCount: controller.gameItems.length,
                                      itemBuilder: (context, index) {
                                        return GameGridItemWidget(
                                          gameItem: controller.gameItems[index],
                                          onTap: () =>
                                              controller.onGameItemTap(index),
                                        );
                                      },
                                    )),
                              ),
                            ),
                          ],
                        ),

                        SizedBox(height: 100.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            // Ticket Event Overlay
            Obx(
              () => controller.showTicketEventOverlay.value
                  ? Container(
                      color: appTheme.blackCustom.withAlpha(128),
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 24.h),
                          child: Stack(
                            children: [
                              // Background Images
                              CustomImageView(
                                imagePath: ImageConstant.imgF1,
                                height: 414.h,
                                width: 375.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgF2,
                                height: 472.h,
                                width: 375.h,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.img1403x375,
                                height: 403.h,
                                width: 375.h,
                              ),

                              // Event Header
                              Positioned(
                                top: 15.h,
                                left: 124.h,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage360,
                                  height: 78.h,
                                  width: 136.h,
                                ),
                              ),
                              Positioned(
                                top: 63.h,
                                left: 35.h,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgImage23,
                                  height: 70.h,
                                  width: 306.h,
                                ),
                              ),

                              // Title
                              Positioned(
                                top: 67.h,
                                left: 109.h,
                                child: Text(
                                  'TICKET EVENT',
                                  style:
                                      TextStyleHelper.instance.headline26Bold,
                                ),
                              ),

                              // Event Options
                              Positioned(
                                top: 139.h,
                                left: 35.h,
                                child: Container(
                                  height: 54.h,
                                  width: 90.h,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        appTheme.transparentCustom,
                                        Color(0xFFFFBA48)
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(8.h),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgCash139x40,
                                        height: 39.h,
                                        width: 40.h,
                                      ),
                                      Text(
                                        'Cash Voucher',
                                        style: TextStyleHelper
                                            .instance.body12Bold
                                            .copyWith(
                                                color: appTheme.colorFF5A27),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Positioned(
                                top: 130.h,
                                left: 133.h,
                                child: Container(
                                  height: 70.h,
                                  width: 110.h,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFF761610),
                                        Color(0xFFFF3F45)
                                      ],
                                    ),
                                    border: Border.all(
                                        color: appTheme.colorFFFFFB,
                                        width: 2.h),
                                    borderRadius: BorderRadius.circular(10.h),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgLunpp153x52,
                                        height: 53.h,
                                        width: 52.h,
                                      ),
                                      Text(
                                        'luck wheel',
                                        style: TextStyleHelper
                                            .instance.title16Bold
                                            .copyWith(
                                                color: appTheme.whiteCustom),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              Positioned(
                                top: 139.h,
                                right: 35.h,
                                child: Container(
                                  height: 54.h,
                                  width: 90.h,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0x000B783D),
                                        Color(0xFFA0BA0A)
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(8.h),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                        imagePath:
                                            ImageConstant.imgMaskGroup40x40,
                                        height: 40.h,
                                        width: 40.h,
                                      ),
                                      Text(
                                        'Red Package',
                                        style: TextStyleHelper
                                            .instance.body12Bold
                                            .copyWith(
                                                color: appTheme.colorFF343C),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              // Main Text
                              Positioned(
                                top: 200.h,
                                left: 41.h,
                                child: Container(
                                  width: 293.h,
                                  child: Text(
                                    'You can obtain ₱18 Cash Voucher',
                                    style: TextStyleHelper.instance.title16Black
                                        .copyWith(color: appTheme.colorFFFFC8),
                                  ),
                                ),
                              ),

                              // Navigation Arrows
                              Positioned(
                                top: 153.h,
                                left: 6.h,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgUnion,
                                  height: 28.h,
                                  width: 28.h,
                                ),
                              ),
                              Positioned(
                                top: 153.h,
                                right: 6.h,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgUnion28x28,
                                  height: 28.h,
                                  width: 28.h,
                                ),
                              ),

                              // Close Button
                              Positioned(
                                top: 21.h,
                                right: 21.h,
                                child: GestureDetector(
                                  onTap: () => controller.onCloseTicketEvent(),
                                  child: CustomImageView(
                                    imagePath: ImageConstant.imgGroup,
                                    height: 32.h,
                                    width: 32.h,
                                  ),
                                ),
                              ),

                              // Countdown Timer
                              Positioned(
                                top: 232.h,
                                left: 142.h,
                                child: Text(
                                  'Remaining time',
                                  style: TextStyleHelper.instance.body12Bold
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                              ),

                              // Timer Boxes
                              Positioned(
                                top: 251.h,
                                left: 105.h,
                                child: Row(
                                  children: [
                                    CustomTimerBox(
                                      value: '01',
                                      unit: 'hr',
                                    ),
                                    SizedBox(width: 8.h),
                                    Text(
                                      ':',
                                      style:
                                          TextStyleHelper.instance.title18Black,
                                    ),
                                    SizedBox(width: 8.h),
                                    CustomTimerBox(
                                      value: '21',
                                      unit: 'min',
                                    ),
                                    SizedBox(width: 8.h),
                                    Text(
                                      ':',
                                      style:
                                          TextStyleHelper.instance.title18Black,
                                    ),
                                    SizedBox(width: 8.h),
                                    CustomTimerBox(
                                      value: '06',
                                      unit: 'sec',
                                    ),
                                  ],
                                ),
                              ),

                              // Spinning Wheel Images
                              Positioned(
                                top: 221.h,
                                left: 38.h,
                                child: CustomImageView(
                                  imagePath: ImageConstant.img1215x301,
                                  height: 215.h,
                                  width: 301.h,
                                ),
                              ),
                              Positioned(
                                top: 299.h,
                                left: 55.h,
                                child: CustomImageView(
                                  imagePath: ImageConstant.img12250x255,
                                  height: 250.h,
                                  width: 255.h,
                                ),
                              ),
                              Positioned(
                                top: 320.h,
                                left: 32.h,
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgYellow300,
                                  height: 211.h,
                                  width: 296.h,
                                ),
                              ),

                              // Progress Bar
                              Positioned(
                                top: 553.h,
                                left: 47.h,
                                child: Container(
                                  height: 12.h,
                                  width: 280.h,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF9FB0C1).withAlpha(153),
                                    borderRadius: BorderRadius.circular(6.h),
                                  ),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      height: 12.h,
                                      width: 35.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFFFFF80E),
                                            Color(0xFFFF7A00)
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(6.h),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 550.h,
                                left: 278.h,
                                child: Text(
                                  '10.00%',
                                  style: TextStyleHelper.instance.body12Bold
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                              ),

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
                                  onPressed: () => controller.onClaimPressed(),
                                ),
                              ),

                              // Winners List
                              Positioned(
                                top: 634.h,
                                left: 24.h,
                                child: Obx(() => CustomWinnerList(
                                      winnerItems: controller.winnerItems.value,
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
