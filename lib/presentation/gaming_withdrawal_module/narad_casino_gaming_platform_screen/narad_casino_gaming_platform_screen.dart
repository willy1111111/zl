import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_nav_bar.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../widgets/custom_gradient_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/narad_casino_gaming_platform_controller.dart';
import './widgets/game_item_widget.dart';
import './widgets/promotional_overlay_widget.dart';
import './widgets/sidebar_item_widget.dart';

class NaradCasinoGamingPlatformScreen
    extends GetWidget<NaradCasinoGamingPlatformController> {
  const NaradCasinoGamingPlatformScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: 958.h,
        child: Stack(
          children: [
            // Main Background
            Container(
              width: double.maxFinite,
              height: 958.h,
              color: appTheme.colorFF1E20,
            ),

            // Top Promotional Banner
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

            // Logo
            Positioned(
              top: 76.h,
              left: 15.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgLogowj93128x78,
                height: 28.h,
                width: 78.h,
              ),
            ),

            // Balance Display
            Positioned(
              top: 80.h,
              right: 18.h,
              child: CustomCurrencyDisplay(
                price: '₱1980.00',
                onRefresh: () => controller.onRefreshBalance(),
              ),
            ),

            // Action Buttons
            Positioned(
              top: 109.h,
              left: 15.h,
              child: Row(
                children: [
                  CustomGradientButton(
                    text: 'Withdrawal',
                    width: 170.h,
                    height: 36.h,
                    borderRadius: 2.h,
                    gradientColors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                    onPressed: () => controller.onWithdrawalTap(),
                  ),
                  SizedBox(width: 5.h),
                  Container(
                    width: 170.h,
                    height: 36.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                    child: Material(
                      color: appTheme.transparentCustom,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(2.h),
                        onTap: () => controller.onDepositTap(),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorWhiteA70011x16,
                              height: 11.h,
                              width: 16.h,
                            ),
                            SizedBox(width: 6.h),
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
              ),
            ),

            // Main Banner
            Positioned(
              top: 153.h,
              left: 15.h,
              child: CustomImageView(
                imagePath: ImageConstant.img,
                height: 130.h,
                width: 345.h,
                radius: BorderRadius.circular(8.h),
              ),
            ),

            // Notification Banner
            Positioned(
              top: 300.h,
              left: 15.h,
              child: Container(
                width: 345.h,
                height: 34.h,
                padding: EdgeInsets.symmetric(horizontal: 6.h),
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
                    Text(
                      '🔥The recharge of th🔥',
                      style: TextStyleHelper.instance.body14Bold2
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                    SizedBox(width: 11.h),
                    CustomImageView(
                      imagePath: ImageConstant.img1Red900,
                      height: 16.h,
                      width: 16.h,
                    ),
                    SizedBox(width: 11.h),
                    Text(
                      'The recharge',
                      style: TextStyleHelper.instance.body14Bold2
                          .copyWith(color: appTheme.colorFF85D4),
                    ),
                  ],
                ),
              ),
            ),

            // Jackpot Section
            Positioned(
              top: 364.h,
              left: 76.h,
              child: Container(
                width: 282.h,
                height: 44.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF072700),
                      appTheme.colorFF1546,
                      Color(0xFF082701)
                    ],
                    stops: [0.0, 0.5, 1.0],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  border: Border.all(color: appTheme.colorFF786A),
                  borderRadius: BorderRadius.circular(4.h),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 1.h,
                      left: 1.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgIntersect,
                        height: 42.h,
                        width: 280.h,
                        radius: BorderRadius.circular(3.h),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Jackpot Elements
            Positioned(
              top: 352.h,
              left: 77.h,
              child: CustomImageView(
                imagePath: ImageConstant.img155x70,
                height: 55.h,
                width: 70.h,
                radius: BorderRadius.circular(3.h),
              ),
            ),

            Positioned(
              top: 352.h,
              left: 158.h,
              child: CustomImageView(
                imagePath: ImageConstant.img119x31,
                height: 19.h,
                width: 31.h,
              ),
            ),

            Positioned(
              top: 352.h,
              left: 265.h,
              child: CustomImageView(
                imagePath: ImageConstant.img219x31,
                height: 19.h,
                width: 31.h,
              ),
            ),

            Positioned(
              top: 350.h,
              left: 184.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgJackpot1,
                height: 22.h,
                width: 86.h,
              ),
            ),

            Positioned(
              top: 371.h,
              left: 145.h,
              child: Container(
                width: 209.h,
                height: 38.h,
                child: Text(
                  '14,091,688.88',
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(letterSpacing: 2.0, height: 1.4),
                ),
              ),
            ),

            // Collect Section
            Positioned(
              top: 350.h,
              left: 0,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1084,
                    height: 108.h,
                    width: 72.h,
                  ),
                  Positioned(
                    top: 7.h,
                    left: 16.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img11,
                      height: 36.h,
                      width: 36.h,
                    ),
                  ),
                  Positioned(
                    top: 44.h,
                    left: 13.h,
                    child: Text(
                      'Collect',
                      style: TextStyleHelper.instance.body12Bold2
                          .copyWith(color: appTheme.colorFF8089),
                    ),
                  ),
                ],
              ),
            ),

            // Side Navigation
            Positioned(
              top: 418.h,
              left: 0,
              child: Column(
                children: [
                  // Hot Section
                  Container(
                    width: 66.h,
                    height: 64.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8.h),
                        bottomLeft: Radius.circular(8.h),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 8.h,
                          left: 18.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVectorDeepOrangeA400,
                            height: 36.h,
                            width: 30.h,
                          ),
                        ),
                        Positioned(
                          top: 44.h,
                          left: 23.h,
                          child: Container(
                            width: 21.h,
                            height: 16.h,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Color(0xFF232B32), Color(0xFF25282D)],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            child: Center(
                              child: Text(
                                'Hot',
                                style: TextStyleHelper.instance.body12Bold2
                                    .copyWith(color: appTheme.colorFF8089),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Sidebar Items
                  ...List.generate(
                    controller.sidebarItems.length,
                    (index) => Obx(() => SidebarItemWidget(
                          sidebarItemModel: controller.sidebarItems[index],
                          onTap: () => controller.onSidebarItemTap(index),
                        )),
                  ),
                ],
              ),
            ),

            // Game Grid
            Positioned(
              top: 422.h,
              left: 77.h,
              child: SizedBox(
                width: 285.h,
                child: Obx(() => GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 9.h,
                        mainAxisSpacing: 20.h,
                        childAspectRatio: 88 / 110,
                      ),
                      itemCount: controller.gameItems.length,
                      itemBuilder: (context, index) {
                        return GameItemWidget(
                          gameItemModel: controller.gameItems[index],
                          onTap: () => controller.onGameItemTap(index),
                        );
                      },
                    )),
              ),
            ),

            // Promotional Overlays
            ...List.generate(
              controller.promotionalOverlays.length,
              (index) => Obx(() => PromotionalOverlayWidget(
                    promotionalOverlayModel:
                        controller.promotionalOverlays[index],
                    onTap: () => controller.onPromotionalOverlayTap(index),
                  )),
            ),

            // Endless Surprises
            Positioned(
              top: 562.h,
              right: 10.h,
              child: GestureDetector(
                onTap: () => controller.onEndlessSurprisesTap(),
                child: CustomImageView(
                  imagePath: ImageConstant.img410,
                  height: 150.h,
                  width: 130.h,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        items: [
          CustomBottomNavItem(
            title: 'Home',
            routeName: AppRoutes.naradGamingHubHomeScreen,
            icon: ImageConstant.imgVectorLightGreenA70001,
          ),
          CustomBottomNavItem(
            title: 'Promotion',
            routeName: AppRoutes.naradGamingHubHomeScreen,
            icon: ImageConstant.img1BlueGray40020x20,
          ),
          CustomBottomNavItem(
            title: 'Invite',
            routeName: AppRoutes.naradGamingHubHomeScreen,
            elevatedIcon: ImageConstant.imgInvite1,
          ),
          CustomBottomNavItem(
            title: 'Deposit',
            routeName: AppRoutes.naradGamingHubHomeScreen,
            icon: ImageConstant.img1BlueGray40020x19,
          ),
          CustomBottomNavItem(
            title: 'Teams',
            routeName: AppRoutes.naradGamingHubHomeScreen,
            icon: ImageConstant.img1BlueGray400,
          ),
        ],
        selectedIndex: 0,
        onChanged: (index) => controller.onBottomNavTap(index),
      ),
    );
  }
}
