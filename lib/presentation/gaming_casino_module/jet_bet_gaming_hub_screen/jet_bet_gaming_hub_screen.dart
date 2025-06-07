import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/jet_bet_gaming_hub_controller.dart';
import './widgets/game_card_widget.dart';
import './widgets/side_menu_button_widget.dart';

class JetBetGamingHubScreen extends StatelessWidget {
  JetBetGamingHubScreen({Key? key}) : super(key: key);

  final JetBetGamingHubController controller =
      Get.put(JetBetGamingHubController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF2223,
        body: Stack(children: [
          Column(children: [
            // Top Promotional Banner
            CustomAppBar(
                gameIcon: ImageConstant.img112,
                showStarRating: true,
                promotionalText: 'Many benefits for newcomers',
                showDownloadButton: true,
                showCloseButton: true,
                backgroundGradient: LinearGradient(
                    colors: [Color(0xFF76CD00), Color(0xFF478A03)]),
                backgroundImage: ImageConstant
                    .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
                overlayImage: ImageConstant
                    .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
                height: 68.h,
                onDownloadTap: () => controller.onDownloadTap(),
                onCloseTap: () => controller.onCloseTap()),

            Expanded(
                child: SingleChildScrollView(
                    child: Column(children: [
              // Logo Section
              _buildLogoSection(),

              // Balance and Action Buttons Section
              _buildBalanceSection(),

              // Download App Banner
              _buildDownloadBanner(),

              // Promotional Banner
              _buildPromotionalBanner(),

              // Jackpot Section
              _buildJackpotSection(),

              // Game Categories Grid
              _buildGameGrid(),

              SizedBox(height: 80.h), // Space for floating elements
            ]))),
          ]),

          // Left Sidebar
          _buildLeftSidebar(),

          // Floating Action Button
          _buildFloatingActionButton(),

          // Activity Banner
          _buildActivityBanner(),
        ]));
  }

  Widget _buildLogoSection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 7.h),
        child: Align(
            alignment: Alignment.centerLeft,
            child: CustomImageView(
                imagePath: ImageConstant.imgLogowj93128x78,
                height: 28.h,
                width: 78.h)));
  }

  Widget _buildBalanceSection() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        margin: EdgeInsets.only(bottom: 8.h),
        child: Column(children: [
          // Balance Display
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgGroup736,
                height: 16.h,
                width: 15.h),
            SizedBox(width: 22.h),
            Obx(() => Text(controller.balanceAmount!.value ?? '₱1980.00',
                style: TextStyleHelper.instance.title16BoldArial)),
            SizedBox(width: 22.h),
            GestureDetector(
                onTap: () => controller.onRefreshBalance(),
                child: CustomImageView(
                    imagePath: ImageConstant.img1LightGreenA700,
                    height: 16.h,
                    width: 14.h)),
          ]),
          SizedBox(height: 4.h),

          // Action Buttons
          Row(children: [
            Expanded(
                child: CustomButton(
                    text: 'Withdrawal',
                    buttonVariant: CustomButtonVariant.gradientOrange,
                    height: 36.h,
                    onPressed: () => controller.onWithdrawalTap())),
            SizedBox(width: 5.h),
            Expanded(
                child: CustomButton(
                    text: 'Deposit',
                    leftIcon: ImageConstant.imgVectorWhiteA700,
                    buttonVariant: CustomButtonVariant.gradientGreen,
                    height: 36.h,
                    onPressed: () => controller.onDepositTap())),
          ]),
        ]));
  }

  Widget _buildDownloadBanner() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.h),
        child: CustomImageView(
            imagePath: ImageConstant.img130x345,
            height: 130.h,
            width: double.infinity,
            fit: BoxFit.cover));
  }

  Widget _buildPromotionalBanner() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        height: 34.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(17.h)),
        child: Row(children: [
          CustomImageView(
              imagePath: ImageConstant
                  .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
              height: 19.h,
              width: 24.h),
          SizedBox(width: 8.h),
          Expanded(
              child: Text('🔥The recharge of the🔥',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF85D4))),
          CustomImageView(
              imagePath: ImageConstant.img1Red900, height: 16.h, width: 16.h),
          SizedBox(width: 11.h),
          Text('The recharge',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF85D4)),
        ]));
  }

  Widget _buildJackpotSection() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
        height: 44.h,
        child: Stack(children: [
          // Background
          Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF072700),
                        appTheme.colorFF1546,
                        Color(0xFF082701)
                      ]),
                  borderRadius: BorderRadius.circular(4.h),
                  border: Border.all(color: appTheme.colorFF786A)),
              child: CustomImageView(
                  imagePath: ImageConstant.imgIntersect,
                  height: 42.h,
                  width: 280.h,
                  fit: BoxFit.cover)),

          // Jackpot Content
          Positioned(
              left: -15.h,
              top: -8.h,
              child: CustomImageView(
                  imagePath: ImageConstant.imgFrame1084,
                  height: 108.h,
                  width: 72.h)),
          Positioned(
              left: -2.h,
              top: 7.h,
              child: CustomImageView(
                  imagePath: ImageConstant.img136x36,
                  height: 36.h,
                  width: 36.h)),
          Positioned(
              left: -2.h,
              top: 44.h,
              child: Text('Collect',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.colorFF8089))),
          Positioned(
              left: 62.h,
              top: 2.h,
              child: CustomImageView(
                  imagePath: ImageConstant.img155x70,
                  height: 55.h,
                  width: 70.h)),
          Positioned(
              left: 130.h,
              top: 21.h,
              child: Obx(() => Text(
                  controller.jackpotAmount!.value ?? '14,091,688.88',
                  style: TextStyleHelper.instance.headline24BlackArial
                      .copyWith(letterSpacing: 2)))),
        ]));
  }

  Widget _buildGameGrid() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 9.h,
                crossAxisSpacing: 9.h,
                childAspectRatio: 0.8),
            itemCount: controller.gameCards.length,
            itemBuilder: (context, index) {
              return GameCardWidget(
                  gameCard: controller.gameCards[index],
                  onTap: () =>
                      controller.onGameCardTap(controller.gameCards[index]));
            })));
  }

  Widget _buildLeftSidebar() {
    return Positioned(
        left: 0,
        top: 418.h,
        child: Column(children: [
          Obx(() => ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: controller.sideMenuButtons.length,
              itemBuilder: (context, index) {
                return SideMenuButtonWidget(
                    sideMenuButton: controller.sideMenuButtons[index],
                    onTap: () => controller
                        .onSideMenuTap(controller.sideMenuButtons[index]));
              })),
        ]));
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
        right: 48.h,
        bottom: 78.h,
        child: GestureDetector(
            onTap: () => controller.onFloatingActionTap(),
            child: Container(
                width: 57.h,
                height: 56.h,
                decoration: BoxDecoration(
                    color: appTheme.colorFF242A,
                    borderRadius: BorderRadius.circular(28.h)),
                child: Stack(children: [
                  Positioned(
                      left: 3.h,
                      top: 5.h,
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
                                  ]),
                              borderRadius: BorderRadius.circular(23.h),
                              boxShadow: [
                                BoxShadow(
                                    color: appTheme.colorFF6199,
                                    offset: Offset(-1, -4),
                                    blurRadius: 4),
                              ]),
                          child: Stack(children: [
                            Positioned(
                                left: 12.h,
                                top: 5.h,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgVector25x27,
                                    height: 25.h,
                                    width: 27.h)),
                            Positioned(
                                left: 0,
                                top: 27.h,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgSubtract,
                                    height: 14.h,
                                    width: 43.h)),
                          ]))),
                  Positioned(
                      left: 11.h,
                      top: 23.h,
                      child: CustomImageView(
                          imagePath: ImageConstant.img5,
                          height: 31.h,
                          width: 45.h)),
                ]))));
  }

  Widget _buildActivityBanner() {
    return Positioned(
        right: 7.h,
        bottom: 46.h,
        child: GestureDetector(
            onTap: () => controller.onActivityTap(),
            child: Container(
                width: 124.h,
                height: 108.h,
                child: Stack(children: [
                  CustomImageView(
                      imagePath: ImageConstant.img0x0,
                      height: 108.h,
                      width: 124.h,
                      fit: BoxFit.cover),
                  Positioned(
                      left: 36.h,
                      bottom: 23.h,
                      child: Text('Activity',
                          style: TextStyleHelper.instance.title16BlackArial)),
                ]))));
  }
}
