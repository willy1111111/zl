import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_money_overlay.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_widget.dart';
import './controller/money_rain_promotion_controller.dart';
import './widgets/game_item_widget.dart';
import './widgets/money_rain_modal_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class MoneyRainPromotionScreen extends GetWidget<MoneyRainPromotionController> {
  const MoneyRainPromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: Stack(
          children: [
            // Floating Money Background
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
                  imagePath: ImageConstant.img6564,
                  left: 0,
                  top: 0,
                  width: 54,
                  height: 61,
                  animationDelay: Duration(seconds: 1),
                ),
                CustomFloatingItem(
                  imagePath: ImageConstant.img6563,
                  left: 221,
                  top: 100,
                  width: 69,
                  height: 70,
                  animationDelay: Duration(milliseconds: 1500),
                ),
                CustomFloatingItem(
                  imagePath: ImageConstant.img6563,
                  left: 154,
                  top: 680,
                  width: 69,
                  height: 70,
                  animationDelay: Duration(seconds: 2),
                ),
                CustomFloatingItem(
                  imagePath: ImageConstant.img6563,
                  left: 3,
                  top: 585,
                  width: 69,
                  height: 70,
                  animationDelay: Duration(milliseconds: 2500),
                ),
                CustomFloatingItem(
                  imagePath: ImageConstant.img6567,
                  left: 146,
                  top: 614,
                  width: 52,
                  height: 52,
                  animationDelay: Duration(seconds: 3),
                ),
                CustomFloatingItem(
                  imagePath: ImageConstant.img6567,
                  left: 244,
                  top: 592,
                  width: 52,
                  height: 52,
                  animationDelay: Duration(milliseconds: 300),
                ),
              ],
            ),

            // Main Content
            Column(
              children: [
                // Custom App Bar
                CustomAppBar(
                  showPromotionalContent: true,
                  profileImagePath: ImageConstant.img112,
                  promotionalText: 'MANY BENEFITS FOR NEWCOMERS',
                  backgroundImagePath: ImageConstant
                      .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
                  overlayImagePath: ImageConstant
                      .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
                  onDownloadTap: () => controller.onDownloadTap(),
                  onCloseTap: () => controller.onCloseTap(),
                ),

                // User Balance Section
                _buildBalanceSection(),

                // Action Buttons
                _buildActionButtons(),

                // Game Banner
                _buildGameBanner(),

                // Notification Banner
                _buildNotificationBanner(),

                // Jackpot Section
                _buildJackpotSection(),

                // Game Grid
                Expanded(
                  child: _buildGameGrid(),
                ),
              ],
            ),

            // Money Rain Modal
            Obx(() => controller.isMoneyRainModalVisible.value
                ? MoneyRainModalWidget()
                : SizedBox.shrink()),

            // Side Navigation
            _buildSideNavigation(),

            // VIP Level Indicator
            _buildVipLevelIndicator(),

            // Collect Button
            _buildCollectButton(),

            // Additional Decoration
            Positioned(
              bottom: 75.h,
              right: 144.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup11862,
                height: 56.h,
                width: 56.h,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index, route) => controller.onBottomNavTap(index, route),
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
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
              SizedBox(width: 10.h),
              Obx(() => Text(
                    controller.balance.value ?? 'R\$1980.00',
                    style: TextStyleHelper.instance.title16BoldArial,
                  )),
              SizedBox(width: 10.h),
              GestureDetector(
                onTap: () => controller.onRefreshBalance(),
                child: CustomImageView(
                  imagePath: ImageConstant.img1LightGreenA700,
                  height: 14.h,
                  width: 16.h,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              iconPath: ImageConstant.imgVectorWhiteA700,
              variant: CustomButtonVariant.withdrawal,
              onTap: () => controller.onWithdrawalTap(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              backgroundColor: appTheme.colorFF76CD,
              onTap: () => controller.onDepositTap(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameBanner() {
    return Padding(
      padding: EdgeInsets.all(15.h),
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
        height: 130.h,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(17.h),
        ),
        padding: EdgeInsets.all(7.h),
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
            Text(
              'The recharge',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF85D4),
            ),
            SizedBox(width: 11.h),
            CustomImageView(
              imagePath: ImageConstant.img1Red900,
              height: 16.h,
              width: 16.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Padding(
      padding: EdgeInsets.all(15.h),
      child: Stack(
        children: [
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
                CustomImageView(
                  imagePath: ImageConstant.imgIntersect,
                  height: 42.h,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Center(
                  child: Text(
                    '14,091,688.88',
                    style: TextStyleHelper.instance.headline24BlackArial
                        .copyWith(letterSpacing: 2),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 2.h,
            child: CustomImageView(
              imagePath: ImageConstant.img155x70,
              height: 55.h,
              width: 70.h,
            ),
          ),
          Positioned(
            top: 0,
            left: 83.h,
            child: CustomImageView(
              imagePath: ImageConstant.img119x31,
              height: 19.h,
              width: 31.h,
            ),
          ),
          Positioned(
            top: 0,
            right: 25.h,
            child: CustomImageView(
              imagePath: ImageConstant.img219x31,
              height: 19.h,
              width: 31.h,
            ),
          ),
          Positioned(
            top: -2.h,
            left: 109.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot1,
              height: 22.h,
              width: 86.h,
            ),
          ),
          Positioned(
            top: 0,
            left: -15.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1084,
              height: 108.h,
              width: 72.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameGrid() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Obx(() => GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9.h,
              mainAxisSpacing: 9.h,
              childAspectRatio: 0.9,
            ),
            itemCount: controller.gameItems.length,
            itemBuilder: (context, index) {
              return GameItemWidget(
                gameItem: controller.gameItems[index],
                onTap: () => controller.onGameTap(controller.gameItems[index]),
              );
            },
          )),
    );
  }

  Widget _buildSideNavigation() {
    return Positioned(
      left: 0,
      top: 68.h,
      bottom: 84.h,
      child: Container(
        width: 66.h,
        child: Obx(() => Column(
              children: controller.sideMenuItems.asMap().entries.map((entry) {
                int index = entry.key;
                var item = entry.value;
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: index < controller.sideMenuItems.length - 1
                          ? 4.h
                          : 0),
                  child: SidebarMenuItemWidget(
                    menuItem: item,
                    isSelected: controller.selectedSideMenuIndex.value == index,
                    onTap: () => controller.onSideMenuTap(index),
                  ),
                );
              }).toList(),
            )),
      ),
    );
  }

  Widget _buildVipLevelIndicator() {
    return Positioned(
      right: 8.h,
      top: 533.h,
      child: Container(
        width: 67.h,
        height: 369.h,
        decoration: BoxDecoration(
          color: appTheme.color0E1900,
          border: Border.all(color: appTheme.colorFF5DA4),
          borderRadius: BorderRadius.circular(33.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF8888,
              offset: Offset(0, 4),
              blurRadius: 4,
            ),
          ],
        ),
        padding: EdgeInsets.all(11.h),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVip7,
              height: 50.h,
              width: 45.h,
            ),
            SizedBox(height: 9.h),
            Container(
              width: 50.h,
              height: 1.h,
              color: appTheme.colorFF2548,
            ),
            SizedBox(height: 9.h),
            CustomImageView(
              imagePath: ImageConstant.imgGroup11853,
              height: 50.h,
              width: 50.h,
            ),
            SizedBox(height: 9.h),
            Container(
              width: 50.h,
              height: 1.h,
              color: appTheme.colorFF2548,
            ),
            SizedBox(height: 9.h),
            CustomImageView(
              imagePath: ImageConstant.imgGroup566,
              height: 50.h,
              width: 50.h,
            ),
            SizedBox(height: 9.h),
            Container(
              width: 50.h,
              height: 1.h,
              color: appTheme.colorFF2548,
            ),
            SizedBox(height: 9.h),
            CustomImageView(
              imagePath: ImageConstant.imgGroup827,
              height: 52.h,
              width: 50.h,
            ),
            SizedBox(height: 9.h),
            Container(
              width: 50.h,
              height: 1.h,
              color: appTheme.colorFF2548,
            ),
            SizedBox(height: 9.h),
            Container(
              width: 56.h,
              height: 56.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2542,
                borderRadius: BorderRadius.circular(28.h),
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
    );
  }

  Widget _buildCollectButton() {
    return Positioned(
      left: 13.h,
      top: 350.h,
      child: Stack(
        children: [
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img11,
                height: 36.h,
                width: 36.h,
              ),
              SizedBox(height: 1.h),
              Text(
                'Collect',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
          ),
          Positioned(
            top: 44.h,
            left: -13.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1084,
              height: 108.h,
              width: 72.h,
            ),
          ),
        ],
      ),
    );
  }
}
