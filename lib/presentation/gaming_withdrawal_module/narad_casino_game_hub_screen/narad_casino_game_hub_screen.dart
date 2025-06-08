import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_nav_bar.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/narad_casino_game_hub_controller.dart';
import './widgets/floating_overlay_item.dart';
import './widgets/game_category_item.dart';
import './widgets/game_grid_item.dart';

class NaradCasinoGameHubScreen extends GetWidget<NaradCasinoGameHubController> {
  NaradCasinoGameHubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: SizeUtils.height,
        decoration: BoxDecoration(
          color: appTheme.colorFF1E20,
        ),
        child: Stack(
          children: [
            // Main Content Layout
            Column(
              children: [
                // Top Banner using CustomAppBar
                CustomAppBar(
                  appBarType: CustomAppBarType.promotional,
                  height: 68.h,
                  backgroundImage: ImageConstant
                      .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
                  overlayImage: ImageConstant
                      .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
                  appIcon: ImageConstant.img112,
                  title: 'Many benefits for newcomers',
                  showStars: true,
                  starCount: 5,
                  showDownloadButton: true,
                  downloadButtonText: 'Download',
                  showCloseButton: true,
                  onDownloadTap: () => controller.onDownloadTap(),
                  onCloseTap: () => controller.onCloseTap(),
                ),

                // Main Content Area
                Expanded(
                  child: Row(
                    children: [
                      // Left Sidebar - Game Categories
                      Container(
                        width: 66.h,
                        child: Obx(() => ListView.separated(
                              itemCount: controller.gameCategories.length,
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 1.h),
                              itemBuilder: (context, index) {
                                return GameCategoryItem(
                                  gameCategory:
                                      controller.gameCategories[index],
                                  onTap: () => controller.onCategoryTap(index),
                                );
                              },
                            )),
                      ),

                      // Main Content
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.fromLTRB(16.h, 0, 16.h, 80.h),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 16.h),

                                // Logo and Balance Section
                                _buildLogoAndBalanceSection(),

                                SizedBox(height: 16.h),

                                // Action Buttons
                                _buildActionButtonsSection(),

                                SizedBox(height: 16.h),

                                // Promotional Banner
                                _buildPromotionalBanner(),

                                SizedBox(height: 16.h),

                                // Notification Banner
                                _buildNotificationBanner(),

                                SizedBox(height: 16.h),

                                // Jackpot Section
                                _buildJackpotSection(),

                                SizedBox(height: 24.h),

                                // Games Grid
                                _buildGamesGrid(),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),

            // Floating Overlays
            _buildFloatingOverlays(),

            // Bottom Navigation
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomBottomNavBar(
                items: [
                  CustomBottomNavItem(
                    title: 'Home',
                    routeName: AppRoutes.jetbetGamingHubScreen,
                    icon: ImageConstant.imgVectorLightGreenA70001,
                  ),
                  CustomBottomNavItem(
                    title: 'Promotion',
                    routeName: '/promotion',
                    icon: ImageConstant.img1BlueGray40020x20,
                  ),
                  CustomBottomNavItem(
                    title: 'Invite',
                    routeName: '/invite',
                    elevatedIcon: ImageConstant.imgInvite1,
                  ),
                  CustomBottomNavItem(
                    title: 'Deposit',
                    routeName: '/deposit',
                    icon: ImageConstant.img1BlueGray40020x19,
                  ),
                  CustomBottomNavItem(
                    title: 'Teams',
                    routeName: '/teams',
                    icon: ImageConstant.img1BlueGray400,
                  ),
                ],
                selectedIndex: 0,
                onChanged: (index) => controller.onBottomNavTap(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Logo and Balance Section
  Widget _buildLogoAndBalanceSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgLogowj93128x78,
          height: 28.h,
          width: 78.h,
          fit: BoxFit.cover,
        ),
        CustomCurrencyDisplay(
          price: controller.balance.value ?? '₱1980.00',
          onRefresh: () => controller.onRefreshBalance(),
        ),
      ],
    );
  }

  /// Action Buttons Section
  Widget _buildActionButtonsSection() {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => controller.onWithdrawalTap(),
            child: Container(
              height: 36.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                ),
                borderRadius: BorderRadius.circular(2.h),
              ),
              child: Center(
                child: Text(
                  'Withdrawal',
                  style: TextStyleHelper.instance.body14Bold2,
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: GestureDetector(
            onTap: () => controller.onDepositTap(),
            child: Container(
              height: 36.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                ),
                borderRadius: BorderRadius.circular(2.h),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorWhiteA70011x16,
                    height: 11.h,
                    width: 16.h,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'Deposit',
                    style: TextStyleHelper.instance.body14Bold2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Promotional Banner
  Widget _buildPromotionalBanner() {
    return GestureDetector(
      onTap: () => controller.onPromotionalBannerTap(),
      child: CustomImageView(
        imagePath: ImageConstant.img,
        height: 130.h,
        width: double.maxFinite,
        fit: BoxFit.cover,
        radius: BorderRadius.circular(8.h),
      ),
    );
  }

  /// Notification Banner
  Widget _buildNotificationBanner() {
    return Container(
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
            height: 19.h,
            width: 24.h,
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Text(
              '🔥The recharge of the🔥',
              style: TextStyleHelper.instance.body14Bold2
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red900,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 8.h),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14Bold2
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  /// Jackpot Section
  Widget _buildJackpotSection() {
    return Stack(
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
                Color(0xFF082701)
              ],
            ),
            border: Border.all(color: appTheme.colorFF786A),
            borderRadius: BorderRadius.circular(8.h),
          ),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIntersect,
                height: 42.h,
                width: double.maxFinite,
                fit: BoxFit.cover,
                radius: BorderRadius.circular(2.h),
              ),
              Positioned.fill(
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img155x70,
                      height: 55.h,
                      width: 70.h,
                      fit: BoxFit.cover,
                      radius: BorderRadius.circular(2.h),
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgJackpot1,
                      height: 22.h,
                      width: 86.h,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.h),
                    Expanded(
                      child: Container(
                        child: ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFFFFF819),
                              appTheme.colorFFFFFE,
                              Color(0xFFFEF500)
                            ],
                          ).createShader(bounds),
                          child: Text(
                            controller.jackpotAmount.value ?? '14,091,688.88',
                            style: TextStyleHelper.instance.headline24Black
                                .copyWith(letterSpacing: 1.2, height: 1.4),
                          ),
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img119x31,
                      height: 19.h,
                      width: 31.h,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.img219x31,
                      height: 19.h,
                      width: 31.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        // Collect Button
        Positioned(
          left: -16.h,
          top: 0,
          bottom: 0,
          child: GestureDetector(
            onTap: () => controller.onCollectTap(),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1084,
                  height: 108.h,
                  width: 72.h,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img11,
                        height: 36.h,
                        width: 36.h,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Collect',
                        style: TextStyleHelper.instance.body12Bold2
                            .copyWith(color: appTheme.colorFF8089),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  /// Games Grid
  Widget _buildGamesGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 16.h,
            mainAxisSpacing: 16.h,
            childAspectRatio: 0.8,
          ),
          itemCount: controller.gameItems.length,
          itemBuilder: (context, index) {
            return GameGridItem(
              gameItem: controller.gameItems[index],
              onTap: () => controller.onGameTap(index),
            );
          },
        ));
  }

  /// Floating Overlays
  Widget _buildFloatingOverlays() {
    return Stack(
      children: [
        // VIP Club Overlay
        Positioned(
          top: 440.h,
          right: 17.h,
          child: FloatingOverlayItem(
            floatingOverlay: controller.vipClubOverlay.value,
            onTap: () => controller.onVipClubTap(),
          ),
        ),

        // Money Rain Event
        Positioned(
          top: 587.h,
          left: 116.h,
          child: FloatingOverlayItem(
            floatingOverlay: controller.moneyRainOverlay.value,
            onTap: () => controller.onMoneyRainTap(),
          ),
        ),

        // Notice Details
        Positioned(
          top: 737.h,
          right: 17.h,
          child: FloatingOverlayItem(
            floatingOverlay: controller.noticeOverlay.value,
            onTap: () => controller.onNoticeTap(),
          ),
        ),

        // Promotional Image
        Positioned(
          top: 562.h,
          right: 130.h,
          child: CustomImageView(
            imagePath: ImageConstant.img410,
            height: 150.h,
            width: 130.h,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
