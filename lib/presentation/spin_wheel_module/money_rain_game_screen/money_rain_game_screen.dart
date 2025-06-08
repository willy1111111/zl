import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_floating_money_overlay.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_rich_text_widget.dart';
import './controller/money_rain_game_controller.dart';
import './widgets/game_item_widget.dart';
import './widgets/sidebar_navigation_item_widget.dart';
import './widgets/vip_section_widget.dart';

class MoneyRainGameScreen extends GetView<MoneyRainGameController> {
  const MoneyRainGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Main content
          SafeArea(
            child: Column(
              children: [
                // App Bar
                _buildAppBar(),
                // Content area
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        _buildUserBalanceSection(),
                        _buildNotificationBanner(),
                        _buildGamesSection(),
                        _buildJackpotSection(),
                        SizedBox(height: 100.h),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Floating money animation overlay
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
                animationDelay: Duration(milliseconds: 1000),
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
                imagePath: ImageConstant.img6567,
                left: 146,
                top: 614,
                width: 52,
                height: 52,
                animationDelay: Duration(milliseconds: 2000),
              ),
              CustomFloatingItem(
                imagePath: ImageConstant.img6568,
                left: 310,
                top: 661,
                width: 50,
                height: 49,
                animationDelay: Duration(milliseconds: 2500),
              ),
            ],
          ),

          // Left sidebar navigation
          _buildSidebarNavigation(),

          // Collect section
          _buildCollectSection(),

          // VIP section
          VipSectionWidget(),

          // Additional floating elements
          _buildAdditionalFloatingElements(),

