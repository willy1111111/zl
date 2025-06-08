import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_floating_money_overlay.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text_widget.dart';
import './controller/money_rain_gaming_app_controller.dart';
import './widgets/game_card_item_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';
import './widgets/vip_section_widget.dart';

class MoneyRainGamingAppScreen extends GetWidget<MoneyRainGamingAppController> {
  const MoneyRainGamingAppScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        showPromotionalContent: true,
        profileImagePath: ImageConstant.img112,
        promotionalText: "MANY BENEFITS FOR NEWCOMERS",
        starCount: 5,
        onDownloadTap: () => controller.onDownloadTap(),
        onCloseTap: () => controller.onCloseTap(),
        backgroundColor: appTheme.colorFF76CD,
      ),
      body: Stack(
        children: [
          _buildFloatingMoneyBackground(),
          _buildMainContent(),
          _buildSidebarMenu(),
          _buildVipSection(),
          Obx(() => controller.isMoneyRainModalVisible.value
              ? _buildMoneyRainModal()
              : SizedBox.shrink()),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: 0,
        onItemTapped: (index, route) =>
            controller.onBottomNavTapped(index, route),
      ),
    );
  }

  Widget _buildFloatingMoneyBackground() {
    return CustomFloatingMoneyOverlay(
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
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6564,
          left: 0,
          top: 0,
          width: 54,
          height: 61,
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6563,
          left: 221,
          top: 100,
          width: 69,
          height: 70,
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6563,
          left: 154,
          top: 680,
          width: 69,
          height: 70,
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6567,
          left: 146,
          top: 614,
          width: 52,
          height: 52,
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6568,
          left: 310,
          top: 661,
          width: 50,
          height: 49,
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6555,
          left: 295,
          top: 34,
          width: 53,
          height: 48,
        ),
        CustomFloatingItem(
          imagePath: ImageConstant.img6559,
          left: 43,
          top: 53,
          width: 45,
          height: 45,
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildUserBalanceSection(),
          _buildActionButtons(),
          _buildGameSection(),
          _buildJackpotSection(),
          _buildNotificationBar(),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }

  Widget _buildUserBalanceSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 12.h),
      child: Row(
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
                    controller.userBalance.value,
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFB9),
                  )),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.img1LightGreenA700,
                width: 16.h,
                height: 14.h,
                onTap: () => controller.onRefreshBalance(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      margin: EdgeInsets.only(bottom: 16.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              iconPath: ImageConstant.imgVectorWhiteA700,
              variant: CustomButtonVariant.withdrawal,
              height: 36.h,
              onTap: () => controller.onWithdrawalTap(),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              backgroundColor: appTheme.colorFF76CD,
              height: 36.h,
              onTap: () => controller.onDepositTap(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img130x345,
            width: 345.h,
            height: 130.h,
            fit: BoxFit.cover,
            margin: EdgeInsets.only(bottom: 16.h),
          ),
          _buildGamesGrid(),
        ],
      ),
    );
  }

  Widget _buildGamesGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 16.h,
            crossAxisSpacing: 16.h,
            childAspectRatio: 0.8,
          ),
          itemCount: controller.gamesList.length,
          itemBuilder: (context, index) => GameCardItemWidget(
            gameModel: controller.gamesList[index],
            onTap: () => controller.onGameCardTap(controller.gamesList[index]),
          ),
        ));
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
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
                  top: 1.h,
                  left: 1.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgIntersect,
                    width: 280.h,
                    height: 42.h,
                  ),
                ),
                Center(
                  child: Obx(() => Text(
                        controller.jackpotAmount.value,
                        style: TextStyleHelper.instance.headline24Black,
                      )),
                ),
              ],
            ),
          ),
          Positioned(
            top: -14.h,
            left: -15.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1084,
              width: 72.h,
              height: 108.h,
            ),
          ),
          Positioned(
            bottom: -28.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img155x70,
                  width: 70.h,
                  height: 55.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.img119x31,
                  width: 31.h,
                  height: 19.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgJackpot1,
                  width: 86.h,
                  height: 22.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.img219x31,
                  width: 31.h,
                  height: 19.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
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
            onTap: () => controller.onCloseNotification(),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebarMenu() {
    return Positioned(
      left: 0,
      top: 418.h,
      child: Column(
        children: [
          SidebarMenuItemWidget(
            iconPath: ImageConstant.imgVectorDeepOrangeA400,
            title: "Hot",
            isActive: true,
            onTap: () => controller.onSidebarMenuTap("hot"),
          ),
          SidebarMenuItemWidget(
            iconPath: ImageConstant.img11,
            title: "Collect",
            isActive: false,
            onTap: () => controller.onSidebarMenuTap("collect"),
          ),
          SidebarMenuItemWidget(
            iconPath: ImageConstant.img10733643587,
            title: "Slot",
            isActive: false,
            onTap: () => controller.onSidebarMenuTap("slot"),
          ),
          SidebarMenuItemWidget(
            iconPath: ImageConstant.img136x36,
            title: "Live",
            isActive: false,
            onTap: () => controller.onSidebarMenuTap("live"),
          ),
          SidebarMenuItemWidget(
            iconPath: ImageConstant.img5,
            title: "Bingo",
            isActive: false,
            onTap: () => controller.onSidebarMenuTap("bingo"),
          ),
          SidebarMenuItemWidget(
            iconPath: ImageConstant.img2,
            title: "Table",
            isActive: false,
            onTap: () => controller.onSidebarMenuTap("table"),
          ),
          SidebarMenuItemWidget(
            iconPath: ImageConstant.img7,
            title: "Fish",
            isActive: false,
            onTap: () => controller.onSidebarMenuTap("fish"),
          ),
        ],
      ),
    );
  }

  Widget _buildVipSection() {
    return Positioned(
      right: 8.h,
      top: 533.h,
      child: VipSectionWidget(
        onVipTap: () => controller.onVipTap(),
      ),
    );
  }

  Widget _buildMoneyRainModal() {
    return Container(
      color: appTheme.blackCustom.withAlpha(128),
      child: Center(
        child: Container(
          width: 345.h,
          height: 355.h,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)],
            ),
            borderRadius: BorderRadius.circular(12.h),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 5.h,
                right: 5.h,
                child: CustomButton(
                  variant: CustomButtonVariant.close,
                  iconPath: ImageConstant.imgGroup848,
                  width: 28.h,
                  height: 28.h,
                  onTap: () => controller.closeMoneyRainModal(),
                ),
              ),
              Positioned(
                top: 192.h,
                left: 98.h,
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img2858,
                      width: 180.h,
                      height: 47.h,
                    ),
                    Positioned(
                      top: 9.h,
                      left: 28.h,
                      child: Text(
                        "Money Rain",
                        style: TextStyleHelper.instance.title22Bold,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 49.h,
                left: 15.h,
                child: Container(
                  width: 315.h,
                  height: 133.h,
                  padding: EdgeInsets.all(16.h),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Color(0xFFFFF0D6), Color(0xFFFFC48B)],
                    ),
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "·",
                            style: TextStyleHelper.instance.headline24Bold,
                          ),
                          SizedBox(width: 12.h),
                          Expanded(
                            child: Text(
                              "Recharge users can get it for free\nMaximum cash drop value ₱7,777",
                              style: TextStyleHelper.instance.title20Bold
                                  .copyWith(height: 1.1),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        children: [
                          Text(
                            "·",
                            style: TextStyleHelper.instance.headline24Bold,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 208.h,
                left: 85.h,
                child: CustomButton(
                  text: 'Turn To Luck',
                  variant: CustomButtonVariant.gradient,
                  width: 176.h,
                  height: 44.h,
                  onTap: () => controller.onTurnToLuckTap(),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.img861719112,
                  width: 345.h,
                  height: 92.h,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 190.h,
                left: 15.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup12503,
                  width: 323.h,
                  height: 157.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
