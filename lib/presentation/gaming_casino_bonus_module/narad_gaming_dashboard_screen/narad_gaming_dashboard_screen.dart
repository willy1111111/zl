import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/narad_gaming_dashboard_controller.dart';
import './widgets/promotion_item_widget.dart';
import './widgets/settings_menu_item_widget.dart';
import './widgets/teams_menu_item_widget.dart';

class NaradGamingDashboardScreen
    extends GetWidget<NaradGamingDashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _buildStatusBar(),
                SizedBox(height: 48.h),
                _buildUserProfileCard(),
                SizedBox(height: 24.h),
                _buildTeamsCenter(),
                SizedBox(height: 16.h),
                _buildPromotionsList(),
                SizedBox(height: 16.h),
                _buildSettingsMenu(),
                SizedBox(height: 16.h),
                _buildCommunitySection(),
                SizedBox(height: 16.h),
                _buildLanguageSelector(),
                SizedBox(height: 150.h),
              ],
            ),
          ),
          _buildFloatingActionButton(),
          _buildAdditionalUIElements(),
        ],
      ),
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  Widget _buildStatusBar() {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Container(
        height: 48.h,
        child: CustomImageView(
          imagePath: ImageConstant.imgGroup789,
          height: 48.h,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildUserProfileCard() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, -1.0),
          end: Alignment(0.0, 1.0),
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img22,
            height: 191.h,
            width: double.infinity,
            fit: BoxFit.cover,
            radius: BorderRadius.circular(8.h),
          ),
          Opacity(
            opacity: 0.2,
            child: CustomImageView(
              imagePath: ImageConstant.img22,
              height: 191.h,
              width: double.infinity,
              fit: BoxFit.cover,
              radius: BorderRadius.circular(8.h),
            ),
          ),
          Positioned(
            top: 60.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle412,
              height: 131.h,
              width: 343.h,
              radius: BorderRadius.circular(8.h),
            ),
          ),
          Positioned(
            top: 60.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgMaskGroup131x343,
              height: 131.h,
              width: 343.h,
              radius: BorderRadius.circular(8.h),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildUserInfo(),
                SizedBox(height: 16.h),
                _buildBalanceSection(),
                SizedBox(height: 16.h),
                _buildActionButtons(),
              ],
            ),
          ),
          _buildBonusInfoCard(),
        ],
      ),
    );
  }

  Widget _buildUserInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup466,
              height: 40.h,
              width: 40.h,
              radius: BorderRadius.circular(20.h),
            ),
            SizedBox(width: 12.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'User name',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFE6E6),
                ),
                Text(
                  '98955464616',
                  style: TextStyleHelper.instance.body14Black
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1BlueGray100,
              height: 10.h,
              width: 10.h,
            ),
            SizedBox(width: 8.h),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                ),
                borderRadius: BorderRadius.circular(14.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgV4,
                    height: 24.h,
                    width: 24.h,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'VIP 4',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildBalanceSection() {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Balance',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(height: 4.h),
              Text(
                '₱ 693.00',
                style: TextStyleHelper.instance.headline24Black
                    .copyWith(color: appTheme.colorFFFFEB, shadows: [
                  Shadow(
                    offset: Offset(0, 2.h),
                    blurRadius: 2.h,
                    color: appTheme.blackCustom,
                  ),
                ]),
              ),
            ],
          ),
        ),
        Container(
          width: 1.h,
          height: 36.h,
          color: appTheme.whiteCustom,
          margin: EdgeInsets.symmetric(horizontal: 16.h),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Bonus Claimed',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(height: 4.h),
              Text(
                '₱ 1324.00',
                style: TextStyleHelper.instance.headline24Black
                    .copyWith(color: appTheme.colorFFFFEB, shadows: [
                  Shadow(
                    offset: Offset(0, 2.h),
                    blurRadius: 2.h,
                    color: appTheme.blackCustom,
                  ),
                ]),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        CustomButton(
          text: 'Withdrawal',
          iconPath: ImageConstant.imgVectorWhiteA700,
          onPressed: () => controller.onWithdrawalPressed(),
          buttonVariant: CustomButtonVariant.textWithIcon,
          gradientType: CustomButtonGradient.orange,
          borderColor: appTheme.colorFFFFC6,
          height: 36.h,
          width: 120.h,
          borderRadius: 18.h,
        ),
        SizedBox(width: 12.h),
        CustomButton(
          text: 'Deposit',
          iconPath: ImageConstant.imgVectorWhiteA70011x16,
          onPressed: () => controller.onDepositPressed(),
          buttonVariant: CustomButtonVariant.textWithIcon,
          gradientType: CustomButtonGradient.orange,
          borderColor: appTheme.colorFF85D4,
          height: 36.h,
          width: 100.h,
          borderRadius: 18.h,
        ),
      ],
    );
  }

  Widget _buildBonusInfoCard() {
    return Positioned(
      top: 75.h,
      right: 16.h,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
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
              offset: Offset(0, 2.h),
              blurRadius: 3.h,
              color: appTheme.blackCustom,
            ),
          ],
        ),
        padding: EdgeInsets.all(12.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgGroup839,
              height: 24.h,
              width: 24.h,
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgStrokeWhiteA700,
              height: 7.h,
              width: 13.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTeamsCenter() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Teams Center',
            style: TextStyleHelper.instance.title16Bold.copyWith(shadows: [
              Shadow(
                offset: Offset(0, 2.h),
                blurRadius: 2.h,
                color: appTheme.blackCustom,
              ),
            ]),
          ),
          SizedBox(height: 12.h),
          Container(
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
                  itemCount: controller.teamsMenuItems.length,
                  itemBuilder: (context, index) {
                    return TeamsMenuItemWidget(
                      teamsMenuItem: controller.teamsMenuItems[index],
                      onTap: () => controller.onTeamsMenuItemTap(index),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildPromotionsList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.promotionItems.length,
            separatorBuilder: (context, index) => Container(
              height: 1.h,
              color: appTheme.colorFF292F,
            ),
            itemBuilder: (context, index) {
              return PromotionItemWidget(
                promotionItem: controller.promotionItems[index],
                onTap: () => controller.onPromotionItemTap(index),
              );
            },
          )),
    );
  }

  Widget _buildSettingsMenu() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.settingsMenuItems.length,
            separatorBuilder: (context, index) => Container(
              height: 1.h,
              color: appTheme.colorFF282F,
            ),
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
      margin: EdgeInsets.symmetric(horizontal: 16.h),
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
          SizedBox(height: 16.h),
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
        ],
      ),
    );
  }

  Widget _buildLanguageSelector() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(8.h),
        ),
        padding: EdgeInsets.all(12.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant
                      .imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
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
            CustomImageView(
              imagePath: ImageConstant.imgPolygon22BlueGray20001,
              height: 8.h,
              width: 10.h,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
      bottom: 80.h,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: appTheme.colorFF242A,
            borderRadius: BorderRadius.circular(28.h),
          ),
          padding: EdgeInsets.all(4.h),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFADF835),
                      appTheme.colorFF83CF,
                      Color(0xFF3C7A0B)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(23.h),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(-1.h, -4.h),
                      blurRadius: 4.h,
                      color: appTheme.colorFF6199,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(12.h),
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector25x27,
                  height: 25.h,
                  width: 27.h,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSubtract,
                  height: 14.h,
                  width: 43.h,
                ),
              ),
              Positioned(
                bottom: 15.h,
                right: 10.h,
                child: Container(
                  width: 3.h,
                  height: 3.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteCustom,
                    shape: BoxShape.circle,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSubtract14x43,
                  height: 14.h,
                  width: 43.h,
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.img14x43,
                  height: 14.h,
                  width: 43.h,
                ),
              ),
              Positioned(
                bottom: 4.h,
                left: 3.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgUnion,
                  height: 8.h,
                  width: 33.h,
                ),
              ),
              Positioned(
                top: 28.h,
                left: 11.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img531x45,
                  height: 31.h,
                  width: 45.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF232B32), Color(0xFF25282D)],
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -4.h),
            blurRadius: 4.h,
            color: appTheme.blackCustom,
          ),
        ],
      ),
      child: Obx(() => CustomBottomBar(
            bottomBarItemList: controller.bottomBarItemList.value,
            selectedIndex: controller.selectedBottomBarIndex.value,
            onChanged: (index) => controller.onBottomBarItemTap(index),
            backgroundColor: appTheme.transparentCustom,
            height: 64.h,
          )),
    );
  }

  Widget _buildAdditionalUIElements() {
    return Stack(
      children: [
        Positioned(
          top: 259.h,
          right: 28.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgComponent7,
            height: 20.h,
            width: 20.h,
          ),
        ),
        Positioned(
          top: 7.h,
          left: 10.h,
          child: CustomImageView(
            imagePath: ImageConstant.img1,
            height: 13.h,
            width: 356.h,
          ),
        ),
      ],
    );
  }
}