          // Money rain popup overlay
          Obx(() => controller.showMoneyRainPopup.value
              ? _buildMoneyRainPopup()
              : SizedBox.shrink()),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index, route) {
          controller.onBottomNavTapped(index, route);
        },
      ),
    );
  }

  Widget _buildAppBar() {
    return CustomAppBar(
      showPromotionalContent: true,
      profileImagePath: ImageConstant.img112,
      promotionalText: 'MANY BENEFITS FOR NEWCOMERS',
      backgroundImagePath:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
      overlayImagePath:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
      starCount: 5,
      onDownloadTap: () => controller.onDownloadTapped(),
      onCloseTap: () => controller.onCloseTapped(),
    );
  }

  Widget _buildUserBalanceSection() {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogowj93128x78,
                width: 78.h,
                height: 28.h,
              ),
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup736,
                    width: 15.h,
                    height: 16.h,
                  ),
                  SizedBox(width: 8.h),
                  Obx(() => Text(
                        controller.userBalance.value ?? 'R\$1980.00',
                        style: TextStyleHelper.instance.title16Bold
                            .copyWith(color: appTheme.colorFFFFB9),
                      )),
                  SizedBox(width: 8.h),
                  CustomImageView(
                    imagePath: ImageConstant.img1LightGreenA700,
                    width: 16.h,
                    height: 14.h,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'Withdrawal',
                  iconPath: ImageConstant.imgVectorWhiteA700,
                  variant: CustomButtonVariant.withdrawal,
                  height: 36.h,
                  onTap: () => controller.onWithdrawalTapped(),
                ),
              ),
              SizedBox(width: 4.h),
              Expanded(
                child: CustomButton(
                  text: 'Deposit',
                  iconPath: ImageConstant.imgVectorWhiteA70011x16,
                  variant: CustomButtonVariant.gradient,
                  height: 36.h,
                  onTap: () => controller.onDepositTapped(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(8.h),
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
          Expanded(
            child: CustomRichTextWidget(
              isFlexible: true,
              textSpans: [
                CustomTextSpanData(
                  text: '🔥',
                  color: appTheme.colorFF85D4,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
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
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
          SizedBox(width: 8.h),
          CustomImageView(
            imagePath: ImageConstant.img1Red900,
            width: 16.h,
            height: 16.h,
          ),
        ],
      ),
    );
  }

  Widget _buildGamesSection() {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img130x345,
            width: double.maxFinite,
            height: 130.h,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.h),
          Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16.h,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 0.8,
                ),
                itemCount: controller.gamesList.length,
                itemBuilder: (context, index) {
                  return GameItemWidget(
                    gameModel: controller.gamesList[index],
                    onTap: () =>
                        controller.onGameTapped(controller.gamesList[index]),
                  );
                },
              )),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(4.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF072700),
                  appTheme.colorFF1546,
                  appTheme.colorFF0827,
                ],
              ),
              border: Border.all(color: appTheme.colorFF786A),
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgIntersect,
              width: double.maxFinite,
              height: 42.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgJackpot1,
                    width: 86.h,
                    height: 22.h,
                  ),
                  SizedBox(height: 8.h),
                  Obx(() => Text(
                        controller.jackpotAmount.value ?? '14,091,688.88',
                        style: TextStyleHelper.instance.headline24Black,
                      )),
                ],
              ),
            ),
          ),
          Positioned(
            left: 8.h,
            top: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img155x70,
              width: 70.h,
              height: 55.h,
            ),
          ),
          Positioned(
            left: 80.h,
            top: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img119x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
          Positioned(
            right: 80.h,
            top: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img219x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarNavigation() {
    return Positioned(
      left: 0,
      top: 68.h,
      bottom: 80.h,
      child: Container(
        width: 64.h,
        child: Obx(() => Column(
              children: controller.sidebarItems.map((item) {
                return SidebarNavigationItemWidget(
                  sidebarItem: item,
                  onTap: () => controller.onSidebarItemTapped(item),
                );
              }).toList(),
            )),
      ),
    );
  }

  Widget _buildCollectSection() {
    return Positioned(
      left: 0,
      bottom: 128.h,
      child: GestureDetector(
        onTap: () => controller.onCollectTapped(),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup1084,
              width: 72.h,
              height: 108.h,
            ),
            Positioned(
              top: 16.h,
              left: 16.h,
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img11,
                    width: 36.h,
                    height: 36.h,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Collect',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAdditionalFloatingElements() {
    return Stack(
      children: [
        Positioned(
          bottom: 80.h,
          right: 48.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup11862,
            width: 56.h,
            height: 56.h,
          ),
        ),
        Positioned(
          top: 160.h,
          left: 96.h,
          child: CustomImageView(
            imagePath: ImageConstant.img2858,
            width: 180.h,
            height: 48.h,
          ),
        ),
      ],
    );
  }

  Widget _buildMoneyRainPopup() {
    return Container(
      color: appTheme.blackCustom.withAlpha(128),
      child: Center(
        child: Container(
          margin: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFFA6900),
                appTheme.colorFFBF1E,
              ],
            ),
            borderRadius: BorderRadius.circular(12.h),
          ),
          child: Stack(
            children: [
              // Background image
              Positioned.fill(
                child: CustomImageView(
                  imagePath: ImageConstant.img8LightGreen100,
                  fit: BoxFit.cover,
                ),
              ),

              // Close button
              Positioned(
                top: 8.h,
                right: 8.h,
                child: CustomButton(
                  variant: CustomButtonVariant.close,
                  iconPath: ImageConstant.imgGroup848,
                  width: 28.h,
                  height: 28.h,
                  onTap: () => controller.closeMoneyRainPopup(),
                ),
              ),

              // Content
              Padding(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 32.h),

                    // Title
                    Text(
                      'Money Rain',
                      style: TextStyleHelper.instance.title20Bold,
                    ),

                    SizedBox(height: 32.h),

                    // Prize amount
                    Container(
                      padding: EdgeInsets.all(16.h),
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      decoration: BoxDecoration(
                        color: appTheme.blackCustom,
                        borderRadius: BorderRadius.circular(8.h),
                      ),
                      child: Obx(() => Text(
                            controller.prizeAmount.value ?? '₱ 200.01',
                            style: TextStyleHelper.instance.display48Black,
                          )),
                    ),

                    SizedBox(height: 32.h),

                    // Message
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text(
                        'You are late! There are too many participants, please try again in the next round',
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.title18Bold,
                      ),
                    ),

                    SizedBox(height: 32.h),

                    // Next round button
                    CustomButton(
                      text: 'next Round 18:00:01',
                      iconPath: ImageConstant.imgVectorGray90002,
                      backgroundColor: appTheme.whiteCustom,
                      textColor: appTheme.colorFFFF00,
                      onTap: () => controller.onNextRoundTapped(),
                    ),

                    SizedBox(height: 16.h),

                    // Bottom coins section
                    CustomImageView(
                      imagePath: ImageConstant.img861719114,
                      width: double.maxFinite,
                      height: 93.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),

              // Decorative elements
              Positioned(
                top: 16.h,
                left: 24.h,
                child: Text(
                  '₱',
                  style: TextStyleHelper.instance.title18Black,
                ),
              ),
              Positioned(
                top: 16.h,
                right: 24.h,
                child: Text(
                  '₱',
                  style: TextStyleHelper.instance.title18Black,
                ),
              ),
              Positioned(
                bottom: 80.h,
                left: 24.h,
                child: Text(
                  '₱',
                  style: TextStyleHelper.instance.title18Black,
                ),
              ),
              Positioned(
                bottom: 80.h,
                right: 24.h,
                child: Text(
                  '₱',
                  style: TextStyleHelper.instance.title18Black,
                ),
              ),
              Positioned(
                bottom: 16.h,
                left: 16.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgStar9,
                  width: 23.h,
                  height: 23.h,
                ),
              ),
              Positioned(
                bottom: 16.h,
                right: 16.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgStar9,
                  width: 23.h,
                  height: 23.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
