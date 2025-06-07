import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_tab_bar.dart';
import './controller/bonus_dashboard_controller.dart';

class BonusDashboardScreen extends GetWidget<BonusDashboardController> {
  const BonusDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.colorFF1E20,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(68.h),
            child: CustomAppBar(
                height: 68.h,
                logoPath: ImageConstant.imgLogowj931,
                balance: '1980.00',
                currency: '₱',
                showStatusBar: true,
                backgroundColor: appTheme.colorFF1B1C)),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              _buildTabSection(),
              _buildFilterControls(),
              _buildMainContent(),
              _buildTotalDepositRebateCard(),
            ])),
        bottomNavigationBar: _buildBottomNavigation(),
        floatingActionButton: _buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat);
  }

  Widget _buildTabSection() {
    return CustomTabBar(
        tabItems: [
          CustomTabItem(
              iconPath: ImageConstant.imgFrame,
              label: 'invite',
              routeName: AppRoutes.achievementBonusScreen),
          CustomTabItem(
              iconPath: ImageConstant.imgFrameBlueGray40020x20,
              label: 'Achievement',
              routeName: AppRoutes.achievementBonusScreen),
          CustomTabItem(
              iconPath: ImageConstant.imgFrame20x20,
              label: 'Teams',
              routeName: AppRoutes.achievementBonusScreen),
          CustomTabItem(
              iconPath: ImageConstant.imgFrameBlueGray400,
              label: 'Incomes',
              routeName: AppRoutes.achievementBonusScreen),
          CustomTabItem(
              iconPath: ImageConstant.imgGroup1321314646,
              label: 'bonus',
              routeName: AppRoutes.bonusDashboardScreen),
          CustomTabItem(
              iconPath: ImageConstant.imgFrame1,
              label: 'FAQ',
              routeName: AppRoutes.achievementBonusScreen),
        ],
        selectedIndex: 4,
        onTabChanged: (index) {
          controller.onTabChanged(index);
        },
        height: 54.h,
        backgroundColor: appTheme.colorFF1012,
        activeTextColor: appTheme.whiteCustom,
        inactiveTextColor: appTheme.colorFF8089,
        activeIndicatorColor: appTheme.colorFF85D4);
  }

  Widget _buildFilterControls() {
    return Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(left: 15.h, top: 12.h, right: 15.h),
        child: Row(children: [
          Expanded(
              child: GestureDetector(
                  onTap: () => controller.onDepositRebateDropdownTap(),
                  child: Container(
                      height: 40.h,
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      decoration: BoxDecoration(
                          color: appTheme.colorFF2528,
                          borderRadius: BorderRadius.circular(6.h),
                          boxShadow: [
                            BoxShadow(
                                color: appTheme.blackCustom,
                                offset: Offset(0, 4),
                                blurRadius: 4.h),
                          ]),
                      child: Row(children: [
                        Expanded(
                            child: Text('Deposit Rebate',
                                style:
                                    TextStyleHelper.instance.body13BoldArial)),
                        CustomImageView(
                            imagePath: ImageConstant.imgPolygon1,
                            height: 11.h,
                            width: 13.h),
                      ])))),
          SizedBox(width: 10.h),
          Expanded(
              child: GestureDetector(
                  onTap: () => controller.onDateRangeTap(),
                  child: Container(
                      height: 40.h,
                      padding: EdgeInsets.symmetric(horizontal: 10.h),
                      decoration: BoxDecoration(
                          color: appTheme.colorFF2528,
                          borderRadius: BorderRadius.circular(6.h),
                          boxShadow: [
                            BoxShadow(
                                color: appTheme.blackCustom,
                                offset: Offset(0, 4),
                                blurRadius: 4.h),
                          ]),
                      child: Row(children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgVectorBlueGray400,
                            height: 16.h,
                            width: 17.h),
                        SizedBox(width: 9.h),
                        Expanded(
                            child: Obx(() => Text(
                                controller.selectedDateRange!.value ??
                                    '08-21  -  08-27',
                                style:
                                    TextStyleHelper.instance.body13BoldArial))),
                      ])))),
        ]));
  }

  Widget _buildMainContent() {
    return Expanded(
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 40.h),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgGroup278,
                  height: 184.h,
                  width: 240.h),
              SizedBox(height: 8.h),
              Text('No data',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.colorFF8089)),
            ])));
  }

  Widget _buildTotalDepositRebateCard() {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.h),
        decoration: BoxDecoration(color: appTheme.colorFF2E32),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text('Total Deposit Rebate',
              style: TextStyleHelper.instance.body14BoldArial),
          SizedBox(height: 1.h),
          Obx(() => Text(controller.totalDepositRebate!.value ?? '₱ 333,333.00',
              style: TextStyleHelper.instance.title20BoldArial)),
        ]));
  }

  Widget _buildBottomNavigation() {
    return CustomBottomNavigationBar(
        bottomBarItemList: [
          CustomBottomNavItem(
              title: 'Home',
              routeName: AppRoutes.gamingHomeScreen,
              iconPath: ImageConstant.imgGroup13007),
          CustomBottomNavItem(
              title: 'Deposit',
              routeName: AppRoutes.depositBonusHistoryScreen,
              iconPath: ImageConstant.imgGroup13004),
          CustomBottomNavItem(
              title: 'Invite',
              routeName: AppRoutes.qualifiedBonusScreen,
              iconPath: ''),
          CustomBottomNavItem(
              title: 'Promotion',
              routeName: AppRoutes.registrationBonusScreen,
              iconPath: ImageConstant.imgGroup13067),
          CustomBottomNavItem(
              title: 'Teams',
              routeName: AppRoutes.casinoGamingHubScreen,
              iconPath: ImageConstant.imgGroup13046),
        ],
        selectedIndex: 2,
        onChanged: (index) {
          controller.onBottomNavChanged(index);
        },
        height: 64.h,
        backgroundColor: appTheme.colorFF232B,
        hasFloatingInvite: true);
  }

  Widget _buildFloatingActionButton() {
    return Container(
        width: 57.h,
        height: 56.h,
        decoration: BoxDecoration(
            color: appTheme.colorFF242A,
            borderRadius: BorderRadius.circular(28.h)),
        child: Stack(children: [
          Positioned(
              left: 3.h,
              top: 5.h,
              child: Container(
                  width: 48.h,
                  height: 46.h,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFADF835),
                            appTheme.colorFF83CF,
                            appTheme.colorFF3C7A,
                          ]),
                      borderRadius: BorderRadius.circular(23.h),
                      boxShadow: [
                        BoxShadow(
                            color: appTheme.colorFF6199,
                            offset: Offset(-1, -4),
                            blurRadius: 4.h),
                      ]),
                  child: Stack(children: [
                    Center(
                        child: CustomImageView(
                            imagePath: ImageConstant.imgVector,
                            height: 25.h,
                            width: 27.h)),
                    Positioned(
                        left: 0,
                        top: 22.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgSubtract,
                            height: 14.h,
                            width: 43.h)),
                    Positioned(
                        left: 38.h,
                        top: 27.h,
                        child: Container(
                            width: 3.h,
                            height: 3.h,
                            decoration: BoxDecoration(
                                border: Border.all(color: appTheme.whiteCustom),
                                borderRadius: BorderRadius.circular(1.h)))),
                    Positioned(
                        left: 0,
                        top: 22.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgSubtract14x43,
                            height: 14.h,
                            width: 43.h)),
                    Positioned(
                        left: 0,
                        top: 22.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.img,
                            height: 14.h,
                            width: 43.h)),
                    Positioned(
                        left: 3.h,
                        top: 26.h,
                        child: CustomImageView(
                            imagePath: ImageConstant.imgUnion,
                            height: 8.h,
                            width: 33.h)),
                  ]))),
          Positioned(
              left: 11.h,
              top: 23.h,
              child: CustomImageView(
                  imagePath: ImageConstant.img5, height: 31.h, width: 45.h)),
        ]));
  }
}
