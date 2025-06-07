import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/jet_bet_casino_controller.dart';
import './widgets/game_card_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class JetBetCasinoScreen extends GetWidget<JetBetCasinoController> {
  const JetBetCasinoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF2223,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.h),
        child: CustomAppBar(
          height: 68.h,
          showDownloadBanner: true,
          onDownloadPressed: () => controller.onDownloadPressed(),
          backgroundColor: appTheme.colorFF76CD,
        ),
      ),
      body: Stack(
        children: [
          // Logo and Balance Section
          Positioned(
            left: 15.h,
            top: 8.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgLogowj93128x78,
              width: 78.h,
              height: 28.h,
            ),
          ),

          // Balance Display
          Positioned(
            left: 230.h,
            top: 12.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup736,
                  width: 15.h,
                  height: 16.h,
                ),
                SizedBox(width: 22.h),
                Obx(() => Text(
                      '${controller.jetBetCasinoModel.value.currency?.value ?? '₱'}${controller.jetBetCasinoModel.value.balance?.value ?? '1980.00'}',
                      style: TextStyleHelper.instance.title16Bold
                          .copyWith(color: appTheme.colorFFFFC6),
                    )),
                SizedBox(width: 22.h),
                GestureDetector(
                  onTap: () => controller.onRefreshBalance(),
                  child: CustomImageView(
                    imagePath: ImageConstant.img1LightGreenA700,
                    width: 16.h,
                    height: 14.h,
                  ),
                ),
              ],
            ),
          ),

          // Action Buttons
          Positioned(
            left: 15.h,
            top: 41.h,
            child: Row(
              children: [
                CustomButton(
                  text: 'Withdrawal',
                  variant: CustomButtonVariant.gradient1,
                  width: 170.h,
                  height: 36.h,
                  onPressed: () => controller.onWithdrawalPressed(),
                ),
                SizedBox(width: 5.h),
                CustomButton(
                  text: 'Deposit',
                  iconPath: ImageConstant.imgVectorWhiteA700,
                  variant: CustomButtonVariant.gradient2,
                  width: 170.h,
                  height: 36.h,
                  onPressed: () => controller.onDepositPressed(),
                ),
              ],
            ),
          ),

          // Download App Banner
          Positioned(
            left: 15.h,
            top: 85.h,
            child: GestureDetector(
              onTap: () => controller.onAppBannerPressed(),
              child: CustomImageView(
                imagePath: ImageConstant.img130x345,
                width: 345.h,
                height: 130.h,
              ),
            ),
          ),

          // Promotional Message
          Positioned(
            left: 15.h,
            top: 232.h,
            child: Container(
              width: 345.h,
              height: 34.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(17.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 6.h),
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
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                  SizedBox(width: 11.h),
                  CustomImageView(
                    imagePath: ImageConstant.img1Red90001,
                    width: 16.h,
                    height: 16.h,
                  ),
                  SizedBox(width: 11.h),
                  Text(
                    'The recharge',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF85D4),
                  ),
                ],
              ),
            ),
          ),

          // Jackpot Section
          Positioned(
            left: 76.h,
            top: 296.h,
            child: Container(
              width: 282.h,
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
                borderRadius: BorderRadius.circular(4.h),
                border: Border.all(color: appTheme.colorFF786A),
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgIntersect,
                    width: 280.h,
                    height: 42.h,
                  ),
                  Center(
                    child: Obx(() => Text(
                          controller.jetBetCasinoModel.value.jackpotAmount
                                  ?.value ??
                              '14,091,688.88',
                          style: TextStyleHelper.instance.headline24Black
                              .copyWith(letterSpacing: 2),
                        )),
                  ),
                ],
              ),
            ),
          ),

          // Jackpot Icons
          Positioned(
            left: 77.h,
            top: 284.h,
            child: CustomImageView(
              imagePath: ImageConstant.img155x70,
              width: 70.h,
              height: 55.h,
            ),
          ),
          Positioned(
            left: 158.h,
            top: 284.h,
            child: CustomImageView(
              imagePath: ImageConstant.img119x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
          Positioned(
            left: 265.h,
            top: 284.h,
            child: CustomImageView(
              imagePath: ImageConstant.img219x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
          Positioned(
            left: 184.h,
            top: 282.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot1,
              width: 86.h,
              height: 22.h,
            ),
          ),

          // Collect Section
          Positioned(
            left: 0.h,
            top: 282.h,
            child: GestureDetector(
              onTap: () => controller.onCollectPressed(),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1084,
                    width: 72.h,
                    height: 108.h,
                  ),
                  Positioned(
                    left: 16.h,
                    top: 7.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img11,
                      width: 36.h,
                      height: 36.h,
                    ),
                  ),
                  Positioned(
                    left: 13.h,
                    top: 44.h,
                    child: Text(
                      'Collect',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF8089),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Game Grid
          Positioned(
            left: 77.h,
            top: 354.h,
            child: Container(
              width: 282.h,
              child: Obx(() => GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 9.h,
                      mainAxisSpacing: 10.h,
                      childAspectRatio: 0.75,
                    ),
                    itemCount: controller.gameItems.length,
                    itemBuilder: (context, index) {
                      return GameCardWidget(
                        gameModel: controller.gameItems[index],
                        onTap: () => controller
                            .onGamePressed(controller.gameItems[index]),
                      );
                    },
                  )),
            ),
          ),

          // Left Sidebar
          Positioned(
            left: 0.h,
            top: 350.h,
            child: Column(
              children: [
                Obx(() => SidebarMenuItemWidget(
                      sidebarModel: controller.sidebarItems[0],
                      onTap: () => controller
                          .onSidebarItemPressed(controller.sidebarItems[0]),
                    )),
                Obx(() => SidebarMenuItemWidget(
                      sidebarModel: controller.sidebarItems[1],
                      onTap: () => controller
                          .onSidebarItemPressed(controller.sidebarItems[1]),
                    )),
                Obx(() => SidebarMenuItemWidget(
                      sidebarModel: controller.sidebarItems[2],
                      onTap: () => controller
                          .onSidebarItemPressed(controller.sidebarItems[2]),
                    )),
                Obx(() => SidebarMenuItemWidget(
                      sidebarModel: controller.sidebarItems[3],
                      onTap: () => controller
                          .onSidebarItemPressed(controller.sidebarItems[3]),
                    )),
                Obx(() => SidebarMenuItemWidget(
                      sidebarModel: controller.sidebarItems[4],
                      onTap: () => controller
                          .onSidebarItemPressed(controller.sidebarItems[4]),
                    )),
                Obx(() => SidebarMenuItemWidget(
                      sidebarModel: controller.sidebarItems[5],
                      onTap: () => controller
                          .onSidebarItemPressed(controller.sidebarItems[5]),
                    )),
                Obx(() => SidebarMenuItemWidget(
                      sidebarModel: controller.sidebarItems[6],
                      onTap: () => controller
                          .onSidebarItemPressed(controller.sidebarItems[6]),
                    )),
                Obx(() => SidebarMenuItemWidget(
                      sidebarModel: controller.sidebarItems[7],
                      onTap: () => controller
                          .onSidebarItemPressed(controller.sidebarItems[7]),
                    )),
              ],
            ),
          ),

          // Activity Banner
          Positioned(
            left: 244.h,
            top: 870.h,
            child: GestureDetector(
              onTap: () => controller.onActivityPressed(),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant
                        .img9850ea1719a3a4f48276f1a9b5bd953ffb29de1510c16alsgdt41,
                    width: 124.h,
                    height: 108.h,
                  ),
                  Positioned(
                    left: 36.h,
                    top: 85.h,
                    child: Text(
                      'Activity',
                      style: TextStyleHelper.instance.title16Black,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Floating Action Button
          Positioned(
            left: 160.h,
            top: 784.h,
            child: GestureDetector(
              onTap: () => controller.onFabPressed(),
              child: Container(
                width: 57.h,
                height: 56.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF242A,
                  borderRadius: BorderRadius.circular(28.h),
                ),
                child: Center(
                  child: Container(
                    width: 48.h,
                    height: 46.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.156, 0),
                        end: Alignment(1, 1),
                        colors: [
                          Color(0xFFADF835),
                          appTheme.colorFF83CF,
                          Color(0xFF3C7A0B)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(23.h),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.colorFF6199,
                          offset: Offset(-1, -4),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            width: 27.h,
                            height: 25.h,
                          ),
                        ),
                        Positioned(
                          left: 0.h,
                          top: 27.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgSubtract,
                            width: 43.h,
                            height: 14.h,
                          ),
                        ),
                        Positioned(
                          right: 3.h,
                          top: 32.h,
                          child: Container(
                            width: 3.h,
                            height: 3.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: appTheme.whiteCustom),
                              borderRadius: BorderRadius.circular(1.h),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Obx(() => CustomBottomNavigationBar(
            bottomBarItemList: controller.bottomNavItems,
            selectedIndex: controller.selectedBottomNavIndex.value,
            onChanged: (index) => controller.onBottomNavChanged(index),
          )),
    );
  }
}
