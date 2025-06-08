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
import './controller/ticket_claim_info_controller.dart';
import './widgets/game_item_widget.dart';

class TicketClaimInfoScreen extends StatelessWidget {
  TicketClaimInfoScreen({Key? key}) : super(key: key);

  final TicketClaimInfoController controller =
      Get.put(TicketClaimInfoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Main Content
          Column(
            children: [
              // Custom App Bar
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

              // Balance Section
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLogowj931,
                      width: 78.h,
                      height: 28.h,
                    ),
                    Spacer(),
                    CustomBalanceWidget(
                      amount: '₱1980.00',
                      onActionTap: () => controller.onBalanceActionTap(),
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
                        gradientColors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                        height: 36.h,
                        onPressed: () => controller.onWithdrawalPressed(),
                      ),
                    ),
                    SizedBox(width: 5.h),
                    Expanded(
                      child: CustomButton(
                        text: 'Deposit',
                        iconPath: ImageConstant.imgVectorWhiteA70011x16,
                        gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
                        height: 36.h,
                        onPressed: () => controller.onDepositPressed(),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 8.h),

              // Background Mask
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgMaskGroup,
                  width: 345.h,
                  height: 130.h,
                ),
              ),

              SizedBox(height: 30.h),

              // Notification Bar
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.h),
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 8.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.circular(17.h),
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant
                          .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
                      width: 24.h,
                      height: 19.h,
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      '🔥The recharge of the🔥',
                      style: TextStyleHelper.instance.body14Bold,
                    ),
                    Spacer(),
                    Text(
                      'The recharge',
                      style: TextStyleHelper.instance.body14Bold,
                    ),
                    SizedBox(width: 4.h),
                    CustomImageView(
                      imagePath: ImageConstant.img1,
                      width: 16.h,
                      height: 16.h,
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
                spacing: 26.h,
                imageWidth: 94.h,
                imageHeight: 56.h,
              ),

              SizedBox(height: 16.h),

              // Games Grid with Sidebar
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Sidebar
                    CustomSidebar(
                      sidebarItems: controller.sidebarItems,
                      selectedIndex: controller.selectedSidebarIndex.value,
                      onItemTap: (index) => controller.onSidebarItemTap(index),
                    ),

                    SizedBox(width: 11.h),

                    // Games Grid
                    Expanded(
                      child: Obx(() => GridView.builder(
                            padding: EdgeInsets.only(right: 15.h),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 9.h,
                              mainAxisSpacing: 16.h,
                              childAspectRatio: 0.7,
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
            ],
          ),

          // Event Overlay Dialog
          Obx(() => controller.showEventDialog.value
              ? Container(
                  color: appTheme.blackCustom.withAlpha(191),
                  child: Center(
                    child: Container(
                      width: 375.h,
                      height: 812.h,
                      decoration: BoxDecoration(
                        color: appTheme.blackCustom,
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
                          // Event Header
                          Positioned(
                            top: 15.h,
                            left: 124.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage360,
                              width: 136.h,
                              height: 78.h,
                            ),
                          ),

                          Positioned(
                            top: 63.h,
                            left: 35.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgImage23,
                              width: 306.h,
                              height: 70.h,
                            ),
                          ),

                          // Event Title
                          Positioned(
                            top: 67.h,
                            left: 109.h,
                            child: ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFFFFBDB), Color(0xFFFFC82F)],
                              ).createShader(bounds),
                              child: Text(
                                'TICKET EVENT',
                                style: TextStyleHelper
                                    .instance.headline26RegularLilitaOne,
                              ),
                            ),
                          ),

                          // Reward Options
                          Positioned(
                            top: 133.h,
                            left: 42.h,
                            child: Row(
                              children: [
                                // Golden Egg
                                _buildRewardOption(
                                  imagePath: ImageConstant.imgMaskGroup1,
                                  label: 'Golden Egg',
                                  isActive: false,
                                ),

                                SizedBox(width: 24.h),

                                // Cash Voucher (Active)
                                _buildRewardOption(
                                  imagePath: ImageConstant.imgCash1,
                                  label: 'Cash Voucher',
                                  isActive: true,
                                ),

                                SizedBox(width: 24.h),

                                // Lucky Wheel
                                _buildRewardOption(
                                  imagePath: ImageConstant.imgMaskGroup,
                                  label: 'Lucky Wheel',
                                  isActive: false,
                                ),
                              ],
                            ),
                          ),

                          // Navigation Arrows
                          Positioned(
                            top: 153.h,
                            left: 6.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUnion,
                              width: 28.h,
                              height: 28.h,
                            ),
                          ),

                          Positioned(
                            top: 153.h,
                            right: 7.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUnion28x28,
                              width: 28.h,
                              height: 28.h,
                            ),
                          ),

                          // Close Button
                          Positioned(
                            top: 21.h,
                            right: 26.h,
                            child: GestureDetector(
                              onTap: () => controller.closeEventDialog(),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup,
                                width: 32.h,
                                height: 32.h,
                              ),
                            ),
                          ),

                          // Reward Text
                          Positioned(
                            top: 200.h,
                            left: 41.h,
                            child: ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFFFF39A), Color(0xFFFFC931)],
                              ).createShader(bounds),
                              child: Text(
                                'You can obtain ₱18 Cash Voucher',
                                style: TextStyleHelper.instance.title16Black
                                    .copyWith(color: appTheme.whiteCustom),
                              ),
                            ),
                          ),

                          // Countdown Timer
                          Positioned(
                            top: 231.h,
                            left: 142.h,
                            child: Column(
                              children: [
                                Text(
                                  'Remaining time',
                                  style: TextStyleHelper.instance.body12Bold
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                                SizedBox(height: 8.h),
                                Obx(() => Row(
                                      children: [
                                        CustomTimerBox(
                                          value: controller.hours.value,
                                          unit: 'hr',
                                          useBottomPosition: true,
                                        ),
                                        SizedBox(width: 6.h),
                                        Text(
                                          ':',
                                          style: TextStyleHelper
                                              .instance.title18Black,
                                        ),
                                        SizedBox(width: 6.h),
                                        CustomTimerBox(
                                          value: controller.minutes.value,
                                          unit: 'min',
                                        ),
                                        SizedBox(width: 6.h),
                                        Text(
                                          ':',
                                          style: TextStyleHelper
                                              .instance.title18Black,
                                        ),
                                        SizedBox(width: 6.h),
                                        CustomTimerBox(
                                          value: controller.seconds.value,
                                          unit: 'sec',
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),

                          // Progress Section
                          Positioned(
                            top: 524.h,
                            left: 95.h,
                            child: Row(
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgImage283,
                                  width: 24.h,
                                  height: 24.h,
                                ),
                                SizedBox(width: 8.h),
                                Text(
                                  '₱880.00 / 10000',
                                  style: TextStyleHelper.instance.title18Black,
                                ),
                              ],
                            ),
                          ),

                          // Progress Bar
                          Positioned(
                            top: 552.h,
                            left: 47.h,
                            child: Container(
                              width: 280.h,
                              height: 12.h,
                              decoration: BoxDecoration(
                                color: Color(0xFF9FB0C1).withAlpha(153),
                                borderRadius: BorderRadius.circular(6.h),
                              ),
                              child: Stack(
                                children: [
                                  Container(
                                    width: 35.h,
                                    height: 12.h,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xFFFFF80E),
                                          Color(0xFFFF7A00)
                                        ],
                                      ),
                                      borderRadius: BorderRadius.circular(6.h),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Positioned(
                            top: 550.h,
                            right: 56.h,
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
                              borderRadius: 20.h,
                              gradientColors: [
                                Color(0xFFFFCC18),
                                Color(0xFFF55800)
                              ],
                              onPressed: () => controller.onClaimPressed(),
                            ),
                          ),

                          // Winner List
                          Positioned(
                            top: 634.h,
                            left: 24.h,
                            child: CustomWinnerList(
                              winnerItems: controller.winnerItems,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildRewardOption({
    required String imagePath,
    required String label,
    required bool isActive,
  }) {
    return Container(
      width: isActive ? 110.h : 90.h,
      height: isActive ? 70.h : 54.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: isActive
              ? [Color(0xFFEC323200), Color(0xFFFFBA48)]
              : [Color(0xFF6F1EE400), Color(0xFFA666F8)],
        ),
        borderRadius: BorderRadius.circular(isActive ? 10.h : 8.h),
        border: isActive
            ? Border.all(
                width: 2.h,
                color: appTheme.colorFFFFFB,
              )
            : null,
      ),
      child: Stack(
        children: [
          Positioned(
            top: isActive ? -23.h : -26.h,
            left: isActive ? 6.h : 25.h,
            child: CustomImageView(
              imagePath: imagePath,
              width: isActive ? 88.h : 40.h,
              height: isActive ? 73.h : 40.h,
            ),
          ),
          Positioned(
            bottom: isActive ? 12.h : 8.h,
            left: isActive ? 8.h : 11.h,
            child: Text(
              label,
              style: TextStyleHelper.instance.bodyTextBold.copyWith(
                  color:
                      isActive ? appTheme.whiteCustom : appTheme.colorFF3C1F),
            ),
          ),
        ],
      ),
    );
  }
}
