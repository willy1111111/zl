import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/income_dashboard_screen_three_controller.dart';

class IncomeDashboardScreenThree extends StatelessWidget {
  IncomeDashboardScreenThree({Key? key}) : super(key: key);

  final IncomeDashboardScreenThreeController controller =
      Get.put(IncomeDashboardScreenThreeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            _buildTabNavigation(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Column(
                    children: [
                      _buildIncomeSummaryCard(),
                      SizedBox(height: 16.h),
                      _buildDateRangeSelector(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: _buildFloatingBonusButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: _buildBottomNavigation(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      logoImagePath: ImageConstant.imgLogowj931,
      currencyAmount: '₱1980.00',
      walletIconPath: ImageConstant.imgGroup736,
      batteryIconPath: ImageConstant.img1LightGreenA700,
      showStatusBar: true,
      statusBarImagePath: ImageConstant.img1Black900,
    );
  }

  Widget _buildTabNavigation() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1012,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTabItem(
            iconPath: ImageConstant.imgFrameBlueGray400,
            label: 'invite',
            isActive: false,
          ),
          _buildTabItem(
            iconPath: ImageConstant.imgFrameBlueGray40020x20,
            label: 'Achievement',
            isActive: false,
          ),
          _buildTabItem(
            iconPath: ImageConstant.imgFrame20x20,
            label: 'Teams',
            isActive: false,
          ),
          _buildTabItem(
            iconPath: ImageConstant.imgFrameLightGreenA700,
            label: 'Incomes',
            isActive: true,
          ),
          _buildTabItem(
            iconPath: ImageConstant.imgGroup1321314646,
            label: 'bonus',
            isActive: false,
          ),
          _buildTabItem(
            iconPath: ImageConstant.imgFrame1,
            label: 'FAQ',
            isActive: false,
          ),
        ],
      ),
    );
  }

  Widget _buildTabItem({
    required String iconPath,
    required String label,
    required bool isActive,
  }) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomImageView(
          imagePath: iconPath,
          height: 20.h,
          width: 20.h,
        ),
        SizedBox(height: 4.h),
        Text(
          label,
          style: TextStyleHelper.instance.body12RegularArial.copyWith(
              color: isActive ? appTheme.whiteCustom : appTheme.colorFF8089),
        ),
        if (isActive)
          Container(
            margin: EdgeInsets.only(top: 4.h),
            height: 2.h,
            width: 36.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF85D4,
              borderRadius: BorderRadius.circular(1.h),
            ),
          ),
      ],
    );
  }

  Widget _buildIncomeSummaryCard() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(24.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xFFD8D908),
            appTheme.colorFF2FA0,
            appTheme.colorFF009E,
          ],
          stops: [0.0, 0.5, 1.0],
        ),
        border: Border.all(color: appTheme.colorFFD8D9),
        borderRadius: BorderRadius.circular(16.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom.withAlpha(51),
            blurRadius: 4.h,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1321314615,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total profit',
                        style: TextStyleHelper.instance.body12BoldArial,
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '₱ 10,111,000.00',
                        style: TextStyleHelper.instance.title20BoldArial
                            .copyWith(height: 1.15),
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame,
                    height: 30.h,
                    width: 30.h,
                  ),
                ],
              ),
              SizedBox(height: 32.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today\'s income',
                        style: TextStyleHelper.instance.body12RegularArial
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '₱10.00',
                        style: TextStyleHelper.instance.title16BoldArial
                            .copyWith(height: 1.19),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yesterday\'s income',
                        style: TextStyleHelper.instance.body12RegularArial
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '₱10,000.00',
                        style: TextStyleHelper.instance.title16BoldArial
                            .copyWith(height: 1.19),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDateRangeSelector() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(12.h),
            decoration: BoxDecoration(
              color: appTheme.colorFF3236,
              borderRadius: BorderRadius.circular(6.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.blackCustom,
                  blurRadius: 4.h,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '2024/08/21 - 2024/08/27',
                  style: TextStyleHelper.instance.body13BoldArial
                      .copyWith(height: 1.15),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray40016x17,
                  height: 16.h,
                  width: 17.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 64.h),
          CustomImageView(
            imagePath: ImageConstant.imgImage561,
            height: 43.h,
            width: 43.h,
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingBonusButton() {
    return Container(
      padding: EdgeInsets.all(4.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF242A,
        borderRadius: BorderRadius.circular(28.h),
      ),
      child: Container(
        padding: EdgeInsets.all(12.h),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(1.0, 1.0),
            colors: [
              Color(0xFFADF835),
              appTheme.colorFF83CF,
              appTheme.colorFF3C7A,
            ],
            stops: [0.0, 0.5, 1.0],
          ),
          borderRadius: BorderRadius.circular(23.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF6199,
              blurRadius: 4.h,
              offset: Offset(-1.h, -4.h),
            ),
          ],
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVector25x27,
              height: 25.h,
              width: 27.h,
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
                imagePath: ImageConstant.img,
                height: 14.h,
                width: 43.h,
              ),
            ),
            Positioned(
              bottom: 4.h,
              left: 4.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgUnion8x33,
                height: 8.h,
                width: 33.h,
              ),
            ),
            Positioned(
              top: 32.h,
              right: 38.h,
              child: Container(
                height: 3.h,
                width: 3.h,
                decoration: BoxDecoration(
                  border: Border.all(color: appTheme.whiteCustom),
                  borderRadius: BorderRadius.circular(1.h),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
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

  Widget _buildBottomNavigation() {
    return CustomBottomBar(
      bottomBarItemList: [
        CustomBottomBarItem(
          title: 'Home',
          iconPath: ImageConstant.imgGroup13007,
          routeName: AppRoutes
              .teamsDashboardScreen, // Modified: Added required routeName parameter
        ),
        CustomBottomBarItem(
          title: 'Deposit',
          iconPath: ImageConstant.imgGroup13004,
          routeName: AppRoutes
              .teamsDashboardScreen, // Modified: Added required routeName parameter
        ),
        CustomBottomBarItem(
          title: 'Invite',
          routeName: AppRoutes
              .incomeDashboardScreenThree, // Modified: Added required routeName parameter
        ),
        CustomBottomBarItem(
          title: 'Promotion',
          iconPath: ImageConstant.imgGroup13067,
          routeName: AppRoutes
              .teamsDashboardScreen, // Modified: Added required routeName parameter
        ),
        CustomBottomBarItem(
          title: 'Teams',
          iconPath: ImageConstant.imgGroup13046,
          routeName: AppRoutes
              .teamsDashboardScreen, // Modified: Added required routeName parameter
        ),
      ],
      onChanged: (index) {
        controller.onBottomNavTap(index);
      },
      selectedIndex: 2,
    );
  }
}
