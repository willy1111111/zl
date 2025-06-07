import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_tab_bar.dart';
import './controller/deposit_bonus_history_controller.dart';
import './widgets/bonus_history_table_row_widget.dart';

class DepositBonusHistoryScreen
    extends GetWidget<DepositBonusHistoryController> {
  DepositBonusHistoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.h),
        child: CustomAppBar(
          logoPath: ImageConstant.imgLogowj931,
          balance: '1980.00',
          currency: '₱',
          height: 68.h,
          backgroundColor: appTheme.colorFF1B1C,
        ),
      ),
      body: Column(
        children: [
          _buildTabSection(),
          _buildFilterSection(),
          _buildTableSection(),
          _buildTotalSummarySection(),
        ],
      ),
      floatingActionButton: _buildFloatingBonusButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildTabSection() {
    return Container(
      height: 54.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1012,
      ),
      child: CustomTabBar(
        tabItems: [
          CustomTabItem(
            iconPath: ImageConstant.imgFrame,
            label: 'invite',
            routeName: '/invite',
          ),
          CustomTabItem(
            iconPath: ImageConstant.imgFrameBlueGray40020x20,
            label: 'Achievement',
            routeName: '/achievement',
          ),
          CustomTabItem(
            iconPath: ImageConstant.imgFrame20x20,
            label: 'Teams',
            routeName: '/teams',
          ),
          CustomTabItem(
            iconPath: ImageConstant.imgFrameBlueGray400,
            label: 'Incomes',
            routeName: '/incomes',
          ),
          CustomTabItem(
            iconPath: ImageConstant.imgGroup1321314646,
            label: 'bonus',
            routeName: '/bonus',
          ),
          CustomTabItem(
            iconPath: ImageConstant.imgFrame1,
            label: 'FAQ',
            routeName: '/faq',
          ),
        ],
        selectedIndex: 4,
        onTabChanged: (index) {
          controller.onTabChanged(index);
        },
        backgroundColor: appTheme.colorFF1012,
        activeTextColor: appTheme.whiteCustom,
        inactiveTextColor: appTheme.colorFF8089,
        activeIndicatorColor: appTheme.colorFF85D4,
        height: 54.h,
        padding: 16.h,
      ),
    );
  }

  Widget _buildFilterSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(6.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Deposit Bonus',
                      style: TextStyleHelper.instance.body13Bold,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgPolygon1,
                      height: 11.h,
                      width: 13.h,
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(6.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 4),
                    blurRadius: 4,
                  ),
                ],
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgVectorBlueGray400,
                      height: 16.h,
                      width: 17.h,
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      '08-21 - 08-27',
                      style: TextStyleHelper.instance.body13Bold,
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

  Widget _buildTableSection() {
    return Expanded(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 16.h),
        decoration: BoxDecoration(
          border: Border.all(color: appTheme.colorFF2528),
          borderRadius: BorderRadius.circular(5.h),
        ),
        child: Column(
          children: [
            _buildTableHeader(),
            Expanded(
              child: Obx(() {
                return ListView.builder(
                  itemCount: controller.bonusHistoryItems.length,
                  itemBuilder: (context, index) {
                    return BonusHistoryTableRowWidget(
                      bonusHistoryItem: controller.bonusHistoryItems[index],
                      isEvenRow: index % 2 == 0,
                    );
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF61AC,
      ),
      child: Row(
        children: [
          Container(
            width: 112.h,
            height: 40.h,
            child: Center(
              child: Text(
                'Date',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
          Container(width: 1.h, height: 40.h, color: appTheme.whiteCustom),
          Container(
            width: 78.h,
            height: 40.h,
            child: Center(
              child: Text(
                'Teams',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
          Container(width: 1.h, height: 40.h, color: appTheme.whiteCustom),
          Container(
            width: 78.h,
            height: 40.h,
            child: Center(
              child: Text(
                'Deposit amount',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
          Container(width: 1.h, height: 40.h, color: appTheme.whiteCustom),
          Container(
            width: 78.h,
            height: 40.h,
            child: Center(
              child: Text(
                'Bonus',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalSummarySection() {
    return Container(
      height: 74.h,
      color: appTheme.colorFF2E32,
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Deposit Bonus:',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              Obx(() {
                return Text(
                  '₱ ${controller.totalDepositBonus.value}',
                  style: TextStyleHelper.instance.title20Bold,
                );
              }),
            ],
          ),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame14627,
                height: 10.h,
                width: 10.h,
              ),
              SizedBox(width: 8.h),
              Obx(() {
                return Text(
                  'total users:${controller.totalUsers.value}',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF8089),
                );
              }),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingBonusButton() {
    return Container(
      width: 57.h,
      height: 56.h,
      margin: EdgeInsets.only(bottom: 64.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF242A,
        borderRadius: BorderRadius.circular(28.h),
      ),
      child: Center(
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
          child: Stack(
            children: [
              Positioned(
                top: 5.h,
                left: 12.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector,
                  height: 25.h,
                  width: 27.h,
                ),
              ),
              Positioned(
                bottom: 19.h,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSubtract,
                  height: 14.h,
                  width: 43.h,
                ),
              ),
              Positioned(
                bottom: 14.h,
                right: 10.h,
                child: Container(
                  width: 3.h,
                  height: 3.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteCustom,
                    borderRadius: BorderRadius.circular(1.h),
                  ),
                ),
              ),
              Positioned(
                bottom: 19.h,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSubtract14x43,
                  height: 14.h,
                  width: 43.h,
                ),
              ),
              Positioned(
                bottom: 19.h,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.img,
                  height: 14.h,
                  width: 43.h,
                ),
              ),
              Positioned(
                bottom: 15.h,
                left: 3.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgUnion,
                  height: 8.h,
                  width: 33.h,
                ),
              ),
              Positioned(
                bottom: 11.h,
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
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return CustomBottomNavigationBar(
      bottomBarItemList: [
        CustomBottomNavItem(
          title: 'Home',
          routeName: AppRoutes.gamingHomeScreen,
          iconPath: ImageConstant.imgGroup13007,
        ),
        CustomBottomNavItem(
          title: 'Deposit',
          routeName: '/deposit',
          iconPath: ImageConstant.imgGroup13004,
        ),
        CustomBottomNavItem(
          title: 'Invite',
          routeName: '/invite',
          iconPath: '',
        ),
        CustomBottomNavItem(
          title: 'Promotion',
          routeName: '/promotion',
          iconPath: ImageConstant.imgGroup13067,
        ),
        CustomBottomNavItem(
          title: 'Teams',
          routeName: '/teams',
          iconPath: ImageConstant.imgGroup13046,
        ),
      ],
      selectedIndex: 2,
      onChanged: (index) {
        controller.onBottomNavChanged(index);
      },
      hasFloatingInvite: true,
      backgroundColor: appTheme.colorFF232B,
    );
  }
}
