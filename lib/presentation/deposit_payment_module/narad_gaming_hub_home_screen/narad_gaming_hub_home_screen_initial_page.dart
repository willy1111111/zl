import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_action_button.dart';
import '../../widgets/custom_game_card.dart';
import '../../widgets/custom_image_view.dart';
import './controller/narad_gaming_hub_home_controller.dart';
import './widgets/floating_reward_widget.dart';
import './widgets/side_navigation_item_widget.dart';

// Modified: Fixed import path

class NaradGamingHubHomeScreenInitialPage extends StatelessWidget {
  NaradGamingHubHomeScreenInitialPage({Key? key}) : super(key: key);

  NaradGamingHubHomeController controller = Get.put(
      NaradGamingHubHomeController()); // Modified: Now properly references the controller class

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            _buildTopPromotionalBanner(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    _buildBalanceSection(),
                    _buildActionButtons(),
                    _buildMainBanner(),
                    _buildNotificationBanner(),
                    _buildJackpotSection(),
                    _buildGamesAndNavigationSection(),
                    SizedBox(height: 200.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTopPromotionalBanner() {
    return Container(
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
            height: 68.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          CustomImageView(
            imagePath: ImageConstant
                .img877aca258c7f46125517c51d04ff60a7cc3e52a520d8fnrnxzi1,
            height: 68.h,
            width: 279.h,
            fit: BoxFit.cover,
          ),
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
          Positioned(
            top: 10.h,
            left: 68.h,
            child: Text(
              'Many benefits for newcomers',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            top: 41.h,
            left: 68.h,
            child: Row(
              children: List.generate(
                5,
                (index) => Container(
                  margin: EdgeInsets.only(right: 2.h),
                  height: 15.h,
                  width: 15.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFFFFF4,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 18.h,
            right: 30.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
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
          Positioned(
            top: 0,
            right: 9.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgVectorLightGreen400,
              height: 26.h,
              width: 26.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Padding(
      padding: EdgeInsets.all(16.h),
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
              SizedBox(width: 8.h),
              Obx(() => Text(
                    '₱${controller.balance.value}',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  )),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.img1LightGreenA700,
                height: 16.h,
                width: 14.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [
          Expanded(
            child: CustomActionButton(
              text: 'Withdrawal',
              backgroundColor: appTheme.colorFFFFC6,
              onPressed: () => controller.onWithdrawalPressed(),
              height: 36.h,
            ),
          ),
          SizedBox(width: 4.h),
          Expanded(
            child: CustomActionButton(
              text: 'Deposit',
              backgroundColor: appTheme.colorFF76CD,
              iconPath: ImageConstant.imgVectorWhiteA700,
              onPressed: () => controller.onDepositPressed(),
              height: 36.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainBanner() {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: CustomImageView(
        imagePath: ImageConstant.img,
        height: 130.h,
        width: double.maxFinite,
        radius: BorderRadius.circular(8.h),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
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
              style: TextStyleHelper.instance.body14Bold
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
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.all(1.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF072700),
                  appTheme.colorFF1546,
                  Color(0xFF082701)
                ],
              ),
              border: Border.all(color: appTheme.colorFF786A),
              borderRadius: BorderRadius.circular(4.h),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgIntersect42x280,
              height: 42.h,
              width: double.maxFinite,
              radius: BorderRadius.circular(2.h),
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img155x70,
                      height: 55.h,
                      width: 70.h,
                      radius: BorderRadius.circular(2.h),
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.img119x31,
                      height: 19.h,
                      width: 31.h,
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgJackpot1,
                  height: 22.h,
                  width: 86.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.img219x31,
                  height: 19.h,
                  width: 31.h,
                ),
              ],
            ),
          ),
          Positioned.fill(
            child: Center(
              child: ShaderMask(
                shaderCallback: (bounds) => LinearGradient(
                  colors: [
                    Color(0xFFFFF819),
                    appTheme.colorFFFFFE,
                    Color(0xFFFEF500)
                  ],
                ).createShader(bounds),
                child: Text(
                  '14,091,688.88',
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(letterSpacing: 2.h),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGamesAndNavigationSection() {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 77.h, top: 68.h),
          child: _buildGamesGrid(),
        ),
        _buildSideNavigation(),
        _buildCollectSection(),
        _buildFloatingRewards(),
        _buildFloatingCharacter(),
      ],
    );
  }

  Widget _buildSideNavigation() {
    return Positioned(
      left: 0,
      top: 68.h,
      child: Obx(() => Column(
            children: controller.navigationItems.asMap().entries.map((entry) {
              int index = entry.key;
              var item = entry.value;
              return SideNavigationItemWidget(
                navigationItem: item,
                isSelected: controller.selectedNavigationIndex.value == index,
                onTap: () => controller.onNavigationItemTapped(index),
              );
            }).toList(),
          )),
    );
  }

  Widget _buildCollectSection() {
    return Positioned(
      left: 0,
      top: 0,
      child: Container(
        width: 66.h,
        height: 108.h,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup1084,
              height: 108.h,
              width: 72.h,
            ),
            Positioned.fill(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img11,
                    height: 36.h,
                    width: 36.h,
                  ),
                  SizedBox(height: 4.h),
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
      ),
    );
  }

  Widget _buildGamesGrid() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4.h,
              mainAxisSpacing: 4.h,
              childAspectRatio: 0.8,
            ),
            itemCount: controller.gameCards.length,
            itemBuilder: (context, index) {
              return CustomGameCard(
                gameImagePath:
                    controller.gameCards[index].gameImagePath?.value ?? '',
                overlayIconPath:
                    controller.gameCards[index].overlayIconPath?.value ?? '',
                gameTitle: controller.gameCards[index].gameTitle?.value ?? '',
                onTap: () => controller.onGameCardTapped(index),
              );
            },
          )),
    );
  }

  Widget _buildFloatingRewards() {
    return Column(
      children: [
        Positioned(
          top: 141.h,
          left: 116.h,
          child: FloatingRewardWidget(
            badgeCount: 6,
            timeText: '20Day 23:12',
            onReceiveTapped: () => controller.onRewardReceived(0),
          ),
        ),
        Positioned(
          top: 334.h,
          left: 116.h,
          child: FloatingRewardWidget(
            badgeCount: 2,
            timeText: '',
            onReceiveTapped: () => controller.onRewardReceived(1),
          ),
        ),
      ],
    );
  }

  Widget _buildFloatingCharacter() {
    return Positioned(
      top: 212.h,
      right: 0,
      child: CustomImageView(
        imagePath: ImageConstant.img410,
        height: 150.h,
        width: 130.h,
      ),
    );
  }
}
