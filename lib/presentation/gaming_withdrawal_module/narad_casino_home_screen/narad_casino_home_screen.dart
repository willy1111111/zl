import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_nav_bar.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/narad_casino_home_controller.dart';
import './widgets/category_item_widget.dart';
import './widgets/game_item_widget.dart';
import './widgets/overlay_game_card_widget.dart';

class NaradCasinoHomeScreen extends GetWidget<NaradCasinoHomeController> {
  const NaradCasinoHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildAppBar(),
              _buildLogoAndBalance(),
              _buildActionButtons(),
              _buildMainBanner(),
              _buildNotificationBanner(),
              _buildJackpotSection(),
              _buildCollectSection(),
              _buildContentWithSidebar(),
              _buildOverlayComponents(),
              SizedBox(height: 100.h),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildAppBar() {
    return CustomAppBar(
      appBarType: CustomAppBarType.promotional,
      height: 68.h,
      backgroundImage:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi2,
      overlayImage:
          ImageConstant.img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
      appIcon: ImageConstant.img112,
      title: 'Many benefits for newcomers',
      showStars: true,
      starCount: 5,
      showDownloadButton: true,
      downloadButtonText: 'Download',
      showCloseButton: true,
      onDownloadTap: () => controller.onDownloadTap(),
      onCloseTap: () => controller.onCloseTap(),
    );
  }

