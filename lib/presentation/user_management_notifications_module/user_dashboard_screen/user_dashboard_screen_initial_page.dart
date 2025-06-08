import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import './controller/user_dashboard_controller.dart';
import './widgets/menu_option_item_widget.dart';
import './widgets/promotional_feature_item_widget.dart';
import './widgets/teams_center_item_widget.dart';

// Modified: Fixed import path

class UserDashboardScreenInitialPage extends StatelessWidget {
  UserDashboardScreenInitialPage({Key? key}) : super(key: key);

  UserDashboardController controller = Get.put(UserDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildStatusBar(),
            _buildMainContent(),
            _buildFloatingActionButton(),
          ],
        ),
      ),
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

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          _buildUserBalanceCard(),
          SizedBox(height: 16.h),
          _buildTeamsCenter(),
          SizedBox(height: 16.h),
          _buildPromotionalFeatures(),
          SizedBox(height: 16.h),
          _buildMenuOptions(),
          SizedBox(height: 16.h),
          _buildCommunitySection(),
          SizedBox(height: 16.h),
          _buildLanguageSelector(),
          SizedBox(height: 80.h),
        ],
      ),
    );
  }

  Widget _buildUserBalanceCard() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.33, 1.0),
          end: Alignment(0.0, 0.0),
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Opacity(
              opacity: 0.2,
              child: CustomImageView(
                imagePath: ImageConstant.img22,
                height: 163.h,
                width: 294.h,
              ),
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
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: appTheme.colorFF85D4),
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(16.h),
            child: Column(
              children: [
                _buildUserInfoSection(),
                SizedBox(height: 24.h),
                _buildBalanceSection(),
                SizedBox(height: 24.h),
                _buildActionButtons(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInfoSection() {
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
                      controller.userDashboardModel.value?.userName?.value ??
                          'User name',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFFE6E6),
                    )),
                Obx(() => Text(
                      controller.userDashboardModel.value?.userPhone?.value ??
                          '98955464616',
                      style: TextStyleHelper.instance.body14Black,
                    )),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
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
                  Obx(() => Text(
                        controller.userDashboardModel.value?.vipLevel?.value ??
                            'VIP 4',
                        style: TextStyleHelper.instance.body14Bold,
                      )),
                ],
              ),
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.img1BlueGray100,
              height: 10.h,
              width: 10.h,
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
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Balance',
                style: TextStyleHelper.instance.body14Bold,
              ),
              SizedBox(height: 4.h),
              Obx(() => Text(
                    controller.userDashboardModel.value?.totalBalance?.value ??
                        '₱ 693.00',
                    style: TextStyleHelper.instance.headline24Black,
                  )),
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
          flex: 3,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Bonus Claimed',
                style: TextStyleHelper.instance.body14Bold,
              ),
              SizedBox(height: 4.h),
              Obx(() => Text(
                    controller.userDashboardModel.value?.totalBonusClaimed
                            ?.value ??
                        '₱ 1324.00',
                    style: TextStyleHelper.instance.headline24Black,
                  )),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.91, 0.0),
              end: Alignment(0.0, 0.0),
              colors: [
                Color(0xFF478A03),
                appTheme.colorFF76CD,
                Color(0xFF478A03)
              ],
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(22.h),
              bottomRight: Radius.circular(18.h),
            ),
          ),
          padding: EdgeInsets.all(12.h),
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
                height: 13.h,
                width: 7.h,
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
        Expanded(
          child: CustomButton(
            text: 'Withdrawal',
            iconPath: ImageConstant.imgVectorWhiteA700,
            variant: CustomButtonVariant.gradient,
            backgroundColor: appTheme.colorFFFF9F,
            borderColor: Color(0xFFFFC000), // Modified: Fixed invalid color
            onPressed: () => controller.onWithdrawalPressed(),
          ),
        ),
        SizedBox(width: 12.h),
        Expanded(
          child: CustomButton(
            text: 'Deposit',
            iconPath: ImageConstant.imgVector,
            variant: CustomButtonVariant.gradient,
            backgroundColor: appTheme.colorFF478A,
            borderColor: appTheme.colorFF85D4,
            onPressed: () => controller.onDepositPressed(),
          ),
        ),
      ],
    );
  }

  Widget _buildTeamsCenter() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Teams center',
          style: TextStyleHelper.instance.title16Bold,
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

  Widget _buildPromotionalFeatures() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.promotionalFeatures.length,
            separatorBuilder: (context, index) => Container(
              height: 1.h,
              color: appTheme.colorFF292F,
            ),
            itemBuilder: (context, index) {
              return PromotionalFeatureItemWidget(
                promotionalFeatureItemModel:
                    controller.promotionalFeatures[index],
              );
            },
          )),
    );
  }

  Widget _buildMenuOptions() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.menuOptions.length,
            separatorBuilder: (context, index) => Container(
              height: 1.h,
              color: appTheme.colorFF282F,
            ),
            itemBuilder: (context, index) {
              return MenuOptionItemWidget(
                menuOptionItemModel: controller.menuOptions[index],
              );
            },
          )),
    );
  }

  Widget _buildCommunitySection() {
    return Container(
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
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup840,
                    height: 34.h,
                    width: 34.h,
                  ),
                  SizedBox(width: 16.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup1288,
                    height: 34.h,
                    width: 34.h,
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
        ],
      ),
    );
  }

  Widget _buildLanguageSelector() {
    return Container(
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
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.56, 0.0),
                end: Alignment(0.0, 0.0),
                colors: [
                  Color(0xFFADF835),
                  appTheme.colorFF83CF,
                  Color(0xFF3C7A0B)
                ],
              ),
              borderRadius: BorderRadius.circular(23.h),
            ),
            height: 48.h,
            width: 48.h,
            child: Stack(
              children: [
                Positioned(
                  top: 4.h,
                  left: 12.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVector25x27,
                    height: 25.h,
                    width: 27.h,
                  ),
                ),
                Positioned(
                  bottom: 8.h,
                  left: 0,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSubtract,
                    height: 14.h,
                    width: 43.h,
                  ),
                ),
                Positioned(
                  bottom: 12.h,
                  right: 8.h,
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
                  bottom: 8.h,
                  left: 0,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSubtract14x43,
                    height: 14.h,
                    width: 43.h,
                  ),
                ),
                Positioned(
                  bottom: 8.h,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
