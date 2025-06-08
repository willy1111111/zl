import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_balance_widget.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/cash_voucher_reward_controller.dart';
import './widgets/game_card_item_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class CashVoucherRewardScreen extends StatelessWidget {
  CashVoucherRewardScreen({Key? key}) : super(key: key);

  final CashVoucherRewardController controller =
      Get.put(CashVoucherRewardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
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

              // Logo and Balance Section
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgLogowj931,
                      height: 28.h,
                      width: 78.h,
                    ),
                    CustomBalanceWidget(
                      amount: controller.cashVoucherRewardModel.value
                              ?.balanceAmount?.value ??
                          '₱1980.00',
                      onActionTap: () => controller.onBalanceActionTap(),
                    ),
                  ],
                ),
              ),

              // Action Buttons
              Container(
                width: double.infinity,
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

              SizedBox(height: 15.h),

              Expanded(
                child: Stack(
                  children: [
                    // Sidebar
                    Positioned(
                      left: 0,
                      top: 195.h,
                      child: Container(
                        width: 66.h,
                        child: Obx(() => ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: controller.sidebarMenuItems.length,
                              itemBuilder: (context, index) {
                                return SidebarMenuItemWidget(
                                  sidebarMenuItem:
                                      controller.sidebarMenuItems[index],
                                  isSelected:
                                      controller.selectedSidebarIndex.value ==
                                          index,
                                  onTap: () =>
                                      controller.onSidebarItemTap(index),
                                );
                              },
                            )),
                      ),
                    ),

                    // Game Grid
                    Positioned(
                      left: 77.h,
                      top: 261.h,
                      child: Container(
                        width: 280.h,
                        child: Obx(() => GridView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 9.h,
                                mainAxisSpacing: 9.h,
                                childAspectRatio: 0.7,
                              ),
                              itemCount: controller.gameCardItems.length,
                              itemBuilder: (context, index) {
                                return GameCardItemWidget(
                                  gameCardItem: controller.gameCardItems[index],
                                  onTap: () => controller.onGameCardTap(index),
                                );
                              },
                            )),
                      ),
                    ),

                    // Notification Banner
                    Positioned(
                      left: 15.h,
                      top: 145.h,
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
                              child: Text(
                                '🔥The recharge of the🔥',
                                style: TextStyleHelper.instance.body14Bold,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.img1,
                              height: 16.h,
                              width: 16.h,
                            ),
                            SizedBox(width: 8.h),
                            Text(
                              'The recharge',
                              style: TextStyleHelper.instance.body14Bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Cash Voucher Popup Overlay
          Obx(() {
            if (controller.showCashVoucherDialog.value) {
              return Container(
                color: appTheme.blackCustom.withAlpha(128),
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      // Background Images
                      Positioned(
                        top: 137.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgF1381x371,
                          height: 381.h,
                          width: 371.h,
                        ),
                      ),
                      Positioned(
                        top: 111.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgF2434x375,
                          height: 434.h,
                          width: 375.h,
                        ),
                      ),
                      Positioned(
                        top: 231.h,
                        left: 4.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage403,
                          height: 292.h,
                          width: 370.h,
                        ),
                      ),

                      // Main Voucher Container
                      Positioned(
                        top: 304.h,
                        child: Container(
                          width: 280.h,
                          height: 270.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFFFC895), Color(0xFFFB7E6C)],
                            ),
                            borderRadius: BorderRadius.circular(20.h),
                            boxShadow: [
                              BoxShadow(
                                color: appTheme.colorFF7C36,
                                offset: Offset(0, -2),
                                blurRadius: 0,
                              ),
                            ],
                          ),
                          child: Stack(
                            children: [
                              Positioned(
                                top: -10.h,
                                left: 5.h,
                                child: Container(
                                  width: 270.h,
                                  height: 270.h,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xFFFFF4E4),
                                        Color(0xFFFFCD9F)
                                      ],
                                    ),
                                    borderRadius: BorderRadius.circular(18.h),
                                    boxShadow: [
                                      BoxShadow(
                                        color: appTheme.colorFFE1BB,
                                        offset: Offset(0, -1),
                                        blurRadius: 0,
                                      ),
                                    ],
                                  ),
                                  padding: EdgeInsets.all(5.h),
                                  child: Stack(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgImage404,
                                        height: 264.h,
                                        width: 270.h,
                                      ),
                                      Positioned(
                                        top: 2.h,
                                        left: 0,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgRectangle1760,
                                          height: 164.h,
                                          width: 260.h,
                                        ),
                                      ),
                                      Positioned(
                                        top: 2.h,
                                        left: 0,
                                        child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgMaskGroup164x260,
                                          height: 164.h,
                                          width: 260.h,
                                        ),
                                      ),

                                      // Treasure Chest
                                      Positioned(
                                        top: -1.h,
                                        left: 46.h,
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgF1123x123,
                                          height: 175.h,
                                          width: 175.h,
                                        ),
                                      ),

                                      // Coins
                                      Positioned(
                                        top: 26.h,
                                        left: 88.h,
                                        child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                                          height: 99.h,
                                          width: 99.h,
                                        ),
                                      ),
                                      Positioned(
                                        top: 40.h,
                                        left: 69.h,
                                        child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                                          height: 99.h,
                                          width: 99.h,
                                        ),
                                      ),

                                      // Amount Display
                                      Positioned(
                                        top: 168.h,
                                        left: 73.h,
                                        child: Text(
                                          controller
                                                  .cashVoucherRewardModel
                                                  .value
                                                  ?.voucherAmount
                                                  ?.value ??
                                              '₱19.20',
                                          style: TextStyleHelper
                                              .instance.headline32Bold
                                              .copyWith(letterSpacing: 2),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Decorative Elements
                      Positioned(
                        top: 79.h,
                        left: 61.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.img1253x253,
                          height: 253.h,
                          width: 253.h,
                        ),
                      ),
                      Positioned(
                        top: 187.h,
                        left: 129.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage391,
                          height: 105.h,
                          width: 128.h,
                        ),
                      ),
                      Positioned(
                        top: 256.h,
                        left: 34.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgImage23,
                          height: 70.h,
                          width: 306.h,
                        ),
                      ),

                      // Title Text
                      Positioned(
                        top: 262.h,
                        left: 96.h,
                        child: Stack(
                          children: [
                            Text(
                              'CASH VOUCHER',
                              style: TextStyleHelper.instance.headline26,
                            ),
                            ShaderMask(
                              shaderCallback: (bounds) => LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFFFFFBDB), Color(0xFFFFC82F)],
                              ).createShader(bounds),
                              child: Text(
                                'CASH VOUCHER',
                                style: TextStyleHelper.instance.headline26
                                    .copyWith(color: appTheme.whiteCustom),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Close Button
                      Positioned(
                        top: 178.h,
                        right: 33.h,
                        child: GestureDetector(
                          onTap: () => controller.onCloseCashVoucherDialog(),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgGroup,
                            height: 32.h,
                            width: 32.h,
                          ),
                        ),
                      ),

                      // Confirm Button
                      Positioned(
                        bottom: 224.h,
                        left: 73.h,
                        child: CustomButton(
                          text: 'Confirm',
                          width: 230.h,
                          height: 40.h,
                          gradientColors: [
                            Color(0xFFFFCC18),
                            Color(0xFFF55800)
                          ],
                          borderRadius: 20.h,
                          onPressed: () => controller.onConfirmCashVoucher(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
            return SizedBox.shrink();
          }),
        ],
      ),
    );
  }
}
