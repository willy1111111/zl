import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_money_overlay.dart';
import '../../../../widgets/custom_game_card.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_widget.dart';
import './controller/money_rain_rewards_controller.dart';
import './widgets/money_rain_modal_widget.dart';
import './widgets/sidebar_item_widget.dart';
import './widgets/vip_panel_widget.dart';

// Modified: Corrected import path

class MoneyRainRewardsScreenInitialPage extends StatelessWidget {
  MoneyRainRewardsScreenInitialPage({Key? key}) : super(key: key);

  MoneyRainRewardsController controller = Get.put(MoneyRainRewardsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        body: SizedBox(
            width: double.maxFinite,
            child: Stack(children: [
              _buildMainContent(),
              _buildFloatingMoneyOverlay(),
              _buildAppBar(),
              _buildUserInfoSection(),
              _buildActionButtons(),
              _buildGameBanner(),
              Obx(() => controller.showMoneyRainModal.value
                  ? MoneyRainModalWidget()
                  : SizedBox.shrink()),
              _buildNextRoundTimer(),
              _buildNotificationBanner(),
              _buildJackpotSection(),
              _buildCollectButton(),
              _buildGameGrid(),
              _buildVipPanel(),
              _buildLeftSidebar(),
              _buildNotificationBadge(),
              _buildGameNotificationBadge(),
            ])));
  }

  Widget _buildMainContent() {
    return Container(
        height: SizeUtils.height,
        width: SizeUtils.width,
        child: Column(children: [
          Expanded(child: Container(color: appTheme.colorFF1E20)),
        ]));
  }

  Widget _buildFloatingMoneyOverlay() {
    return CustomFloatingMoneyOverlay(floatingItems: [
      CustomFloatingItem(
          imagePath: ImageConstant.img6554,
          left: 177,
          top: 34,
          width: 53,
          height: 54),
      CustomFloatingItem(
          imagePath: ImageConstant.img6563,
          left: 75,
          top: 89,
          width: 69,
          height: 70,
          animationDelay: Duration(milliseconds: 500)),
      CustomFloatingItem(
          imagePath: ImageConstant.img6564,
          left: 0,
          top: 0,
          width: 54,
          height: 61,
          animationDelay: Duration(milliseconds: 1000)),
      CustomFloatingItem(
          imagePath: ImageConstant.img6563,
          left: 221,
          top: 100,
          width: 69,
          height: 70,
          animationDelay: Duration(milliseconds: 1500)),
      CustomFloatingItem(
          imagePath: ImageConstant.img6567,
          left: 146,
          top: 614,
          width: 52,
          height: 52,
          animationDelay: Duration(milliseconds: 2000)),
      CustomFloatingItem(
          imagePath: ImageConstant.img6568,
          left: 310,
          top: 661,
          width: 50,
          height: 49,
          animationDelay: Duration(milliseconds: 2500)),
      CustomFloatingItem(
          imagePath: ImageConstant.img6555,
          left: 295,
          top: 34,
          width: 53,
          height: 48,
          animationDelay: Duration(milliseconds: 300)),
      CustomFloatingItem(
          imagePath: ImageConstant.img6572,
          left: 100,
          top: 0,
          width: 51,
          height: 45,
          animationDelay: Duration(milliseconds: 800)),
      CustomFloatingItem(
          imagePath: ImageConstant.img6559,
          left: 235,
          top: 654,
          width: 45,
          height: 45,
          animationDelay: Duration(milliseconds: 1200)),
      CustomFloatingItem(
          imagePath: ImageConstant.img6576,
          left: 196,
          top: 589,
          width: 45,
          height: 44,
          animationDelay: Duration(milliseconds: 1800)),
    ]);
  }

  Widget _buildAppBar() {
    return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: CustomAppBar(
            showPromotionalContent: true,
            profileImagePath: ImageConstant.img112,
            promotionalText: 'MANY BENEFITS FOR NEWCOMERS',
            backgroundImagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
            overlayImagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
            starCount: 5,
            onDownloadTap: () => controller.onDownloadTap(),
            onCloseTap: () => controller.onCloseTap()));
  }

  Widget _buildUserInfoSection() {
    return Positioned(
        top: 68.h,
        left: 16.h,
        right: 16.h,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          CustomImageView(
              imagePath: ImageConstant.imgLogowj93128x78,
              height: 28.h,
              width: 78.h),
          Row(children: [
            CustomImageView(
                imagePath: ImageConstant.imgGroup736,
                height: 16.h,
                width: 15.h),
            SizedBox(width: 8.h),
            Obx(() => Text(controller.userBalance!.value ?? 'R\$1980.00',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.colorFFFFB9))),
            SizedBox(width: 8.h),
            CustomImageView(
                imagePath: ImageConstant.img1LightGreenA700,
                height: 14.h,
                width: 16.h),
          ]),
        ]));
  }

  Widget _buildActionButtons() {
    return Positioned(
        top: 108.h,
        left: 16.h,
        right: 16.h,
        child: Row(children: [
          Expanded(
              child: CustomButton(
                  text: 'Withdrawal',
                  iconPath: ImageConstant.imgVectorWhiteA700,
                  variant: CustomButtonVariant.withdrawal,
                  height: 36.h,
                  onTap: () => controller.onWithdrawalTap())),
          SizedBox(width: 8.h),
          Expanded(
              child: CustomButton(
                  text: 'Deposit',
                  iconPath: ImageConstant.imgVectorWhiteA70011x16,
                  variant: CustomButtonVariant.gradient,
                  height: 36.h,
                  onTap: () => controller.onDepositTap())),
        ]));
  }

  Widget _buildGameBanner() {
    return Positioned(
        top: 156.h,
        left: 16.h,
        right: 16.h,
        child: CustomImageView(
            imagePath: ImageConstant.img130x345,
            height: 130.h,
            width: double.maxFinite,
            fit: BoxFit.cover));
  }

  Widget _buildNextRoundTimer() {
    return Positioned(
        bottom: 120.h,
        left: 0,
        right: 0,
        child: Center(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
                decoration: BoxDecoration(
                    color: appTheme.whiteCustom,
                    borderRadius: BorderRadius.circular(12.h)),
                child: Row(mainAxisSize: MainAxisSize.min, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgVectorGray90002,
                      height: 14.h,
                      width: 13.h),
                  SizedBox(width: 8.h),
                  Obx(() => Text(
                      controller.nextRoundTimer!.value ?? 'next Round 18:00:01',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.redCustom))),
                ]))));
  }

  Widget _buildNotificationBanner() {
    return Positioned(
        top: 300.h,
        left: 16.h,
        right: 16.h,
        child: Container(
            padding: EdgeInsets.all(8.h),
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
                  child: CustomRichTextWidget(textSpans: [
                CustomTextSpanData(
                    text: '🔥The recharge of th',
                    color: appTheme.colorFF85D4,
                    fontSize: 14.fSize,
                    fontWeight: FontWeight.bold),
                CustomTextSpanData(
                    text: 'e🔥',
                    color: appTheme.colorFF85D4,
                    fontSize: 14.fSize,
                    fontWeight: FontWeight.normal),
              ])),
              Text('The recharge',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4)),
              SizedBox(width: 8.h),
              CustomImageView(
                  imagePath: ImageConstant.img1Red900,
                  height: 16.h,
                  width: 16.h),
            ])));
  }

  Widget _buildJackpotSection() {
    return Positioned(
        top: 350.h,
        left: 76.h,
        right: 76.h,
        child: Container(
            height: 44.h,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFF072700),
                      appTheme.colorFF1546,
                      Color(0xFF082701)
                    ]),
                border: Border.all(color: appTheme.colorFF786A),
                borderRadius: BorderRadius.circular(4.h)),
            child: Stack(children: [
              CustomImageView(
                  imagePath: ImageConstant.imgIntersect,
                  height: 42.h,
                  width: 280.h,
                  margin: EdgeInsets.all(1.h)),
              Positioned(
                  top: 21.h,
                  left: 69.h,
                  child: Container(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xFFFFF819),
                        appTheme.colorFFFFFE,
                        Color(0xFFFEF500)
                      ])),
                      child: Text('14,091,688.88',
                          style: TextStyleHelper.instance.headline24Black
                              .copyWith(letterSpacing: 2)))),
              Positioned(
                  top: 2.h,
                  left: 1.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.img155x70,
                      height: 55.h,
                      width: 70.h)),
              Positioned(
                  top: 2.h,
                  left: 82.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.img119x31,
                      height: 19.h,
                      width: 31.h)),
              Positioned(
                  top: 2.h,
                  right: 17.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.img219x31,
                      height: 19.h,
                      width: 31.h)),
              Positioned(
                  top: 0.h,
                  left: 108.h,
                  child: CustomImageView(
                      imagePath: ImageConstant.imgJackpot1,
                      height: 22.h,
                      width: 86.h)),
            ])));
  }

  Widget _buildCollectButton() {
    return Positioned(
        top: 350.h,
        left: 0,
        child: GestureDetector(
            onTap: () => controller.onCollectTap(),
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
                  top: 44.h,
                  left: 13.h,
                  child: Text('Collect',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF8089))),
            ])));
  }

  Widget _buildGameGrid() {
    return Positioned(
        top: 422.h,
        left: 77.h,
        right: 16.h,
        child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 16.h,
                crossAxisSpacing: 16.h,
                childAspectRatio: 0.8),
            itemCount: controller.gamesList.length,
            itemBuilder: (context, index) {
              return CustomGameCard(
                  backgroundImage:
                      controller.gamesList[index].gameImage?.value ??
                          '', // Modified: Added required parameter
                  overlayImage:
                      controller.gamesList[index].overlayImage?.value ??
                          '', // Modified: Added required parameter
                  title: controller.gamesList[index].title?.value ??
                      '', // Modified: Added required parameter
                  onTap: () => controller.onGameTap(index));
            })));
  }

  Widget _buildVipPanel() {
    return Positioned(right: 8.h, top: 533.h, child: VipPanelWidget());
  }

  Widget _buildLeftSidebar() {
    return Positioned(
        left: 0,
        top: 418.h,
        bottom: 84.h,
        child: Column(children: [
          SidebarItemWidget(
              iconPath: ImageConstant.imgVectorDeepOrangeA400,
              label: 'Hot',
              isSelected: true,
              onTap: () => controller.onSidebarTap('hot')),
          SidebarItemWidget(
              iconPath: ImageConstant.img10733643587,
              label: 'Slot',
              onTap: () => controller.onSidebarTap('slot')),
          SidebarItemWidget(
              iconPath: ImageConstant.img136x36,
              label: 'Live',
              onTap: () => controller.onSidebarTap('live')),
          SidebarItemWidget(
              iconPath: ImageConstant.img5,
              label: 'Bingo',
              onTap: () => controller.onSidebarTap('bingo')),
          SidebarItemWidget(
              iconPath: ImageConstant.img2,
              label: 'Table',
              onTap: () => controller.onSidebarTap('table')),
          SidebarItemWidget(
              iconPath: ImageConstant.img7,
              label: 'Fish',
              onTap: () => controller.onSidebarTap('fish')),
        ]));
  }

  Widget _buildNotificationBadge() {
    return Positioned(
        bottom: 200.h,
        right: 50.h,
        child: CustomImageView(
            imagePath: ImageConstant.imgGroup11862, height: 56.h, width: 56.h));
  }

  Widget _buildGameNotificationBadge() {
    return Positioned(
        top: 597.h,
        right: 50.h,
        child: Container(
            height: 14.h,
            width: 14.h,
            decoration: BoxDecoration(
                color: appTheme.colorFFF335,
                borderRadius: BorderRadius.circular(7.h)),
            child: Center(
                child: Text('1',
                    style: TextStyleHelper.instance.body12Black.copyWith(
                        color: appTheme.whiteCustom, letterSpacing: 2)))));
  }
}
