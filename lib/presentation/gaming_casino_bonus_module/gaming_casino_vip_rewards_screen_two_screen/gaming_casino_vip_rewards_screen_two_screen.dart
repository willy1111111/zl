import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_rich_text.dart';
import '../../widgets/custom_vip_floating_menu.dart';
import './controller/gaming_casino_vip_rewards_screen_two_controller.dart';
import './widgets/category_item_widget.dart';
import './widgets/game_item_widget.dart';

class GamingCasinoVipRewardsScreenTwo
    extends GetWidget<GamingCasinoVipRewardsScreenTwoController> {
  const GamingCasinoVipRewardsScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Container(
              width: double.maxFinite,
              height: double.maxFinite,
              color: appTheme.colorFF1E20,
            ),
            _buildMainContent(),
            _buildSideNavigation(),
            _buildVipPanel(),
            _buildCollectButton(),
            Obx(() => controller.showVipModal.value
                ? _buildVipRewardsModal()
                : SizedBox.shrink()),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildMainContent() {
    return Column(
      children: [
        _buildTopPromotionalBanner(),
        _buildBalanceAndActionsSection(),
        Expanded(
          child: SingleChildScrollView(
            padding:
                EdgeInsets.symmetric(horizontal: 15.h).copyWith(bottom: 84.h),
            child: Column(
              children: [
                _buildPromotionalBanner(),
                _buildNotificationBanner(),
                _buildJackpotSection(),
                SizedBox(height: 4.h),
                _buildGamesGrid(),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTopPromotionalBanner() {
    return Container(
      width: double.maxFinite,
      height: 68.h,
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
            width: double.maxFinite,
            height: 68.h,
            fit: BoxFit.cover,
          ),
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
            width: 279.h,
            height: 68.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 12.h,
            top: 9.h,
            child: CustomImageView(
              imagePath: ImageConstant.img112,
              width: 50.h,
              height: 50.h,
              radius: BorderRadius.circular(8.h),
            ),
          ),
          Positioned(
            left: 68.h,
            top: 41.h,
            child: Row(
              children: List.generate(
                5,
                (index) => Container(
                  width: 15.h,
                  height: 15.h,
                  margin: EdgeInsets.only(right: 17.h),
                  decoration: BoxDecoration(
                    color: appTheme.colorFFFFF4,
                  ),
                  transform: Matrix4.rotationZ(0.785398),
                ),
              ),
            ),
          ),
          Positioned(
            left: 68.h,
            top: 10.h,
            child: Text(
              'Many benefits for newcomers',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom, height: 1.17),
            ),
          ),
          Positioned(
            right: 30.h,
            top: 18.h,
            child: GestureDetector(
              onTap: () => controller.onDownloadTap(),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.h),
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  borderRadius: BorderRadius.circular(16.h),
                ),
                child: Text(
                  'Download',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF478A, height: 1.43),
                ),
              ),
            ),
          ),
          Positioned(
            right: 7.h,
            top: 4.h,
            child: Container(
              width: 14.h,
              height: 14.h,
              color: appTheme.colorFF478A,
            ),
          ),
          Positioned(
            right: 0.h,
            top: 0.h,
            child: GestureDetector(
              onTap: () => controller.onCloseBannerTap(),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreen400,
                width: 26.h,
                height: 26.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceAndActionsSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h).copyWith(top: 8.h),
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
                  SizedBox(width: 11.h),
                  Obx(() => Text(
                        controller.balanceAmount.value ?? 'R\$1980.00',
                        style: TextStyleHelper.instance.title16Bold.copyWith(
                            color: appTheme.colorFFFFB9, height: 1.19),
                      )),
                  SizedBox(width: 11.h),
                  GestureDetector(
                    onTap: () => controller.onRefreshBalanceTap(),
                    child: CustomImageView(
                      imagePath: ImageConstant.img1LightGreenA700,
                      width: 16.h,
                      height: 14.h,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Row(
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
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgVectorWhiteA700,
                          width: 16.h,
                          height: 11.h,
                        ),
                        SizedBox(width: 11.h),
                        Text(
                          'Withdrawal',
                          style: TextStyleHelper.instance.body14Bold.copyWith(
                              color: appTheme.whiteCustom, height: 1.21),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 5.h),
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
                          width: 16.h,
                          height: 11.h,
                        ),
                        SizedBox(width: 11.h),
                        Text(
                          'Deposit',
                          style: TextStyleHelper.instance.body14Bold.copyWith(
                              color: appTheme.whiteCustom, height: 1.21),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionalBanner() {
    return Container(
      margin: EdgeInsets.only(top: 8.h),
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
        width: double.maxFinite,
        height: 130.h,
        radius: BorderRadius.circular(8.h),
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.only(top: 4.h),
      padding: EdgeInsets.all(7.h),
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
            child: CustomRichText(
              textSegments: [
                CustomTextSegment(
                  text: '🔥The recharge of th',
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  color: appTheme.colorFF85D4,
                ),
                CustomTextSegment(
                  text: 'e🔥',
                  fontSize: 14.fSize,
                  color: appTheme.colorFF85D4,
                ),
              ],
            ),
          ),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4, height: 1.21),
          ),
          SizedBox(width: 17.h),
          GestureDetector(
            onTap: () => controller.onCloseNotificationTap(),
            child: CustomImageView(
              imagePath: ImageConstant.img1Red900,
              width: 16.h,
              height: 16.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.only(top: 4.h),
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
                    width: 280.h,
                    height: 42.h,
                    radius: BorderRadius.circular(3.h),
                  ),
                ),
                Positioned(
                  left: 1.h,
                  top: -12.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img155x70,
                    width: 70.h,
                    height: 55.h,
                    radius: BorderRadius.circular(3.h),
                  ),
                ),
                Positioned(
                  left: 107.h,
                  top: -2.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgJackpot1,
                    width: 86.h,
                    height: 22.h,
                  ),
                ),
                Positioned(
                  left: 68.h,
                  top: 7.h,
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
                      '14,091,688.88',
                      style: TextStyleHelper.instance.headline24Black.copyWith(
                          color: appTheme.whiteCustom,
                          letterSpacing: 2.h,
                          height: 1.42),
                    ),
                  ),
                ),
                Positioned(
                  left: 81.h,
                  top: 0.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img119x31,
                    width: 31.h,
                    height: 19.h,
                  ),
                ),
                Positioned(
                  right: 10.h,
                  top: 0.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img219x31,
                    width: 31.h,
                    height: 19.h,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: -77.h,
            top: -2.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1084,
              width: 72.h,
              height: 108.h,
            ),
          ),
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
            crossAxisSpacing: 9.h,
            mainAxisSpacing: 9.h,
            childAspectRatio: 0.7,
          ),
          itemCount: controller.gameItems.length,
          itemBuilder: (context, index) {
            return GameItemWidget(
              gameItem: controller.gameItems[index],
              onTap: () => controller.onGameTap(controller.gameItems[index]),
            );
          },
        ));
  }

  Widget _buildSideNavigation() {
    return Positioned(
      left: 0.h,
      top: 68.h,
      child: Obx(() => Column(
            children: List.generate(
              controller.categoryItems.length,
              (index) => CategoryItemWidget(
                categoryItem: controller.categoryItems[index],
                isSelected: controller.selectedCategoryIndex.value == index,
                onTap: () => controller.onCategoryTap(index),
              ),
            ),
          )),
    );
  }

  Widget _buildVipPanel() {
    return CustomVipFloatingMenu(
      selectedIndex: 4,
      onItemTap: (index) => controller.onVipItemTap(index),
    );
  }

  Widget _buildCollectButton() {
    return Positioned(
      left: 13.h,
      top: 350.h,
      child: GestureDetector(
        onTap: () => controller.onCollectTap(),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img11,
              width: 36.h,
              height: 36.h,
            ),
            SizedBox(height: 1.h),
            Text(
              'Collect',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.colorFF8089, height: 1.17),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return CustomBottomBar(
      bottomBarItemList: [
        CustomBottomBarItem(
          icon: ImageConstant.imgVectorLightGreenA700,
          title: 'Home',
          routeName: AppRoutes.gamingCasinoVipRewardsScreen,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x20,
          title: 'Promotion',
          routeName: AppRoutes.bonusCenterScreen,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.imgInvite154x54,
          title: 'Invite',
          routeName: AppRoutes.experienceBonusGameScreen,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x19,
          title: 'Deposit',
          routeName: AppRoutes.gCashDepositRecordScreen,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray400,
          title: 'Teams',
          routeName: AppRoutes.achievementBonusReceivedScreen,
        ),
      ],
      selectedIndex: 0,
      hasFloatingButton: true,
      floatingButtonImage: ImageConstant.imgInvite154x54,
      onChanged: (index) => controller.onBottomNavTap(index),
    );
  }

  Widget _buildVipRewardsModal() {
    return Container(
      color: appTheme.color800000,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img0867344945x375,
            width: double.maxFinite,
            height: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 227.h,
            right: 15.h,
            child: GestureDetector(
              onTap: () => controller.onCloseModalTap(),
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup848,
                width: 32.h,
                height: 32.h,
              ),
            ),
          ),
          Positioned(
            top: 327.h,
            left: 68.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo2,
              width: 232.h,
              height: 228.h,
            ),
          ),
          Positioned(
            top: 280.h,
            left: 15.h,
            child: Container(
              width: 345.h,
              height: 47.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF0C5D,
                borderRadius: BorderRadius.only(topRight: Radius.circular(8.h)),
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
                  Positioned(
                    top: -13.h,
                    left: 61.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgRectangle623,
                      width: 284.h,
                      height: 60.h,
                    ),
                  ),
                  Positioned(
                    top: -18.h,
                    left: 15.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgV10,
                      width: 65.h,
                      height: 65.h,
                    ),
                  ),
                  Positioned(
                    top: -4.h,
                    left: 103.h,
                    child: Text(
                      'VlP exclusive rewards !',
                      style: TextStyleHelper.instance.title16Bold
                          .copyWith(height: 1.19),
                    ),
                  ),
                  Positioned(
                    top: 22.h,
                    left: 103.h,
                    child: Text(
                      'Valid within seven days.',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF85D4, height: 1.17),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 371.h,
            left: 125.h,
            child: Stack(
              children: [
                Positioned(
                  top: 0.h,
                  left: 18.h,
                  child: CustomImageView(
                    imagePath: ImageConstant
                        .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is97x100,
                    width: 100.h,
                    height: 97.h,
                  ),
                ),
                Positioned(
                  top: 13.h,
                  left: 0.h,
                  child: CustomImageView(
                    imagePath: ImageConstant
                        .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is97x100,
                    width: 100.h,
                    height: 97.h,
                  ),
                ),
                Positioned(
                  top: 95.h,
                  left: 17.h,
                  child: Container(
                    width: 90.h,
                    height: 28.h,
                    decoration: BoxDecoration(
                      color: appTheme.blackCustom,
                      borderRadius: BorderRadius.circular(14.h),
                    ),
                    child: Center(
                      child: Obx(() => Text(
                            controller.rewardAmount.value ?? '₱453',
                            style: TextStyleHelper.instance.headline24Bold
                                .copyWith(height: 1.17),
                          )),
                    ),
                  ),
                ),
                Positioned(
                  top: 42.h,
                  left: -83.h,
                  child: GestureDetector(
                    onTap: () => controller.onPreviousRewardTap(),
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
                          width: 13.h,
                          height: 24.h,
                          radius: BorderRadius.circular(1.h),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 42.h,
                  right: -72.h,
                  child: GestureDetector(
                    onTap: () => controller.onNextRewardTap(),
                    child: Container(
                      width: 29.h,
                      height: 70.h,
                      decoration: BoxDecoration(
                        color: appTheme.blackCustom,
                        borderRadius: BorderRadius.circular(4.h),
                      ),
                      child: Center(
                        child: Transform.scale(
                          scaleX: -1,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgVectorWhiteA70024x13,
                            width: 13.h,
                            height: 24.h,
                            radius: BorderRadius.circular(1.h),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 514.h,
            left: 118.h,
            child: GestureDetector(
              onTap: () => controller.onReceivedTap(),
              child: Container(
                width: 140.h,
                height: 36.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF8094,
                  border: Border.all(color: appTheme.colorFF9FB8),
                  borderRadius: BorderRadius.circular(6.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.blackCustom,
                      offset: Offset(0, 1.h),
                      blurRadius: 2.h,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup12686,
                      width: 16.h,
                      height: 16.h,
                    ),
                    SizedBox(width: 4.h),
                    ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [appTheme.whiteCustom, Color(0xFFEBFDEE)],
                      ).createShader(bounds),
                      child: Text(
                        'Received',
                        style: TextStyleHelper.instance.title16Bold
                            .copyWith(height: 1.19),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 561.h,
            left: 84.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup1264,
                  width: 11.h,
                  height: 13.h,
                ),
                SizedBox(width: 2.h),
                Obx(() => Text(
                      controller.timeLeft.value ??
                          'Time left to collect:6day 23:59:59',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF4B55, height: 1.17),
                    )),
              ],
            ),
          ),
          Positioned(
            top: 184.h,
            left: 91.h,
            child: Container(
              width: 193.h,
              height: 48.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF242A,
                borderRadius: BorderRadius.circular(8.h),
              ),
              child: Center(
                child: Text(
                  'Event has expired',
                  style: TextStyleHelper.instance.title18Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.17),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
