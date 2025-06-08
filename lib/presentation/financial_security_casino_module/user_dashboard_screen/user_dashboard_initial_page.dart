import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_text_field.dart';
import './controller/user_dashboard_controller.dart';
import './widgets/promotional_item_widget.dart';
import './widgets/settings_menu_item_widget.dart';
import './widgets/teams_center_item_widget.dart';

class UserDashboardInitialPage extends StatelessWidget {
  UserDashboardInitialPage({Key? key}) : super(key: key);

  UserDashboardController controller = Get.put(UserDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            _buildStatusBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildUserBalanceCard(),
                      SizedBox(height: 16.h),
                      _buildTeamsCenter(),
                      SizedBox(height: 16.h),
                      _buildPromotionalSection(),
                      SizedBox(height: 16.h),
                      _buildSettingsMenu(),
                      SizedBox(height: 16.h),
                      _buildCommunitySection(),
                      SizedBox(height: 16.h),
                      _buildLanguageSelector(),
                      SizedBox(height: 80.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingInviteButton(),
    );
  }

  Widget _buildStatusBar() {
    return Container(
      height: 193.h,
      width: double.maxFinite,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup724,
            height: 193.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
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
      ),
    );
  }

  Widget _buildUserBalanceCard() {
    return Container(
      height: 192.h,
      margin: EdgeInsets.only(top: -147.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.33, 0),
          end: Alignment(0, 1),
          colors: [Color(0xFF76cd00), Color(0xFF478a03)],
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Stack(
        children: [
          Opacity(
            opacity: 0.2,
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
          Positioned(
            top: 75.h,
            right: 0,
            child: _buildBonusCard(),
          ),
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
            ),
            SizedBox(width: 12.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(() => Text(
                      controller.userDashboardModel.value.userName?.value ??
                          'User name',
                      style: TextStyleHelper.instance.body14Bold2
                          .copyWith(color: appTheme.colorFFE6E6),
                    )),
                Obx(() => Text(
                      controller.userDashboardModel.value.userId?.value ??
                          '98955464616',
                      style: TextStyleHelper.instance.body14Black,
                    )),
                SizedBox(height: 4.h),
                CustomImageView(
                  imagePath: ImageConstant.img1BlueGray100,
                  height: 10.h,
                  width: 10.h,
                ),
              ],
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF363c41), Color(0xFF2b3035)],
            ),
            borderRadius: BorderRadius.circular(14.h),
          ),
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
                style: TextStyleHelper.instance.body14Bold2,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildBalanceSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Balance',
              style: TextStyleHelper.instance.body14Bold2,
            ),
            SizedBox(height: 4.h),
            Obx(() => Text(
                  controller.userDashboardModel.value.totalBalance?.value ??
                      '₱ 693.00',
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(shadows: [
                    Shadow(
                      color: appTheme.blackCustom,
                      offset: Offset(0, 2),
                      blurRadius: 2,
                    ),
                  ]),
                )),
          ],
        ),
        Container(
          height: 1.h,
          width: 36.h,
          color: appTheme.whiteCustom,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Bonus Claimed',
              style: TextStyleHelper.instance.body14Bold2,
            ),
            SizedBox(height: 4.h),
            Obx(() => Text(
                  controller
                          .userDashboardModel.value.totalBonusClaimed?.value ??
                      '₱ 1324.00',
                  style: TextStyleHelper.instance.headline24Black
                      .copyWith(shadows: [
                    Shadow(
                      color: appTheme.blackCustom,
                      offset: Offset(0, 2),
                      blurRadius: 2,
                    ),
                  ]),
                )),
          ],
        ),
      ],
    );
  }

  Widget _buildActionButtons() {
    return Row(
      children: [
        CustomButton(
          text: 'Withdrawal',
          iconPath: ImageConstant.imgVector11x16,
          onPressed: () => controller.onWithdrawalPressed(),
          backgroundColor: appTheme.colorFFFFC6,
          borderRadius: 18.h,
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
        ),
        SizedBox(width: 12.h),
        CustomButton(
          text: 'Deposit',
          iconPath: ImageConstant.imgVectorWhiteA70011x16,
          onPressed: () => controller.onDepositPressed(),
          backgroundColor: appTheme.colorFF76CD,
          borderRadius: 18.h,
          padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
        ),
      ],
    );
  }

  Widget _buildBonusCard() {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.91, 0),
          end: Alignment(0, 1),
          colors: [Color(0xFF478a03), appTheme.colorFF76CD, Color(0xFF478a03)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22.h),
          bottomLeft: Radius.circular(18.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.blackCustom,
            offset: Offset(0, 2),
            blurRadius: 3,
          ),
        ],
      ),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup839,
            height: 24.h,
            width: 24.h,
          ),
          SizedBox(height: 8.h),
          CustomImageView(
            imagePath: ImageConstant.imgStrokeWhiteA700,
            height: 7.h,
            width: 13.h,
          ),
        ],
      ),
    );
  }

  Widget _buildTeamsCenter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Teams center',
          style: TextStyleHelper.instance.title16Bold
              .copyWith(color: appTheme.whiteCustom, shadows: [
            Shadow(
              color: appTheme.blackCustom,
              offset: Offset(0, 2),
              blurRadius: 2,
            ),
          ]),
        ),
        SizedBox(height: 12.h),
        Container(
          padding: EdgeInsets.all(16.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h),
          ),
          child: Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  crossAxisSpacing: 16.h,
                  mainAxisSpacing: 16.h,
                ),
                itemCount: controller.teamsCenterItems.length,
                itemBuilder: (context, index) {
                  return TeamsCenterItemWidget(
                    teamsCenterItemModel: controller.teamsCenterItems[index],
                  );
                },
              )),
        ),
      ],
    );
  }

  Widget _buildPromotionalSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          Obx(() => ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.promotionalItems.length,
                separatorBuilder: (context, index) => Container(
                  height: 1.h,
                  color: appTheme.colorFF292F,
                ),
                itemBuilder: (context, index) {
                  return PromotionalItemWidget(
                    promotionalItemModel: controller.promotionalItems[index],
                    onTap: () => controller.onPromotionalItemTapped(index),
                  );
                },
              )),
          _buildGiftCodeSection(),
        ],
      ),
    );
  }

  Widget _buildGiftCodeSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.colorFF292F,
            width: 1.h,
          ),
        ),
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img236,
            height: 36.h,
            width: 36.h,
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Gift Code',
                  style: TextStyleHelper.instance.body12Bold2
                      .copyWith(color: appTheme.colorFF4B55),
                ),
                SizedBox(height: 4.h),
                CustomTextField(
                  hintText: 'Enter the gift code',
                  fillColor: appTheme.colorFF1B1C,
                  hintStyle: TextStyleHelper.instance.body14Bold2
                      .copyWith(color: appTheme.colorFF8089),
                  controller: controller.giftCodeController,
                ),
              ],
            ),
          ),
          SizedBox(width: 12.h),
          CustomButton(
            text: 'Exchange',
            onPressed: () => controller.onExchangePressed(),
            backgroundColor: appTheme.colorFF363C,
            borderRadius: 17.h,
            padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.h),
          ),
        ],
      ),
    );
  }

  Widget _buildSettingsMenu() {
    return Container(
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
                settingsMenuItemModel: controller.settingsMenuItems[index],
                onTap: () => controller.onSettingsMenuItemTapped(index),
              );
            },
          )),
    );
  }

  Widget _buildCommunitySection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Join Our community',
            style: TextStyleHelper.instance.body12Bold2
                .copyWith(color: appTheme.colorFF8089),
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              GestureDetector(
                onTap: () => controller.onTelegramPressed(),
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup840,
                  height: 34.h,
                  width: 34.h,
                ),
              ),
              SizedBox(width: 16.h),
              GestureDetector(
                onTap: () => controller.onFacebookPressed(),
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
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .imgD62a6059252dd42a1fed252c093b5bb5c8eab854115x30,
                height: 15.h,
                width: 30.h,
              ),
              SizedBox(width: 12.h),
              Text(
                'English',
                style: TextStyleHelper.instance.body12Bold2
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPolygon22,
            height: 10.h,
            width: 8.h,
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingInviteButton() {
    return Positioned(
      bottom: 80.h,
      left: MediaQuery.of(Get.context!).size.width / 2 - 25.h,
      child: GestureDetector(
        onTap: () => controller.onFloatingInvitePressed(),
        child: Container(
          padding: EdgeInsets.all(4.h),
          decoration: BoxDecoration(
            color: appTheme.colorFF242A,
            borderRadius: BorderRadius.circular(28.h),
          ),
          child: Stack(
            children: [
              Container(
                padding: EdgeInsets.all(12.h),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(1.56, 0),
                    end: Alignment(0, 1),
                    colors: [
                      Color(0xFFadf835),
                      appTheme.colorFF83CF,
                      Color(0xFF3c7a0b)
                    ],
                  ),
                  borderRadius: BorderRadius.circular(23.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF6199,
                      offset: Offset(-1, -4),
                      blurRadius: 4,
                    ),
                  ],
                ),
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
                bottom: 4.h,
                right: 4.h,
                child: Container(
                  height: 3.h,
                  width: 3.h,
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
                left: 4.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgUnion,
                  height: 8.h,
                  width: 33.h,
                ),
              ),
              Positioned(
                bottom: 8.h,
                left: 12.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img5,
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
}
