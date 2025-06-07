import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/jbet88_user_dashboard_controller.dart';
import './widgets/main_menu_item_widget.dart';
import './widgets/settings_menu_item_widget.dart';
import './widgets/teams_center_item_widget.dart';

class Jbet88UserDashboardScreen extends StatelessWidget {
  Jbet88UserDashboardScreen({Key? key}) : super(key: key);

  final Jbet88UserDashboardController controller =
      Get.put(Jbet88UserDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              _buildMainContent(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainContent() {
    return Container(
      width: 375.h,
      child: Stack(
        children: [
          // Status Bar Background
          Positioned(
            top: 0,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup724,
              height: 193.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),
          ),

          // Status Bar Overlay
          Positioned(
            top: 7.h,
            left: 10.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1Black900,
              height: 13.h,
              width: 356.h,
            ),
          ),

          // Main Balance Card
          Positioned(
            top: 45.h,
            left: 15.h,
            child: _buildMainBalanceCard(),
          ),

          // Teams Center Section
          Positioned(
            top: 257.h,
            left: 15.h,
            child: Text(
              'Teams center',
              style: TextStyleHelper.instance.title16Bold,
            ),
          ),

          // Teams Center Grid
          Positioned(
            top: 282.h,
            left: 17.h,
            child: _buildTeamsCenterGrid(),
          ),

          // Main Menu List
          Positioned(
            top: 376.h,
            left: 15.h,
            child: _buildMainMenuList(),
          ),

          // Settings Menu
          Positioned(
            top: 778.h,
            left: 15.h,
            child: _buildSettingsMenu(),
          ),

          // Community Section
          Positioned(
            top: 1290.h,
            left: 15.h,
            child: _buildCommunitySection(),
          ),

          // Language Section
          Positioned(
            top: 1376.h,
            left: 15.h,
            child: _buildLanguageSection(),
          ),

          // Floating Action Button
          Positioned(
            top: 1457.h,
            left: 160.h,
            child: _buildFloatingActionButton(),
          ),

          // Component Icon
          Positioned(
            top: 259.h,
            right: 47.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgComponent7,
              height: 20.h,
              width: 20.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainBalanceCard() {
    return Container(
      width: 345.h,
      height: 192.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.13, 0.0),
          end: Alignment(0.87, 1.0),
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF85D4),
      ),
      child: Stack(
        children: [
          // Background Images
          Positioned(
            top: 0,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img22,
              height: 163.h,
              width: 294.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 60.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle412,
              height: 131.h,
              width: 343.h,
            ),
          ),
          Positioned(
            top: 60.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgMaskGroup,
              height: 131.h,
              width: 343.h,
            ),
          ),

          // Card Content
          Container(
            width: 333.h,
            height: 182.h,
            decoration: BoxDecoration(
              border: Border.all(color: appTheme.colorFF85D4),
              borderRadius: BorderRadius.circular(8.h),
            ),
            child: Stack(
              children: [
                // User Info
                Positioned(
                  top: 16.h,
                  left: 16.h,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup466,
                        height: 40.h,
                        width: 40.h,
                      ),
                      SizedBox(width: 12.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(() => Text(
                                controller.dashboardModelObj.value.userName
                                        ?.value ??
                                    'User name',
                                style: TextStyleHelper.instance.body14Bold
                                    .copyWith(color: appTheme.colorFFE6E6),
                              )),
                          SizedBox(height: 2.h),
                          Obx(() => Text(
                                controller.dashboardModelObj.value.userId
                                        ?.value ??
                                    '98955464616',
                                style: TextStyleHelper.instance.body14Black,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),

                // Info Icon
                Positioned(
                  top: 16.h,
                  right: 16.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.img1BlueGray100,
                    height: 10.h,
                    width: 10.h,
                  ),
                ),

                // VIP Badge
                Positioned(
                  top: 10.h,
                  right: 10.h,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                      ),
                      borderRadius: BorderRadius.circular(14.h),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgV4,
                          height: 24.h,
                          width: 24.h,
                        ),
                        SizedBox(width: 8.h),
                        Obx(() => Text(
                              controller.dashboardModelObj.value.vipLevel
                                      ?.value ??
                                  'VIP 4',
                              style: TextStyleHelper.instance.body14Bold
                                  .copyWith(color: appTheme.whiteCustom),
                            )),
                      ],
                    ),
                  ),
                ),

                // Balance Section
                Positioned(
                  top: 82.h,
                  left: 16.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                      SizedBox(height: 4.h),
                      Obx(() => Text(
                            controller.dashboardModelObj.value.totalBalance
                                    ?.value ??
                                '₱ 693.00',
                            style: TextStyleHelper.instance.headline24Black
                                .copyWith(shadows: [
                              Shadow(
                                offset: Offset(0, 2.h),
                                blurRadius: 2.h,
                                color: appTheme.blackCustom,
                              ),
                            ]),
                          )),
                    ],
                  ),
                ),

                // Divider
                Positioned(
                  top: 79.h,
                  left: 140.h,
                  child: Container(
                    width: 36.h,
                    height: 1.h,
                    color: appTheme.whiteCustom,
                  ),
                ),

                // Bonus Section
                Positioned(
                  top: 79.h,
                  right: 10.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Total Bonus Claimed',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                      SizedBox(height: 4.h),
                      Obx(() => Text(
                            controller.dashboardModelObj.value.totalBonusClaimed
                                    ?.value ??
                                '₱ 1324.00',
                            style: TextStyleHelper.instance.headline24Black
                                .copyWith(shadows: [
                              Shadow(
                                offset: Offset(0, 2.h),
                                blurRadius: 2.h,
                                color: appTheme.blackCustom,
                              ),
                            ]),
                          )),
                    ],
                  ),
                ),

                // Action Buttons
                Positioned(
                  bottom: 10.h,
                  left: 9.h,
                  child: Row(
                    children: [
                      CustomButton(
                        text: 'Withdrawal',
                        leftIcon: ImageConstant.imgVectorWhiteA70011x16,
                        buttonVariant: CustomButtonVariant.gradientOrange,
                        onPressed: () => controller.onWithdrawalTap(),
                      ),
                      SizedBox(width: 16.h),
                      CustomButton(
                        text: 'Deposit',
                        leftIcon: ImageConstant.imgVectorWhiteA700,
                        buttonVariant: CustomButtonVariant.gradientGreen,
                        onPressed: () => controller.onDepositTap(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Bonus Info Card
          Positioned(
            top: 75.h,
            right: -112.h,
            child: Container(
              width: 112.h,
              height: 45.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.91, 0.0),
                  end: Alignment(0.09, 1.0),
                  colors: [
                    Color(0xFF478A03),
                    appTheme.colorFF76CD,
                    Color(0xFF478A03)
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.h),
                  bottomLeft: Radius.circular(18.h),
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 2.h),
                    blurRadius: 3.h,
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup839,
                      height: 24.h,
                      width: 24.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgStrokeWhiteA700,
                      height: 13.h,
                      width: 7.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamsCenterGrid() {
    return Container(
      width: 345.h,
      height: 81.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Obx(() => GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 16.h,
              mainAxisSpacing: 16.h,
              childAspectRatio: 1.0,
            ),
            itemCount: controller.teamsCenterItems.length,
            itemBuilder: (context, index) {
              return TeamsCenterItemWidget(
                teamsCenterItem: controller.teamsCenterItems[index],
              );
            },
          )),
    );
  }

  Widget _buildMainMenuList() {
    return Container(
      width: 345.h,
      height: 392.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => Container(
                    height: 1.h,
                    color: appTheme.colorFF292F,
                  ),
                  itemCount: controller.mainMenuItems.length,
                  itemBuilder: (context, index) {
                    return MainMenuItemWidget(
                      mainMenuItem: controller.mainMenuItems[index],
                      onTap: () => controller.onMainMenuItemTap(index),
                    );
                  },
                )),
          ),
          _buildGiftCodeSection(),
        ],
      ),
    );
  }

  Widget _buildGiftCodeSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img236,
                height: 36.h,
                width: 36.h,
              ),
              SizedBox(width: 16.h),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 12.h, vertical: 8.h),
                        decoration: BoxDecoration(
                          color: appTheme.colorFF1B1C,
                          border: Border.all(color: appTheme.colorFF282F),
                          borderRadius: BorderRadius.circular(4.h),
                        ),
                        child: Text(
                          'Enter the gift code',
                          style: TextStyleHelper.instance.body14Bold
                              .copyWith(color: appTheme.colorFF8089),
                        ),
                      ),
                    ),
                    SizedBox(width: 8.h),
                    CustomButton(
                      text: 'Exchange',
                      buttonVariant: CustomButtonVariant.gradientGreen,
                      onPressed: () => controller.onExchangeGiftCodeTap(),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 4.h),
          Padding(
            padding: EdgeInsets.only(left: 52.h),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Gift Code',
                style: TextStyleHelper.instance.body13Bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsMenu() {
    return Container(
      width: 345.h,
      height: 502.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => Container(
              height: 1.h,
              color: appTheme.colorFF282F,
            ),
            itemCount: controller.settingsMenuItems.length,
            itemBuilder: (context, index) {
              return SettingsMenuItemWidget(
                settingsMenuItem: controller.settingsMenuItems[index],
                onTap: () => controller.onSettingsMenuItemTap(index),
              );
            },
          )),
    );
  }

  Widget _buildCommunitySection() {
    return Container(
      width: 345.h,
      height: 80.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Join Our community',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 12.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => controller.onTelegramTap(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup840,
                      height: 34.h,
                      width: 34.h,
                    ),
                  ),
                  SizedBox(width: 16.h),
                  GestureDetector(
                    onTap: () => controller.onFacebookTap(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup1288,
                      height: 34.h,
                      width: 34.h,
                    ),
                  ),
                ],
              ),
              CustomImageView(
                imagePath: ImageConstant.imgPolygon22,
                height: 8.h,
                width: 10.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageSection() {
    return Container(
      width: 345.h,
      height: 48.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath:
                ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
            height: 15.h,
            width: 30.h,
          ),
          SizedBox(width: 12.h),
          Text(
            'English',
            style: TextStyleHelper.instance.body12Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return GestureDetector(
      onTap: () => controller.onFloatingActionButtonTap(),
      child: Container(
        width: 57.h,
        height: 56.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF242A,
          borderRadius: BorderRadius.circular(28.h),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 4.h,
              left: 4.h,
              child: Container(
                width: 48.h,
                height: 46.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(1.56, 0.0),
                    end: Alignment(0.44, 1.0),
                    colors: [
                      Color(0xFFADF835),
                      appTheme.colorFF83CF,
                      Color(0xFF3C7A0B)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(23.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF6199,
                      offset: Offset(-1.h, -4.h),
                      blurRadius: 4.h,
                    ),
                  ],
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 5.h,
                      left: 12.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVector25x27,
                        height: 25.h,
                        width: 27.h,
                      ),
                    ),
                    Positioned(
                      top: 27.h,
                      left: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSubtract,
                        height: 14.h,
                        width: 43.h,
                      ),
                    ),
                    Positioned(
                      top: 32.h,
                      right: 5.h,
                      child: Container(
                        width: 3.h,
                        height: 3.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: appTheme.whiteCustom),
                          borderRadius: BorderRadius.circular(1.h),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 27.h,
                      left: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgSubtract14x43,
                        height: 14.h,
                        width: 43.h,
                      ),
                    ),
                    Positioned(
                      top: 27.h,
                      left: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.img,
                        height: 14.h,
                        width: 43.h,
                      ),
                    ),
                    Positioned(
                      top: 31.h,
                      left: 3.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgUnion,
                        height: 8.h,
                        width: 33.h,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 23.h,
              left: 11.h,
              child: CustomImageView(
                imagePath: ImageConstant.img5,
                height: 31.h,
                width: 45.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
