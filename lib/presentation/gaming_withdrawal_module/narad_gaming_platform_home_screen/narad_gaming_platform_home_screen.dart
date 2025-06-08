import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_nav_bar.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/narad_gaming_platform_home_controller.dart';
import './widgets/game_card_widget.dart';
import './widgets/game_modal_widget.dart';
import './widgets/side_navigation_item_widget.dart';

class NaradGamingPlatformHomeScreen
    extends GetWidget<NaradGamingPlatformHomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(68.h),
            child: CustomAppBar(
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
                onCloseTap: () => controller.onCloseTap())),
        body: SizedBox(
            width: 375.h,
            height: 958.h,
            child: Stack(children: [
              // Logo and Balance Section
              Positioned(
                  top: 8.h,
                  left: 15.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLogowj93128x78,
                      height: 28.h,
                      width: 78.h)),

              // Balance Display
              Positioned(
                  top: 12.h,
                  right: 18.h,
                  child: CustomCurrencyDisplay(
                      price: controller.userBalance!.value ?? '₱1980.00',
                      onRefresh: () => controller.onRefreshBalance())),

              // Action Buttons
              Positioned(
                  top: 41.h,
                  left: 15.h,
                  right: 15.h,
                  child: Row(children: [
                    Expanded(
                        child: CustomGradientButton(
                            text: 'Withdrawal',
                            onPressed: () => controller.onWithdrawalTap(),
                            height: 36.h,
                            borderRadius: 2.h,
                            gradientColors: [
                              Color(0xFFFFC61E),
                              Color(0xFFFF9F00)
                            ],
                            textStyle: TextStyleHelper.instance.body14Bold2)),
                    SizedBox(width: 5.h),
                    Expanded(
                        child: Container(
                            height: 36.h,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                      Color(0xFF76CD00),
                                      Color(0xFF478A03)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter),
                                borderRadius: BorderRadius.circular(2.h)),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgVectorWhiteA70011x16,
                                      height: 11.h,
                                      width: 16.h),
                                  SizedBox(width: 8.h),
                                  Text('Deposit',
                                      style:
                                          TextStyleHelper.instance.body14Bold2),
                                ]))),
                  ])),

              // Main Game Banner
              Positioned(
                  top: 85.h,
                  left: 15.h,
                  right: 15.h,
                  child: GestureDetector(
                      onTap: () => controller.onMainBannerTap(),
                      child: CustomImageView(
                          imagePath: ImageConstant.img,
                          height: 130.h,
                          width: 345.h,
                          fit: BoxFit.cover))),

              // Notification Banner
              Positioned(
                  top: 232.h,
                  left: 15.h,
                  right: 15.h,
                  child: Container(
                      height: 34.h,
                      decoration: BoxDecoration(
                          color: appTheme.colorFF2528,
                          borderRadius: BorderRadius.circular(17.h)),
                      padding: EdgeInsets.symmetric(horizontal: 6.h),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant
                                .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
                            height: 19.h,
                            width: 24.h),
                        SizedBox(width: 8.h),
                        Expanded(
                            child: Row(children: [
                          Text('🔥The recharge of the🔥',
                              style: TextStyleHelper.instance.body14Bold2
                                  .copyWith(color: appTheme.colorFF85D4)),
                          SizedBox(width: 8.h),
                          CustomImageView(
                              imagePath: ImageConstant.img1Red900,
                              height: 16.h,
                              width: 16.h),
                          SizedBox(width: 8.h),
                          Text('The recharge',
                              style: TextStyleHelper.instance.body14Bold2
                                  .copyWith(color: appTheme.colorFF85D4)),
                        ])),
                      ]))),

              // Jackpot Section
              _buildJackpotSection(),

              // Collect Button
              Positioned(
                  top: 350.h,
                  left: 0,
                  child: GestureDetector(
                      onTap: () => controller.onCollectTap(),
                      child: SizedBox(
                          width: 72.h,
                          height: 108.h,
                          child: Stack(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgGroup1084,
                                height: 108.h,
                                width: 72.h),
                            Positioned(
                                top: 7.h,
                                left: 16.h,
                                child: CustomImageView(
                                    imagePath: ImageConstant.img11,
                                    height: 36.h,
                                    width: 36.h)),
                            Positioned(
                                bottom: 4.h,
                                left: 13.h,
                                child: Text('Collect',
                                    style: TextStyleHelper.instance.body12Bold2
                                        .copyWith(
                                            color: appTheme.colorFF8089))),
                          ])))),

              // Hot Button
              Positioned(
                  top: 418.h,
                  left: 0,
                  child: GestureDetector(
                      onTap: () => controller.onHotTap(),
                      child: Container(
                          width: 66.h,
                          height: 64.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Color(0xFFFFC61E),
                                    Color(0xFFFFA001)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.h),
                                  bottomRight: Radius.circular(8.h))),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgVectorDeepOrangeA400,
                                    height: 30.h,
                                    width: 36.h),
                                SizedBox(height: 4.h),
                                Text('Hot',
                                    style: TextStyleHelper.instance.body12Bold2
                                        .copyWith(color: appTheme.colorFF232B)),
                              ])))),

              // Side Navigation
              Positioned(
                  left: 0,
                  top: 486.h,
                  child: Obx(() => Column(
                      children: List.generate(
                          controller.sideNavigationItems.length,
                          (index) => SideNavigationItemWidget(
                              navigationItem:
                                  controller.sideNavigationItems[index],
                              onTap: () =>
                                  controller.onSideNavigationTap(index)))))),

              // Games Grid
              Positioned(
                  top: 422.h,
                  left: 77.h,
                  child: Obx(() => SizedBox(
                      width: 289.h,
                      child: GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  mainAxisSpacing: 9.h,
                                  crossAxisSpacing: 9.h,
                                  childAspectRatio: 0.85),
                          itemCount: controller.gameCards.length,
                          itemBuilder: (context, index) {
                            return GameCardWidget(
                                gameCard: controller.gameCards[index],
                                onTap: () => controller.onGameCardTap(index));
                          })))),

              // Overlay with Modals
              Obx(() => controller.showModals!.value ?? false
                  ? Container(
                      color: appTheme.blackCustom.withAlpha(128),
                      child: Stack(children: [
                        // Sign-in Modal
                        Positioned(
                            top: 425.h,
                            left: 119.h,
                            child: GameModalWidget(
                                modalData: controller.signInModal!.value,
                                onTap: () => controller.onModalTap('signin'))),

                        // Gift Code Modal
                        Positioned(
                            top: 524.h,
                            left: 7.h,
                            child: GameModalWidget(
                                modalData: controller.giftCodeModal!.value,
                                onTap: () =>
                                    controller.onModalTap('giftcode'))),

                        // VIP Club Modal
                        Positioned(
                            top: 582.h,
                            left: 127.h,
                            child: GameModalWidget(
                                modalData: controller.vipClubModal!.value,
                                onTap: () => controller.onModalTap('vipclub'))),

                        // Money Rain Modal
                        Positioned(
                            top: 406.h,
                            right: 7.h,
                            child: GameModalWidget(
                                modalData: controller.moneyRainModal!.value,
                                onTap: () =>
                                    controller.onModalTap('moneyrain'))),

                        // Slot Machine Image
                        Positioned(
                            top: 567.h,
                            right: 0,
                            child: CustomImageView(
                                imagePath: ImageConstant.img410,
                                height: 150.h,
                                width: 130.h)),

                        // Additional Notice Modals
                        Positioned(
                            top: 651.h,
                            left: 7.h,
                            child: GameModalWidget(
                                modalData: controller.noticeModal1!.value,
                                onTap: () => controller.onModalTap('notice1'))),

                        Positioned(
                            top: 748.h,
                            left: 119.h,
                            child: GameModalWidget(
                                modalData: controller.noticeModal2!.value,
                                onTap: () => controller.onModalTap('notice2'))),

                        Positioned(
                            top: 768.h,
                            right: 7.h,
                            child: GameModalWidget(
                                modalData: controller.noticeModal3!.value,
                                onTap: () => controller.onModalTap('notice3'))),
                      ]))
                  : SizedBox.shrink()),
            ])),
        bottomNavigationBar: CustomBottomNavBar(
            items: controller.bottomNavItems,
            selectedIndex: controller.selectedBottomNavIndex!.value ?? 0,
            onChanged: (index) => controller.onBottomNavChanged(index)));
  }

  Widget _buildJackpotSection() {
    return Positioned(
        top: 283.h,
        left: 15.h,
        child: SizedBox(
            width: 282.h,
            height: 44.h,
            child: Stack(children: [
              Container(
                  width: 282.h,
                  height: 44.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0xFF072700),
                            appTheme.colorFF1546,
                            Color(0xFF082701)
                          ],
                          stops: [
                            0.0,
                            0.5,
                            1.0
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      border: Border.all(color: appTheme.colorFF786A),
                      borderRadius: BorderRadius.circular(4.h)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgIntersect,
                      height: 42.h,
                      width: 280.h,
                      margin: EdgeInsets.all(1.h))),
              Positioned(
                  top: -12.h,
                  left: 1.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.img155x70,
                      height: 55.h,
                      width: 70.h)),
              Positioned(
                  top: -12.h,
                  left: 82.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.img119x31,
                      height: 19.h,
                      width: 31.h)),
              Positioned(
                  top: -12.h,
                  right: 17.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.img219x31,
                      height: 19.h,
                      width: 31.h)),
              Positioned(
                  top: -14.h,
                  left: 108.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgJackpot1,
                      height: 22.h,
                      width: 86.h)),
              Positioned(
                  top: 7.h,
                  left: 69.h,
                  child: Obx(() => Text(
                      controller.jackpotAmount!.value ?? '14,091,688.88',
                      style: TextStyleHelper.instance.headline24Black.copyWith(
                          color: appTheme.colorFFFFF8, letterSpacing: 2.0)))),
            ])));
  }
}
