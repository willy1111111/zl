import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_rich_text.dart';
import './controller/gaming_casino_mobile_app_home_controller.dart';
import './widgets/game_card_item_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class GamingCasinoMobileAppHomeScreen
    extends GetWidget<GamingCasinoMobileAppHomeController> {
  GamingCasinoMobileAppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  _buildPromotionalBanner(),
                  _buildUserBalanceSection(),
                  _buildActionButtons(),
                  SizedBox(height: 17.h),
                  _buildMainGameImage(),
                  SizedBox(height: 17.h),
                  _buildNotificationBanner(),
                  SizedBox(height: 30.h),
                  _buildJackpotSection(),
                  SizedBox(height: 10.h),
                  _buildGameContent(),
                  SizedBox(height: 80.h),
                ],
              ),
            ),
            Positioned(
              left: 0,
              top: 418.h,
              child: _buildSidebarNavigation(),
            ),
            _buildFloatingInviteButton(),
            _buildRightGameImage(),
            Obx(() => controller.showModal.value
                ? _buildModalOverlay()
                : SizedBox.shrink()),
          ],
        ),
        bottomNavigationBar: _buildBottomNavigation(),
      ),
    );
  }

  Widget _buildPromotionalBanner() {
    return Container(
      height: 68.h,
      width: double.maxFinite,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
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
                  child: ClipPath(
                    clipper: StarClipper(),
                    child: Container(color: appTheme.colorFFFFF4),
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
              style: TextStyleHelper.instance.body12BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Positioned(
            right: 0.h,
            top: 0.h,
            child: GestureDetector(
              onTap: () => controller.closePromotion(),
              child: CustomImageView(
                imagePath: ImageConstant.imgVectorLightGreen400,
                width: 26.h,
                height: 26.h,
              ),
            ),
          ),
          Positioned(
            right: 28.h,
            top: 18.h,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.h),
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                borderRadius: BorderRadius.circular(16.h),
              ),
              child: Text(
                'Download',
                style: TextStyleHelper.instance.body14BoldNotoSans,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserBalanceSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 8.h),
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
                margin: EdgeInsets.only(right: 8.h),
              ),
              Obx(() => Text(
                    controller.userBalance.value ?? 'R\$1980.00',
                    style: TextStyleHelper.instance.title16BoldArial
                        .copyWith(color: appTheme.colorFFFFB9),
                  )),
              SizedBox(width: 8.h),
              GestureDetector(
                onTap: () => controller.refreshBalance(),
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
    );
  }

  Widget _buildActionButtons() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => controller.navigateToWithdrawal(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 9.h),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(2.h),
                ),
                child: Center(
                  child: Text(
                    'Withdrawal',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: GestureDetector(
              onTap: () => controller.navigateToDeposit(),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12.h),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
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
                      margin: EdgeInsets.only(right: 22.h),
                    ),
                    Text(
                      'Deposit',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.whiteCustom),
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

  Widget _buildMainGameImage() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomImageView(
        imagePath: ImageConstant.img4,
        width: 345.h,
        height: 130.h,
        radius: BorderRadius.circular(8.h),
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.all(6.h),
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
            margin: EdgeInsets.only(right: 8.h),
          ),
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
            margin: EdgeInsets.only(right: 11.h),
          ),
          Text(
            'The recharge',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 76.h, right: 16.h),
          height: 44.h,
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
            borderRadius: BorderRadius.circular(4.h),
          ),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgIntersect42x280,
                width: 280.h,
                height: 42.h,
                margin: EdgeInsets.all(1.h),
                radius: BorderRadius.circular(3.h),
              ),
              Center(
                child: Text(
                  '14,091,688.88',
                  style: TextStyleHelper.instance.headline24BlackArial
                      .copyWith(letterSpacing: 2.h),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 77.h,
          top: -12.h,
          child: CustomImageView(
            imagePath: ImageConstant.img155x70,
            width: 70.h,
            height: 55.h,
            radius: BorderRadius.circular(3.h),
          ),
        ),
        Positioned(
          left: 158.h,
          top: -12.h,
          child: CustomImageView(
            imagePath: ImageConstant.img119x31,
            width: 31.h,
            height: 19.h,
          ),
        ),
        Positioned(
          left: 265.h,
          top: -12.h,
          child: CustomImageView(
            imagePath: ImageConstant.img219x31,
            width: 31.h,
            height: 19.h,
          ),
        ),
        Positioned(
          left: 184.h,
          top: -14.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgJackpot1,
            width: 86.h,
            height: 22.h,
          ),
        ),
        Positioned(
          left: 0.h,
          top: -14.h,
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1084,
                width: 72.h,
                height: 108.h,
              ),
              Positioned(
                top: 44.h,
                child: Text(
                  'Collect',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ),
              Positioned(
                top: 7.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img11,
                  width: 36.h,
                  height: 36.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSidebarNavigation() {
    return Container(
      width: 66.h,
      child: Column(
        children: [
          Obx(() => ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.sidebarItems.length,
                itemBuilder: (context, index) {
                  return SidebarMenuItemWidget(
                    sidebarItem: controller.sidebarItems[index],
                    isSelected: controller.selectedSidebarIndex.value == index,
                    onTap: () => controller.selectSidebarItem(index),
                  );
                },
              )),
        ],
      ),
    );
  }

  Widget _buildGameContent() {
    return Container(
      margin: EdgeInsets.only(left: 77.h, right: 16.h),
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 9.h,
              mainAxisSpacing: 6.h,
              childAspectRatio: 0.8,
            ),
            itemCount: controller.gameItems.length,
            itemBuilder: (context, index) {
              return GameCardItemWidget(
                gameItem: controller.gameItems[index],
                onTap: () => controller.selectGame(index),
              );
            },
          )),
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      height: 64.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF232B32), Color(0xFF25282D)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, -4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Obx(() => Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: List.generate(controller.bottomNavItems.length, (index) {
              final item = controller.bottomNavItems[index];
              final isSelected =
                  controller.selectedBottomNavIndex.value == index;
              return GestureDetector(
                onTap: () => controller.selectBottomNavItem(index),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: item.iconPath?.value ?? '',
                      width: 20.h,
                      height: isSelected ? 23.h : 20.h,
                      color:
                          isSelected ? Color(0xFF85D420) : appTheme.colorFF8089,
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      item.title?.value ?? '',
                      style: TextStyleHelper.instance.body12BoldArial.copyWith(
                          color: isSelected
                              ? Color(0xFF85D420)
                              : appTheme.colorFF8089),
                    ),
                  ],
                ),
              );
            }),
          )),
    );
  }

  Widget _buildFloatingInviteButton() {
    return Positioned(
      left: 161.h,
      bottom: 84.h,
      child: GestureDetector(
        onTap: () => controller.navigateToInvite(),
        child: CustomImageView(
          imagePath: ImageConstant.imgInvite154x54,
          width: 54.h,
          height: 54.h,
        ),
      ),
    );
  }

  Widget _buildRightGameImage() {
    return Positioned(
      right: 0.h,
      top: 562.h,
      child: CustomImageView(
        imagePath: ImageConstant.img410,
        width: 68.h,
        height: 150.h,
      ),
    );
  }

  Widget _buildModalOverlay() {
    return Positioned(
      left: 0,
      top: 68.h,
      child: Container(
        width: Get.width,
        height: 298.h,
        color: appTheme.blackCustom.withAlpha(204),
        child: Center(
          child: Container(
            width: 351.h,
            height: 119.h,
            margin: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              color: Color(0xFFE7E7E7).withAlpha(224),
              borderRadius: BorderRadius.circular(6.h),
            ),
            child: Column(
              children: [
                Container(
                  height: 37.h,
                  padding: EdgeInsets.symmetric(horizontal: 10.h),
                  decoration: BoxDecoration(
                    color: Color(0xFFE7E7E7).withAlpha(224),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(6.h),
                      topRight: Radius.circular(6.h),
                    ),
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup824,
                        width: 26.h,
                        height: 26.h,
                        margin: EdgeInsets.only(right: 8.h),
                      ),
                      Expanded(
                        child: Text(
                          'This is the title This is the title',
                          style: TextStyleHelper.instance.title16BlackArial,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(14.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'This is a meaningless message,This is a mea ningless message，This is a meaning',
                          style: TextStyleHelper.instance.title16BoldArial
                              .copyWith(color: appTheme.colorFF1E20),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () => controller.closeModal(),
                            child: Text(
                              'GOT IT',
                              style: TextStyleHelper.instance.title16BoldArial
                                  .copyWith(color: appTheme.colorFF1E20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width;
    final h = size.height;

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
