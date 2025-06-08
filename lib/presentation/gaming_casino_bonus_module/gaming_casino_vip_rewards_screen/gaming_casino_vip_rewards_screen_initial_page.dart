import 'dart:math';

import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_rich_text.dart';
import '../../widgets/custom_vip_floating_menu.dart';
import './controller/gaming_casino_vip_rewards_controller.dart';
import './widgets/game_card_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';
import './widgets/vip_rewards_dialog_widget.dart';

// Modified: Added import for cos and sin functions

// Modified: Fixed import path

class GamingCasinoVipRewardsScreenInitialPage extends StatelessWidget {
  GamingCasinoVipRewardsScreenInitialPage({Key? key}) : super(key: key);

  GamingCasinoVipRewardsController controller =
      Get.put(GamingCasinoVipRewardsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _buildPromoBanner(),
                _buildBalanceSection(),
                _buildPromotionalBanner(),
                _buildRechargeNotification(),
                _buildJackpotSection(),
                _buildMainContent(),
                SizedBox(height: 100.h),
              ],
            ),
          ),
          _buildSideNavigation(),
          _buildVipFloatingMenu(),
          Obx(() => controller.showVipDialog.value
              ? _buildVipRewardsDialog()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildPromoBanner() {
    return Container(
      height: 68.h,
      width: double.maxFinite,
      child: Stack(
        children: [
          Container(
            height: 68.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
          ),
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
            left: 68.h,
            top: 41.h,
            child: Row(
              children: List.generate(
                5,
                (index) => Container(
                  width: 15.h,
                  height: 15.h,
                  margin: EdgeInsets.only(right: 17.h),
                  child: CustomPaint(
                    painter: StarPainter(),
                  ),
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
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            right: 30.h,
            top: 18.h,
            child: CustomButton(
              text: 'Download',
              buttonVariant: CustomButtonVariant.text,
              backgroundColor: appTheme.whiteCustom,
              textStyle: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF478A),
              borderRadius: 16.h,
              width: 80.h,
              height: 32.h,
              onPressed: () => controller.downloadApp(),
            ),
          ),
          Positioned(
            right: 7.h,
            top: 4.h,
            child: GestureDetector(
              onTap: () => controller.closeBanner(),
              child: Container(
                width: 26.h,
                height: 26.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVectorLightGreen400,
                  height: 26.h,
                  width: 26.h,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBalanceSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      child: Column(
        children: [
          Row(
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
                  SizedBox(width: 10.h),
                  Obx(() => Text(
                        controller.balance.value,
                        style: TextStyleHelper.instance.title16Bold
                            .copyWith(color: appTheme.colorFFFFB9),
                      )),
                  SizedBox(width: 10.h),
                  GestureDetector(
                    onTap: () => controller.refreshBalance(),
                    child: CustomImageView(
                      imagePath: ImageConstant.img1LightGreenA700,
                      height: 14.h,
                      width: 16.h,
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
                child: CustomButton(
                  text: 'Withdrawal',
                  iconPath: ImageConstant.imgVectorWhiteA700,
                  buttonVariant: CustomButtonVariant.textWithIcon,
                  gradientType: CustomButtonGradient.orange,
                  height: 36.h,
                  borderRadius: 2.h,
                  onPressed: () => controller.navigateToWithdrawal(),
                ),
              ),
              SizedBox(width: 5.h),
              Expanded(
                child: CustomButton(
                  text: 'Deposit',
                  iconPath: ImageConstant.imgVectorWhiteA70011x16,
                  buttonVariant: CustomButtonVariant.textWithIcon,
                  gradientType: CustomButtonGradient.exchange,
                  height: 36.h,
                  borderRadius: 2.h,
                  onPressed: () => controller.navigateToDeposit(),
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
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.h),
      child: CustomImageView(
        imagePath: ImageConstant.img130x345,
        height: 130.h,
        width: double.maxFinite,
        radius: BorderRadius.circular(8.h),
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildRechargeNotification() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 17.h),
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      height: 34.h,
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
            child: CustomRichText(
              textSegments: [
                CustomTextSegment(text: '🔥', fontSize: 14.fSize),
                CustomTextSegment(
                  text: 'The recharge of th',
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  color: appTheme.colorFF85D4,
                ),
                CustomTextSegment(
                    text: 'e🔥',
                    fontSize: 14.fSize,
                    color: appTheme.colorFF85D4),
              ],
            ),
          ),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
          SizedBox(width: 19.h),
          GestureDetector(
            onTap: () => controller.closeNotification(),
            child: CustomImageView(
              imagePath: ImageConstant.img1Red900,
              height: 16.h,
              width: 16.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
      child: Stack(
        children: [
          Container(
            height: 44.h,
            width: 282.h,
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
              borderRadius: BorderRadius.circular(4.h),
              border: Border.all(color: appTheme.colorFF786A),
            ),
          ),
          Positioned(
            top: 1.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgIntersect42x280,
              height: 42.h,
              width: 280.h,
              radius: BorderRadius.circular(3.h),
            ),
          ),
          Positioned(
            top: -12.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.img155x70,
              height: 55.h,
              width: 70.h,
              radius: BorderRadius.circular(3.h),
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
                    .copyWith(color: appTheme.whiteCustom, letterSpacing: 2.h),
              ),
            ),
          ),
          Positioned(
            top: -14.h,
            left: -15.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup1084,
              height: 108.h,
              width: 72.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.only(left: 77.h, right: 16.h),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 9.h,
          mainAxisSpacing: 9.h,
          childAspectRatio: 0.8,
        ),
        itemCount: controller.gameList.length,
        itemBuilder: (context, index) {
          return GameCardWidget(
            gameModel: controller.gameList[index],
            onTap: () => controller.playGame(index),
          );
        },
      ),
    );
  }

  Widget _buildSideNavigation() {
    return Positioned(
      left: 0,
      top: 418.h,
      child: Column(
        children: List.generate(
          controller.sideMenuItems.length,
          (index) => SidebarMenuItemWidget(
            menuItem: controller.sideMenuItems[index],
            isSelected: index == 0,
            onTap: () => controller.selectSideMenuItem(index),
          ),
        ),
      ),
    );
  }

  Widget _buildVipFloatingMenu() {
    return CustomVipFloatingMenu(
      selectedIndex: 4,
      onItemTap: (index) => controller.selectVipLevel(index),
      right: 8.h,
      top: 533.h,
    );
  }

  Widget _buildVipRewardsDialog() {
    return VipRewardsDialogWidget(
      onClose: () => controller.closeVipDialog(),
      onReceived: () => controller.receiveReward(),
    );
  }
}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Color(0xFFFFF400)
      ..style = PaintingStyle.fill;

    Path path = Path();
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double outerRadius = size.width / 2;
    double innerRadius = outerRadius * 0.4;

    for (int i = 0; i < 10; i++) {
      double angle = (i * 36 - 90) * 3.14159 / 180;
      double radius = i % 2 == 0 ? outerRadius : innerRadius;
      double x = centerX +
          radius * cos(angle); // Modified: Added dart:math import to use cos
      double y = centerY +
          radius * sin(angle); // Modified: Added dart:math import to use sin

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
