import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/casino_gaming_hub_controller.dart';
import './models/sidebar_menu_item_model.dart';
import './widgets/game_item_widget.dart';
import './widgets/sidebar_menu_item_widget.dart';

class CasinoGamingHubScreen extends StatelessWidget {
  CasinoGamingHubScreen({Key? key}) : super(key: key);

  final CasinoGamingHubController controller =
      Get.put(CasinoGamingHubController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            _buildPromotionalBanner(),
            _buildHeader(),
            _buildActionButtons(),
            _buildMainBanner(),
            _buildNotificationBanner(),
            _buildJackpotSection(),
            _buildCollectSection(),
            _buildLeftSidebar(),
            _buildGamesGrid(),
            _buildVIPSection(),
            _buildSupportButton(),
            _buildAppInstallationPrompt(),
          ],
        ),
      ),
    );
  }

  Widget _buildPromotionalBanner() {
    return Obx(() {
      if (!(controller.isPromoBannerVisible.value ?? true)) {
        return SizedBox.shrink();
      }
      return Positioned(
        top: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 68.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.0, -1.0),
              end: Alignment(1.0, 0.0),
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
                top: 9.h,
                left: 12.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img112,
                  width: 50.h,
                  height: 50.h,
                  radius: BorderRadius.circular(8.h),
                ),
              ),
              Positioned(
                top: 41.h,
                left: 68.h,
                child: Row(
                  children: List.generate(
                      5,
                      (index) => Container(
                            width: 15.h,
                            height: 15.h,
                            margin: EdgeInsets.only(right: 2.h),
                            decoration: BoxDecoration(
                              color: appTheme.colorFFFFF4,
                              shape: BoxShape.circle,
                            ),
                          )),
                ),
              ),
              Positioned(
                top: 10.h,
                left: 68.h,
                child: Text(
                  'MANY BENEFITS FOR NEWCOMERS',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom, height: 1.17),
                ),
              ),
              Positioned(
                top: 18.h,
                right: 30.h,
                child: GestureDetector(
                  onTap: () => controller.onDownloadTapped(),
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 13.h, vertical: 4.h),
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
                top: 0,
                right: 1.h,
                child: GestureDetector(
                  onTap: () => controller.closePromoBanner(),
                  child: Container(
                    width: 26.h,
                    height: 26.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorLightGreen400,
                      width: 26.h,
                      height: 26.h,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }

  Widget _buildHeader() {
    return Positioned(
      top: 76.h,
      left: 15.h,
      right: 15.h,
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
              SizedBox(width: 15.h),
              Obx(() => Text(
                    controller.casinoGamingHubModel.value?.balance?.value ??
                        'R\$1980.00',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFB9, height: 1.19),
                  )),
              SizedBox(width: 15.h),
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
    return Positioned(
      top: 109.h,
      left: 15.h,
      right: 15.h,
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              iconPath: ImageConstant.imgVectorWhiteA70011x16,
              variant: CustomButtonVariant.gradient1,
              height: 36.h,
              onPressed: () => controller.onWithdrawalTapped(),
            ),
          ),
          SizedBox(width: 5.h),
          Expanded(
            child: CustomButton(
              text: 'Deposit',
              iconPath: ImageConstant.imgVectorWhiteA700,
              variant: CustomButtonVariant.gradient2,
              height: 36.h,
              onPressed: () => controller.onDepositTapped(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainBanner() {
    return Positioned(
      top: 153.h,
      left: 15.h,
      right: 15.h,
      child: Container(
        height: 130.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.h),
        ),
        child: CustomImageView(
          imagePath: ImageConstant.img4,
          width: double.maxFinite,
          height: 130.h,
          radius: BorderRadius.circular(8.h),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildNotificationBanner() {
    return Positioned(
      top: 300.h,
      left: 15.h,
      right: 15.h,
      child: Container(
        height: 34.h,
        padding: EdgeInsets.symmetric(horizontal: 6.h),
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
              child: Row(
                children: [
                  Text(
                    '🔥The recharge of the🔥',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF85D4, height: 1.21),
                  ),
                  SizedBox(width: 3.h),
                  CustomImageView(
                    imagePath: ImageConstant.img1Red90001,
                    width: 16.h,
                    height: 16.h,
                  ),
                  SizedBox(width: 3.h),
                  Text(
                    'The recharge',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF85D4, height: 1.21),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Positioned(
      top: 364.h,
      left: 76.h,
      right: 17.h,
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
                radius: BorderRadius.circular(3.h),
              ),
            ),
            Positioned(
              top: -12.h,
              left: 1.h,
              child: CustomImageView(
                imagePath: ImageConstant.img155x70,
                width: 70.h,
                height: 55.h,
                radius: BorderRadius.circular(3.h),
              ),
            ),
            Positioned(
              top: -14.h,
              left: 108.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgJackpot1,
                width: 86.h,
                height: 22.h,
              ),
            ),
            Positioned(
              top: -12.h,
              left: 82.h,
              child: CustomImageView(
                imagePath: ImageConstant.img119x31,
                width: 31.h,
                height: 19.h,
              ),
            ),
            Positioned(
              top: -12.h,
              right: 25.h,
              child: CustomImageView(
                imagePath: ImageConstant.img219x31,
                width: 31.h,
                height: 19.h,
              ),
            ),
            Positioned(
              top: 7.h,
              left: 69.h,
              right: 8.h,
              child: Center(
                child: Obx(() => Text(
                      controller.casinoGamingHubModel.value?.jackpotAmount
                              ?.value ??
                          '14,091,688.88',
                      style: TextStyleHelper.instance.headline24Black
                          .copyWith(letterSpacing: 2, height: 1.42),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCollectSection() {
    return Positioned(
      top: 350.h,
      left: 0,
      child: GestureDetector(
        onTap: () => controller.onCollectTapped(),
        child: Container(
          width: 72.h,
          height: 108.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup1084,
                width: 72.h,
                height: 108.h,
              ),
              Positioned(
                top: 7.h,
                left: 16.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img11,
                  width: 36.h,
                  height: 36.h,
                ),
              ),
              Positioned(
                bottom: 4.h,
                left: 13.h,
                child: Text(
                  'Collect',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.17),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLeftSidebar() {
    return Positioned(
      top: 418.h,
      left: 0,
      child: Container(
        width: 66.h,
        child: Obx(() => Column(
              children:
                  controller.sidebarMenuItems.asMap().entries.map((entry) {
                int index = entry.key;
                SidebarMenuItemModel item = entry.value;
                return SidebarMenuItemWidget(
                  sidebarMenuItemModel: item,
                  isSelected: controller.selectedSidebarIndex.value == index,
                  onTap: () => controller.onSidebarItemTapped(index),
                );
              }).toList(),
            )),
      ),
    );
  }

  Widget _buildGamesGrid() {
    return Positioned(
      top: 422.h,
      left: 77.h,
      right: 16.h,
      bottom: 84.h,
      child: SingleChildScrollView(
        child: Obx(() => GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 9.h,
                mainAxisSpacing: 9.h,
                childAspectRatio: 0.8,
              ),
              itemCount: controller.gameItems.length,
              itemBuilder: (context, index) {
                return GameItemWidget(
                  gameItemModel: controller.gameItems[index],
                  onTap: () =>
                      controller.onGameItemTapped(controller.gameItems[index]),
                );
              },
            )),
      ),
    );
  }

  Widget _buildVIPSection() {
    return Positioned(
      top: 533.h,
      right: 8.h,
      child: Container(
        width: 67.h,
        height: 369.h,
        decoration: BoxDecoration(
          color: appTheme.color0E1900,
          border: Border.all(color: appTheme.colorFF5DA4),
          borderRadius: BorderRadius.circular(33.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.color888888,
              offset: Offset(0, 4.h),
              blurRadius: 4.h,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVip7,
              width: 45.h,
              height: 50.h,
            ),
            SizedBox(height: 9.h),
            Column(
              children: [
                Container(
                  width: 50.h,
                  height: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2548,
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.color888888,
                        offset: Offset(0, 4.h),
                        blurRadius: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.h),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup11853,
                  width: 50.h,
                  height: 50.h,
                ),
                SizedBox(height: 1.h),
                Container(
                  width: 50.h,
                  height: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2548,
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.color888888,
                        offset: Offset(0, 4.h),
                        blurRadius: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.h),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup566,
                  width: 50.h,
                  height: 50.h,
                ),
                SizedBox(height: 1.h),
                Container(
                  width: 50.h,
                  height: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2548,
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.color888888,
                        offset: Offset(0, 4.h),
                        blurRadius: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.h),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup827,
                  width: 50.h,
                  height: 52.h,
                ),
                SizedBox(height: 1.h),
                Container(
                  width: 50.h,
                  height: 1.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2548,
                    boxShadow: [
                      BoxShadow(
                        color: appTheme.color888888,
                        offset: Offset(0, 4.h),
                        blurRadius: 0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 1.h),
                Container(
                  width: 56.h,
                  height: 56.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2542,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup11868,
                      width: 50.h,
                      height: 50.h,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSupportButton() {
    return Positioned(
      bottom: 147.h,
      right: 75.h,
      child: GestureDetector(
        onTap: () => controller.onSupportTapped(),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup11862,
          width: 56.h,
          height: 56.h,
        ),
      ),
    );
  }

  Widget _buildAppInstallationPrompt() {
    return Obx(() {
      if (!(controller.isInstallPromptVisible.value ?? true)) {
        return SizedBox.shrink();
      }
      return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 182.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF000000),
                appTheme.colorFF0000,
                Color(0xFF171C21)
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6.h),
              topRight: Radius.circular(6.h),
            ),
            boxShadow: [
              BoxShadow(
                color: appTheme.color888888,
                offset: Offset(0, 4.h),
                blurRadius: 5.h,
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                top: -27.h,
                left: 0,
                right: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup119541,
                  width: double.maxFinite,
                  height: 205.h,
                ),
              ),
              Positioned(
                top: 35.h,
                left: 15.h,
                right: 15.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(maxWidth: 246.h),
                      child: Text(
                        'We want to add jbet88 to your home screen,\nGet free events and bonus updates.',
                        style: TextStyleHelper.instance.body15
                            .copyWith(height: 1.2),
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap: () => controller.cancelInstallation(),
                          child: Text(
                            'Cancel',
                            style: TextStyleHelper.instance.title16Bold
                                .copyWith(
                                    color: appTheme.colorFFABB6, height: 1.19),
                          ),
                        ),
                        SizedBox(width: 15.h),
                        GestureDetector(
                          onTap: () => controller.installApp(),
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32.h, vertical: 9.h),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [Color(0xFF85D420), Color(0xFF3B6900)],
                              ),
                              borderRadius: BorderRadius.circular(4.h),
                              boxShadow: [
                                BoxShadow(
                                  color: appTheme.colorFF0000,
                                  offset: Offset(0, 4.h),
                                  blurRadius: 4.h,
                                ),
                              ],
                            ),
                            child: Text(
                              'Install',
                              style: TextStyleHelper.instance.title16Bold
                                  .copyWith(height: 1.19),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