  Widget _buildLogoAndBalance() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.h),
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            height: 28.h,
            width: 78.h,
          ),
          SizedBox(height: 4.h),
          CustomCurrencyDisplay(
            price: controller.balanceAmount.value ?? '₱1980.00',
            onRefresh: () => controller.onRefreshBalance(),
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
            child: CustomGradientButton(
              text: 'Withdrawal',
              onPressed: () => controller.onWithdrawalTap(),
              height: 33.h,
              gradientColors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
              textStyle: TextStyleHelper.instance.body14Bold2,
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: Container(
              height: 35.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(2.h),
              ),
              child: ElevatedButton(
                onPressed: () => controller.onDepositTap(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: appTheme.transparentCustom,
                  shadowColor: appTheme.transparentCustom,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.h),
                  ),
                ),
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
    );
  }

  Widget _buildMainBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Container(
        margin: EdgeInsets.only(top: 8.h),
        child: CustomImageView(
          imagePath: ImageConstant.img,
          height: 130.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h, vertical: 7.h),
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
              '🔥The recharge of th🔥',
              style: TextStyleHelper.instance.body14Bold2
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red900,
            height: 16.h,
            width: 16.h,
          ),
          SizedBox(width: 21.h),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14Bold2
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 76.h, vertical: 16.h),
      child: Stack(
        children: [
          Container(
            height: 42.h,
            width: 280.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF072700),
                  appTheme.colorFF1546,
                  Color(0xFF082701)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              border: Border.all(color: appTheme.colorFF786A),
              borderRadius: BorderRadius.circular(3.h),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgIntersect,
              height: 42.h,
              width: 280.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: -12.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.img155x70,
              height: 55.h,
              width: 70.h,
            ),
          ),
          Positioned(
            top: -12.h,
            left: 82.h,
            child: CustomImageView(
              imagePath: ImageConstant.img119x31,
              height: 19.h,
              width: 31.h,
            ),
          ),
          Positioned(
            top: -12.h,
            right: 17.h,
            child: CustomImageView(
              imagePath: ImageConstant.img219x31,
              height: 19.h,
              width: 31.h,
            ),
          ),
          Positioned(
            top: -14.h,
            left: 108.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot1,
              height: 22.h,
              width: 86.h,
            ),
          ),
          Positioned(
            top: 7.h,
            left: 69.h,
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [
                  Color(0xFFFFF819),
                  appTheme.colorFFFFFE,
                  Color(0xFFFEF500)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds),
              child: Text(
                '14,091,688.88',
                style: TextStyleHelper.instance.headline24Black
                    .copyWith(letterSpacing: 2.h),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCollectSection() {
    return Positioned(
      top: 350.h,
      left: 0,
      child: GestureDetector(
        onTap: () => controller.onCollectTap(),
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
              bottom: 4.h,
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
    );
  }

  Widget _buildContentWithSidebar() {
    return Container(
      margin: EdgeInsets.only(top: 68.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSidebar(),
          _buildGamesGrid(),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    return Container(
      width: 66.h,
      child: Obx(
        () => Column(
          children: List.generate(
            controller.categories.length,
            (index) => CategoryItemWidget(
              categoryModel: controller.categories[index],
              isSelected: controller.selectedCategoryIndex.value == index,
              onTap: () => controller.onCategoryTap(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGamesGrid() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 11.h),
        child: Obx(
          () => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9.h,
              mainAxisSpacing: 9.h,
              childAspectRatio: 0.8,
            ),
            itemCount: controller.games.length,
            itemBuilder: (context, index) {
              return GameItemWidget(
                gameModel: controller.games[index],
                onTap: () => controller.onGameTap(index),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildOverlayComponents() {
    return Stack(
      children: [
        Positioned(
          top: 432.h,
          left: 131.h,
          child: OverlayGameCardWidget(
            gameModel: controller.signInBonusGame.value!,
            showBadge: true,
            showTimer: true,
            badgeCount: 6,
            timerText: '20Day 23:12',
            buttonText: 'Receive',
            onTap: () => controller.onSignInBonusTap(),
          ),
        ),
        Positioned(
          top: 406.h,
          left: 252.h,
          child: OverlayGameCardWidget(
            gameModel: controller.moneyRainGame.value!,
            showBadge: false,
            showTimer: false,
            buttonText: 'In Progress',
            onTap: () => controller.onMoneyRainTap(),
          ),
        ),
        Positioned(
          top: 528.h,
          left: 47.h,
          child: OverlayGameCardWidget(
            gameModel: controller.giftCodeGame.value!,
            showBadge: false,
            showTimer: false,
            buttonText: 'Details',
            onTap: () => controller.onGiftCodeTap(),
          ),
        ),
        Positioned(
          top: 647.h,
          left: 47.h,
          child: OverlayGameCardWidget(
            gameModel: controller.noticeGame.value!,
            showBadge: false,
            showTimer: false,
            buttonText: 'Details',
            onTap: () => controller.onNoticeTap(),
          ),
        ),
        Positioned(
          top: 741.h,
          left: 131.h,
          child: OverlayGameCardWidget(
            gameModel: controller.vipClubGame.value!,
            showBadge: true,
            showTimer: false,
            badgeCount: 2,
            buttonText: 'Receive',
            onTap: () => controller.onVipClubTap(),
          ),
        ),
        Positioned(
          top: 768.h,
          left: 252.h,
          child: OverlayGameCardWidget(
            gameModel: controller.noticeDetailsGame.value!,
            showBadge: false,
            showTimer: false,
            buttonText: 'Details',
            onTap: () => controller.onNoticeDetailsTap(),
          ),
        ),
        Positioned(
          top: 562.h,
          left: 245.h,
          child: CustomImageView(
            imagePath: ImageConstant.img410,
            height: 150.h,
            width: 130.h,
          ),
        ),
        Positioned(
          bottom: 84.h,
          left: 161.h,
          child: GestureDetector(
            onTap: () => controller.onInviteTap(),
            child: CustomImageView(
              imagePath: ImageConstant.imgInvite1,
              height: 54.h,
              width: 54.h,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBottomNavigation() {
    return CustomBottomNavBar(
      items: [
        CustomBottomNavItem(
          title: 'Home',
          routeName: AppRoutes.naradCasinoHomeScreen,
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
      onChanged: (index) => controller.onBottomNavChanged(index),
    );
  }
}
