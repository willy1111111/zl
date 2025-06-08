import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_rich_text.dart';
import '../../widgets/custom_vip_floating_menu.dart';
import './controller/j_bet88_gaming_hub_screen_two_controller.dart';
import './widgets/game_card_item_widget.dart';
import './widgets/side_navigation_item_widget.dart';

// Modified: Added math import for star clipper

class JBet88GamingHubScreenTwo
    extends GetWidget<JBet88GamingHubScreenTwoController> {
  const JBet88GamingHubScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Main Content
          Column(
            children: [
              // Top Promotional Banner
              _buildTopPromotionalBanner(),

              // Account Balance Section
              _buildAccountBalanceSection(),

              // Action Buttons
              _buildActionButtons(),

              // Banner Image
              _buildBannerImage(),

              // Scrolling Text Banner
              _buildScrollingTextBanner(),

              // Jackpot Section
              _buildJackpotSection(),

              Expanded(
                child: _buildGameGrid(),
              ),
            ],
          ),

          // Collect Section
          _buildCollectSection(),

          // Side Navigation
          _buildSideNavigation(),

          // VIP Rewards Popup
          Obx(() => controller.showVipRewardsPopup.value
              ? _buildVipRewardsPopup()
              : SizedBox()),

          // Floating VIP Menu
          _buildFloatingVipMenu(),

          // Customer Service
          _buildCustomerService(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildTopPromotionalBanner() {
    return Container(
      height: 68.h,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
            height: 68.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
            height: 68.h,
            width: 279.h,
            fit: BoxFit.cover,
          ),

          // App Icon
          Positioned(
            left: 12.h,
            top: 9.h,
            child: CustomImageView(
              imagePath: ImageConstant.img112,
              height: 50.h,
              width: 50.h,
              radius: BorderRadius.circular(8.h),
            ),
          ),

          // Stars
          Positioned(
            top: 41.h,
            left: 68.h,
            child: Row(
              children: List.generate(
                5,
                (index) => Container(
                  width: 15.h,
                  height: 15.h,
                  margin: EdgeInsets.only(right: 2.h),
                  decoration: BoxDecoration(
                    color: appTheme.colorFFFFF4,
                    shape: BoxShape.rectangle,
                  ),
                  child: ClipPath(
                    clipper: StarClipper(),
                    child: Container(
                      color: appTheme.colorFFFFF4,
                    ),
                  ),
                ),
              ),
            ),
          ),

          // Text
          Positioned(
            left: 68.h,
            top: 10.h,
            child: SizedBox(
              width: 127.h,
              child: Text(
                'MANY BENEFITS FOR NEWCOMERS',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom, height: 1.17),
              ),
            ),
          ),

          // Download Button
          Positioned(
            right: 30.h,
            top: 18.h,
            child: GestureDetector(
              onTap: () => controller.onDownloadTapped(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.h),
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  borderRadius: BorderRadius.circular(16.h),
                ),
                child: Text(
                  'Download',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF478A),
                ),
              ),
            ),
          ),

          // Close Button
          Positioned(
            right: 7.h,
            top: 4.h,
            child: GestureDetector(
              onTap: () => controller.onCloseBannerTapped(),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreen400,
                height: 26.h,
                width: 26.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAccountBalanceSection() {
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
              SizedBox(width: 6.h),
              Obx(() => Text(
                    controller.balanceAmount.value ?? 'R\$1980.00',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFB9),
                  )),
              SizedBox(width: 6.h),
              GestureDetector(
                onTap: () => controller.onRefreshBalanceTapped(),
                child: CustomImageView(
                  imagePath: ImageConstant.img1LightGreenA700,
                  height: 16.h,
                  width: 14.h,
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
              onPressed: () => controller.onWithdrawalTapped(),
              buttonVariant: CustomButtonVariant.textWithIcon,
              gradientType: CustomButtonGradient.orange,
              height: 36.h,
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              onPressed: () => controller.onDepositTapped(),
              buttonVariant: CustomButtonVariant.textWithIcon,
              gradientType: CustomButtonGradient.exchange,
              height: 36.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBannerImage() {
    return Padding(
      padding: EdgeInsets.fromLTRB(15.h, 8.h, 15.h, 17.h),
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
        height: 130.h,
        width: double.infinity,
        radius: BorderRadius.circular(8.h),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildScrollingTextBanner() {
    return Container(
      margin: EdgeInsets.fromLTRB(15.h, 0, 15.h, 17.h),
      height: 34.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(17.h),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: CustomImageView(
              imagePath: ImageConstant
                  .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
              height: 19.h,
              width: 24.h,
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: CustomRichText(
                textSegments: [
                  CustomTextSegment(
                    text: '🔥The recharge of the🔥',
                    fontSize: 14.fSize,
                    fontWeight: FontWeight.bold,
                    color: appTheme.colorFF85D4,
                  ),
                  CustomTextSegment(
                    text: ' The recharge',
                    fontSize: 14.fSize,
                    fontWeight: FontWeight.bold,
                    color: appTheme.colorFF85D4,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(15.h, 0, 15.h, 17.h),
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
                Positioned(
                  left: 1.h,
                  top: 1.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIntersect42x280,
                    height: 42.h,
                    width: 280.h,
                    radius: BorderRadius.circular(3.h),
                  ),
                ),
                Positioned(
                  left: 1.h,
                  top: -12.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img155x70,
                    height: 55.h,
                    width: 70.h,
                    radius: BorderRadius.circular(3.h),
                  ),
                ),
                Positioned(
                  left: 107.h,
                  top: -2.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgJackpot1,
                    height: 22.h,
                    width: 86.h,
                  ),
                ),
                Positioned(
                  left: 68.h,
                  top: 19.h,
                  child: Obx(() => Text(
                        controller.jackpotAmount.value ?? '14,091,688.88',
                        style: TextStyleHelper.instance.headline24Black
                            .copyWith(letterSpacing: 2.h, height: 1.42),
                      )),
                ),
                Positioned(
                  left: 81.h,
                  top: 0.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img119x31,
                    height: 19.h,
                    width: 31.h,
                  ),
                ),
                Positioned(
                  right: 23.h,
                  top: 0.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img219x31,
                    height: 19.h,
                    width: 31.h,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: -15.h,
            top: -2.h,
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

  Widget _buildCollectSection() {
    return Positioned(
      left: 0,
      top: 350.h,
      child: Column(
        children: [
          Container(
            width: 66.h,
            height: 64.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(8.h),
                bottomRight: Radius.circular(8.h),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorDeepOrangeA400,
                  height: 30.h,
                  width: 36.h,
                ),
                Text(
                  'Hot',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),
          Padding(
            padding: EdgeInsets.only(left: 13.h),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img11,
                  height: 36.h,
                  width: 36.h,
                ),
                SizedBox(height: 1.h),
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
    );
  }

  Widget _buildSideNavigation() {
    return Positioned(
      left: 0,
      top: 486.h,
      child: Obx(() => Column(
            children: List.generate(
              controller.sideNavigationItems.length,
              (index) => SideNavigationItemWidget(
                sideNavigationItem: controller.sideNavigationItems[index],
                onTap: () => controller.onSideNavigationTapped(index),
              ),
            ),
          )),
    );
  }

  Widget _buildGameGrid() {
    return Container(
      margin: EdgeInsets.fromLTRB(77.h, 422.h, 16.h, 0),
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9.h,
              mainAxisSpacing: 20.h,
              childAspectRatio: 0.8,
            ),
            itemCount: controller.gameCardItems.length,
            itemBuilder: (context, index) {
              return GameCardItemWidget(
                gameCardItem: controller.gameCardItems[index],
                onTap: () => controller.onGameCardTapped(index),
              );
            },
          )),
    );
  }

  Widget _buildVipRewardsPopup() {
    return Container(
      color: appTheme.blackCustom.withAlpha(204),
      child: Center(
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img0867344,
              height: 342.h,
              width: 354.h,
            ),

            // VIP Badge
            Positioned(
              left: 30.h,
              top: 262.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgV10,
                height: 65.h,
                width: 65.h,
              ),
            ),

            // Green Background
            Positioned(
              left: 15.h,
              top: 280.h,
              child: Container(
                width: 345.h,
                height: 47.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF0C5D,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(8.h)),
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

            // VIP Rectangle
            Positioned(
              left: 76.h,
              top: 267.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle623,
                height: 60.h,
                width: 284.h,
              ),
            ),

            // Main Content Box
            Positioned(
              left: 57.h,
              top: 339.h,
              child: Container(
                width: 260.h,
                height: 210.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFFE0F2B9), Color(0xFF95ECAE)],
                  ),
                  borderRadius: BorderRadius.circular(4.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.blackCustom,
                      offset: Offset(0, 1.h),
                      blurRadius: 2.h,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    // Gift Box Image
                    Positioned(
                      left: 58.h,
                      top: 2.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.img11145x145,
                        height: 145.h,
                        width: 145.h,
                      ),
                    ),

                    // Prize Amount Background
                    Positioned(
                      left: 85.h,
                      top: 127.h,
                      child: Container(
                        width: 90.h,
                        height: 28.h,
                        decoration: BoxDecoration(
                          color: appTheme.blackCustom,
                          borderRadius: BorderRadius.circular(14.h),
                        ),
                        child: Center(
                          child: Text(
                            '₱ ??',
                            style: TextStyleHelper.instance.headline24Bold,
                          ),
                        ),
                      ),
                    ),

                    // Click Button
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: GestureDetector(
                        onTap: () => controller.onVipRewardClaimTapped(),
                        child: Container(
                          height: 28.h,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFFFD33B), Color(0xFFFFBA09)],
                            ),
                          ),
                          child: Center(
                            child: Text(
                              'Click to get the amount',
                              style: TextStyleHelper.instance.body14Black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Text Content
            Positioned(
              left: 118.h,
              top: 276.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'VlP exclusive rewards !',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(height: 1.19),
                  ),
                  SizedBox(height: 6.h),
                  Text(
                    'Valid within seven days.',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF85D4, height: 1.17),
                  ),
                ],
              ),
            ),

            // Timer
            Positioned(
              left: 84.h,
              top: 562.h,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1264,
                    height: 13.h,
                    width: 11.h,
                  ),
                  SizedBox(width: 2.h),
                  Obx(() => Text(
                        controller.timeLeft.value ??
                            'Time left to collect:6day 23:59:59',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(color: appTheme.colorFF4B55),
                      )),
                ],
              ),
            ),

            // Close Button
            Positioned(
              right: 25.h,
              top: 227.h,
              child: GestureDetector(
                onTap: () => controller.onCloseVipPopupTapped(),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup848,
                  height: 32.h,
                  width: 32.h,
                ),
              ),
            ),

            // Arrow Button
            Positioned(
              right: 3.h,
              top: 413.h,
              child: Container(
                width: 29.h,
                height: 70.h,
                decoration: BoxDecoration(
                  color: appTheme.blackCustom,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                child: Center(
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVectorWhiteA70024x13,
                    height: 24.h,
                    width: 13.h,
                    radius: BorderRadius.circular(1.h),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingVipMenu() {
    return CustomVipFloatingMenu(
      selectedIndex: 4,
      onItemTap: (index) => controller.onVipMenuItemTapped(index),
    );
  }

  Widget _buildCustomerService() {
    return Positioned(
      right: 77.h,
      bottom: 63.h,
      child: GestureDetector(
        onTap: () => controller.onCustomerServiceTapped(),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup11862,
          height: 56.h,
          width: 56.h,
        ),
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return CustomBottomBar(
      bottomBarItemList: controller.bottomBarItemList,
      selectedIndex: 0,
      hasFloatingButton: true,
      floatingButtonImage: ImageConstant.imgInvite154x54,
      onChanged: (index) => controller.onBottomNavigationTapped(index),
    );
  }
}

class StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final center = Offset(size.width / 2, size.height / 2);
    final outerRadius = size.width / 2;
    final innerRadius = outerRadius * 0.4;

    for (int i = 0; i < 10; i++) {
      final angle = (i * 36) * (3.14159 / 180);
      final radius = i.isEven ? outerRadius : innerRadius;
      final x = center.dx + radius * math.cos(angle - 3.14159 / 2);
      final y = center.dy + radius * math.sin(angle - 3.14159 / 2);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
