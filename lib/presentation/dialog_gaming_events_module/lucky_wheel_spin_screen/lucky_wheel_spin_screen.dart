import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_banner_image_row.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_promo_app_bar.dart';
import '../../../../widgets/custom_sidebar.dart';
import './controller/lucky_wheel_spin_controller.dart';
import './widgets/game_card_item_widget.dart';
import './widgets/notification_bar_widget.dart';

// Modified: Removed import for non-existent sidebar_menu_item_widget.dart

class LuckyWheelSpinScreen extends StatelessWidget {
  LuckyWheelSpinScreen({Key? key}) : super(key: key);

  final LuckyWheelSpinController controller =
      Get.put(LuckyWheelSpinController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.h),
        child: CustomPromoAppBar(
          profileImagePath: ImageConstant.img112,
          headerText: 'MANY BENEFITS FOR NEWCOMERS',
          downloadButtonText: 'Download',
          onDownloadPressed: () => controller.onDownloadPressed(),
          onClosePressed: () => controller.onClosePressed(),
          showCloseButton: true,
          downloadButtonAlignment: false,
          backgroundImagePath: ImageConstant
              .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
          overlayImagePath: ImageConstant
              .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              _buildTopSection(),
              _buildActionButtonsSection(),
              _buildBannerSection(),
              _buildNotificationBarSection(),
              _buildHotGamesSection(),
              Expanded(
                child: _buildGameGridSection(),
              ),
            ],
          ),
          _buildSidebarSection(),
          Obx(() => controller.showLuckyWheelDialog.value
              ? _buildLuckyWheelDialog()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildTopSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj931,
            height: 28.h,
            width: 78.h,
          ),
          CustomCurrencyDisplay(
            amount: '₱1980.00',
            spacing: 6.0,
            currencyIcon: ImageConstant.imgGroup736,
            actionIcon: ImageConstant.img1LightGreenA70001,
            onActionTap: () => controller.onBalanceActionTap(),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtonsSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              variant: CustomButtonVariant.orange,
              leftIcon: ImageConstant.imgVectorWhiteA700,
              height: 36.h,
              borderRadius: 2.h,
              onPressed: () => controller.onWithdrawalPressed(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              variant: CustomButtonVariant.orange,
              leftIcon: ImageConstant.imgVectorWhiteA70011x16,
              height: 36.h,
              borderRadius: 2.h,
              onPressed: () => controller.onDepositPressed(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerSection() {
    return Container(
      margin: EdgeInsets.only(left: 15.h, top: 8.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgMaskGroup,
        height: 130.h,
        width: 345.h,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildNotificationBarSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.h),
      child: NotificationBarWidget(),
    );
  }

  Widget _buildHotGamesSection() {
    return Container(
      margin: EdgeInsets.only(left: 72.h, bottom: 16.h),
      child: CustomBannerImageRow(
        imagePaths: [
          ImageConstant.img,
          ImageConstant.img56x94,
          ImageConstant.imgVip,
        ],
        imageSpacing: 26.h,
        imageWidth: 94.h,
        imageHeight: 56.h,
        borderRadius: 4.h,
      ),
    );
  }

  Widget _buildGameGridSection() {
    return Container(
      margin: EdgeInsets.only(left: 77.h, right: 15.h),
      child: Obx(() => GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9.h,
              mainAxisSpacing: 9.h,
              childAspectRatio: 0.8,
            ),
            itemCount: controller.gameItems.length,
            itemBuilder: (context, index) {
              final gameItem = controller.gameItems[index];
              return GameCardItemWidget(
                gameCardModel: gameItem,
                onTap: () => controller.onGameCardTap(index),
              );
            },
          )),
    );
  }

  Widget _buildSidebarSection() {
    return Positioned(
      left: 0,
      top: 350.h,
      child: Obx(() => CustomSidebar(
            sidebarItems: controller.sidebarItems.value,
            selectedIndex: controller.selectedSidebarIndex.value,
            onItemTap: (index, item) =>
                controller.onSidebarItemTap(index, item),
          )),
    );
  }

  Widget _buildLuckyWheelDialog() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.blackCustom.withAlpha(153),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgF1,
            height: 381.h,
            width: 371.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgF2,
            height: 434.h,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Center(
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
                    offset: Offset(0, -2.h),
                    blurRadius: 0,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: -44.h,
                    top: -73.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage403,
                      height: 292.h,
                      width: 370.h,
                    ),
                  ),
                  Positioned(
                    left: 5.h,
                    top: 10.h,
                    child: Container(
                      width: 270.h,
                      height: 270.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFFFF4E4), Color(0xFFFFCD9F)],
                        ),
                        borderRadius: BorderRadius.circular(18.h),
                        boxShadow: [
                          BoxShadow(
                            color: appTheme.colorFFE1BB,
                            offset: Offset(0, -1.h),
                            blurRadius: 0,
                          ),
                        ],
                      ),
                      child: Stack(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgImage404,
                            height: 264.h,
                            width: 270.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 5.h),
                          ),
                          Positioned(
                            top: 5.h,
                            left: 5.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgRectangle1760,
                              height: 164.h,
                              width: 260.h,
                            ),
                          ),
                          Positioned(
                            top: 7.h,
                            left: 5.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgMaskGroup164x260,
                              height: 164.h,
                              width: 260.h,
                            ),
                          ),
                          Positioned(
                            top: 4.h,
                            left: 51.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgF1175x175,
                              height: 175.h,
                              width: 175.h,
                            ),
                          ),
                          Positioned(
                            top: 31.h,
                            left: 93.h,
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                              height: 99.h,
                              width: 99.h,
                            ),
                          ),
                          Positioned(
                            top: 45.h,
                            left: 74.h,
                            child: CustomImageView(
                              imagePath: ImageConstant
                                  .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                              height: 99.h,
                              width: 99.h,
                            ),
                          ),
                          Positioned(
                            top: 173.h,
                            left: 78.h,
                            child: Text(
                              '₱19.20',
                              style: TextStyleHelper
                                  .instance.headline32BoldArial
                                  .copyWith(letterSpacing: 2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -177.h,
                    left: 61.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img1253x253,
                      height: 253.h,
                      width: 253.h,
                    ),
                  ),
                  Positioned(
                    top: -74.h,
                    left: 133.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgLunpan,
                      height: 108.h,
                      width: 106.h,
                    ),
                  ),
                  Positioned(
                    top: -14.h,
                    left: 34.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage23,
                      height: 70.h,
                      width: 306.h,
                    ),
                  ),
                  Positioned(
                    top: -6.h,
                    left: 108.h,
                    child: Text(
                      'LUCKY WHEEL',
                      style: TextStyleHelper.instance.headline26LilitaOne,
                    ),
                  ),
                  Positioned(
                    top: -78.h,
                    right: -30.h,
                    child: GestureDetector(
                      onTap: () => controller.closeLuckyWheelDialog(),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup,
                        height: 32.h,
                        width: 32.h,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 278.h,
                    left: 73.h,
                    child: CustomButton(
                      text: 'Confirm',
                      variant: CustomButtonVariant.orange,
                      width: 230.h,
                      height: 40.h,
                      borderRadius: 20.h,
                      onPressed: () => controller.onConfirmPrize(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
