import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_rich_text.dart';
import '../../widgets/custom_vip_floating_menu.dart';
import './controller/j_bet88_gaming_hub_screen_three_controller.dart';
import './widgets/game_item_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class JBet88GamingHubScreenThree
    extends GetWidget<JBet88GamingHubScreenThreeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDownloadBanner(),
                  _buildLogoBalanceSection(),
                  _buildActionButtons(),
                  _buildMainContent(),
                ],
              ),
            ),
            Obx(() => controller.showVipRewardsDialog.value
                ? _buildVipRewardsDialog()
                : SizedBox.shrink()),
            _buildVipFloatingMenu(),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildDownloadBanner() {
    return Container(
      height: 68.h,
      width: double.infinity,
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
            width: double.infinity,
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
            ),
          ),
          _buildStarsRow(),
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
            child: GestureDetector(
              onTap: () => controller.onDownloadPressed(),
              child: Container(
                width: 97.h,
                height: 32.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  borderRadius: BorderRadius.circular(16.h),
                ),
                child: Center(
                  child: Text(
                    'Download',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF478A),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            right: 7.h,
            top: 4.h,
            child: GestureDetector(
              onTap: () => controller.onCloseBannerPressed(),
              child: SizedBox(
                width: 26.h,
                height: 26.h,
                child: Stack(
                  children: [
                    Positioned(
                      right: 9.h,
                      top: 4.h,
                      child: Container(
                        width: 14.h,
                        height: 14.h,
                        color: appTheme.colorFF478A,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorLightGreen400,
                      width: 26.h,
                      height: 26.h,
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

  Widget _buildStarsRow() {
    return Positioned(
      top: 41.h,
      left: 68.h,
      child: Row(
        children: List.generate(5, (index) {
          return Container(
            margin: EdgeInsets.only(right: 2.h),
            width: 15.h,
            height: 15.h,
            decoration: BoxDecoration(
              color: appTheme.colorFFFFF4,
            ),
            child: ClipPath(
              clipper: StarClipper(),
              child: Container(
                color: appTheme.colorFFFFF4,
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildLogoBalanceSection() {
    return Padding(
      padding: EdgeInsets.all(15.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            width: 78.h,
            height: 28.h,
          ),
          SizedBox(height: 5.h),
          Obx(() => Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup736,
                    width: 15.h,
                    height: 16.h,
                  ),
                  SizedBox(width: 6.h),
                  Text(
                    controller.balanceAmount.value ?? 'R\$1980.00',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFB9),
                  ),
                  SizedBox(width: 6.h),
                  GestureDetector(
                    onTap: () => controller.onRefreshBalance(),
                    child: CustomImageView(
                      imagePath: ImageConstant.img1LightGreenA700,
                      width: 16.h,
                      height: 14.h,
                    ),
                  ),
                ],
              )),
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
            child: CustomButton(
              text: 'Withdrawal',
              iconPath: ImageConstant.imgVectorWhiteA700,
              onPressed: () => controller.onWithdrawalPressed(),
              buttonVariant: CustomButtonVariant.textWithIcon,
              gradientType: CustomButtonGradient.orange,
              height: 36.h,
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              onPressed: () => controller.onDepositPressed(),
              buttonVariant: CustomButtonVariant.textWithIcon,
              gradientType: CustomButtonGradient.exchange,
              height: 36.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.only(top: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildSidebar(),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.h),
              child: Column(
                children: [
                  _buildNotificationBanner(),
                  SizedBox(height: 8.h),
                  _buildMainBanner(),
                  SizedBox(height: 8.h),
                  _buildJackpotSection(),
                  SizedBox(height: 8.h),
                  _buildCollectSection(),
                  SizedBox(height: 8.h),
                  _buildGamesGrid(),
                  SizedBox(height: 100.h),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSidebar() {
    return Container(
      width: 66.h,
      child: Obx(() => Column(
            children:
                List.generate(controller.sidebarMenuItems.length, (index) {
              return SidebarMenuItemWidget(
                sidebarMenuItem: controller.sidebarMenuItems[index],
                isSelected: controller.selectedSidebarIndex.value == index,
                onTap: () => controller.onSidebarItemTap(index),
              );
            }),
          )),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
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
          Expanded(
            child: CustomRichText(
              textSegments: [
                CustomTextSegment(
                  text: '🔥The recharge of the🔥',
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  color: appTheme.colorFF85D4,
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1Red900,
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
    );
  }

  Widget _buildMainBanner() {
    return CustomImageView(
      imagePath: ImageConstant.img130x345,
      width: double.infinity,
      height: 130.h,
      fit: BoxFit.cover,
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      height: 44.h,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
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
            child: CustomImageView(
              imagePath: ImageConstant.imgIntersect42x280,
              width: 280.h,
              height: 42.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 2.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img155x70,
              width: 70.h,
              height: 55.h,
            ),
          ),
          Positioned(
            left: 83.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img119x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
          Positioned(
            right: 10.h,
            top: -12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img219x31,
              width: 31.h,
              height: 19.h,
            ),
          ),
          Positioned(
            left: 109.h,
            top: -14.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot1,
              width: 86.h,
              height: 22.h,
            ),
          ),
          Positioned(
            left: 70.h,
            top: 7.h,
            child: Text(
              '14,091,688.88',
              style: TextStyleHelper.instance.headline24Black
                  .copyWith(letterSpacing: 2.h),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCollectSection() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1084,
            width: 108.h,
            height: 72.h,
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
    );
  }

  Widget _buildGamesGrid() {
    return Obx(() => GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 9.h,
            mainAxisSpacing: 8.h,
            childAspectRatio: 0.8,
          ),
          itemCount: controller.gameItems.length,
          itemBuilder: (context, index) {
            return GameItemWidget(
              gameItem: controller.gameItems[index],
              onTap: () => controller.onGameItemTap(index),
            );
          },
        ));
  }

  Widget _buildVipRewardsDialog() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.blackCustom.withAlpha(128),
      child: Center(
        child: Container(
          width: 375.h,
          height: 957.h,
          color: appTheme.blackCustom,
          child: Stack(
            children: [
              Positioned(
                left: 6.h,
                top: 267.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img0867344,
                  width: 354.h,
                  height: 342.h,
                ),
              ),
              Positioned(
                left: 68.h,
                top: 327.h,
                child: CustomImageView(
                  imagePath: ImageConstant
                      .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo2,
                  width: 232.h,
                  height: 228.h,
                ),
              ),
              Positioned(
                left: 15.h,
                top: 280.h,
                child: Container(
                  width: 345.h,
                  height: 47.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF0C5D,
                    borderRadius:
                        BorderRadius.only(topRight: Radius.circular(8.h)),
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.blackCustom.withAlpha(128),
                        offset: Offset(0, 2.h),
                        blurRadius: 2.h,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 76.h,
                top: 267.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgRectangle623,
                  width: 284.h,
                  height: 60.h,
                ),
              ),
              Positioned(
                left: 30.h,
                top: 262.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgV10,
                  width: 65.h,
                  height: 65.h,
                ),
              ),
              Positioned(
                left: 118.h,
                top: 276.h,
                child: Text(
                  'VlP exclusive rewards !',
                  style: TextStyleHelper.instance.title16Bold,
                ),
              ),
              Positioned(
                left: 118.h,
                top: 302.h,
                child: Text(
                  'Valid within seven days.',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ),
              Positioned(
                left: 143.h,
                top: 371.h,
                child: CustomImageView(
                  imagePath: ImageConstant
                      .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is97x100,
                  width: 100.h,
                  height: 97.h,
                ),
              ),
              Positioned(
                left: 125.h,
                top: 384.h,
                child: CustomImageView(
                  imagePath: ImageConstant
                      .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is97x100,
                  width: 100.h,
                  height: 97.h,
                ),
              ),
              Positioned(
                left: 142.h,
                top: 466.h,
                child: Container(
                  width: 90.h,
                  height: 28.h,
                  decoration: BoxDecoration(
                    color: appTheme.blackCustom,
                    borderRadius: BorderRadius.circular(14.h),
                  ),
                  child: Center(
                    child: Text(
                      '₱453',
                      style: TextStyleHelper.instance.headline24Bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 47.h,
                top: 227.h,
                child: GestureDetector(
                  onTap: () => controller.onCloseVipDialog(),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup848,
                    width: 32.h,
                    height: 32.h,
                  ),
                ),
              ),
              Positioned(
                left: 118.h,
                top: 514.h,
                child: GestureDetector(
                  onTap: () => controller.onReceivedPressed(),
                  child: Container(
                    width: 140.h,
                    height: 36.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF8094,
                      border: Border.all(color: appTheme.colorFF9FB8),
                      borderRadius: BorderRadius.circular(6.h),
                      boxShadow: [
                        BoxShadow(
                          color: appTheme.blackCustom.withAlpha(128),
                          offset: Offset(0, 4.h),
                          blurRadius: 4.h,
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
                        Text(
                          'Received',
                          style: TextStyleHelper.instance.title16Bold,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 84.h,
                top: 562.h,
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup1264,
                      width: 11.h,
                      height: 13.h,
                    ),
                    SizedBox(width: 2.h),
                    Text(
                      'Time left to collect:6day 23:59:59',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFF4B55),
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 47.h,
                top: 413.h,
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
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildVipFloatingMenu() {
    return CustomVipFloatingMenu(
      selectedIndex: 4,
      onItemTap: (index) => controller.onVipItemTap(index),
    );
  }

  Widget _buildBottomNavigation() {
    return CustomBottomBar(
      bottomBarItemList: [
        CustomBottomBarItem(
          icon: ImageConstant.imgVectorLightGreenA700,
          title: 'Home',
          routeName: AppRoutes.jBet88GamingHubScreenThree,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x20,
          title: 'Promotion',
          routeName: '',
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x19,
          title: 'Invite',
          routeName: '',
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x19,
          title: 'Deposit',
          routeName: '',
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray400,
          title: 'Teams',
          routeName: '',
        ),
      ],
      selectedIndex: 0,
      hasFloatingButton: true,
      floatingButtonImage: ImageConstant.imgInvite154x54,
      onChanged: (index) => controller.onBottomNavTap(index),
    );
  }
}

class StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    double w = size.width;
    double h = size.height;

    path.moveTo(w * 0.5, 0);
    path.lineTo(w * 0.61, h * 0.35);
    path.lineTo(w * 0.98, h * 0.35);
    path.lineTo(w * 0.68, h * 0.57);
    path.lineTo(w * 0.79, h * 0.91);
    path.lineTo(w * 0.5, h * 0.7);
    path.lineTo(w * 0.21, h * 0.91);
    path.lineTo(w * 0.32, h * 0.57);
    path.lineTo(w * 0.02, h * 0.35);
    path.lineTo(w * 0.39, h * 0.35);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
