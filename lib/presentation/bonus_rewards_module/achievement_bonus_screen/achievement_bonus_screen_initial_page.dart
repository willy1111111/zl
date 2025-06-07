import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_tab_bar.dart';
import './controller/achievement_bonus_controller.dart';
import './widgets/bonus_table_widget.dart';

// Modified: Fixed import path

class AchievementBonusScreenInitialPage extends StatelessWidget {
  AchievementBonusScreenInitialPage({Key? key}) : super(key: key);

  AchievementBonusController controller = Get.put(AchievementBonusController());

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
          showStatusBar: true,
        ),
      ),
      body: Column(
        children: [
          _buildTabBar(),
          _buildFilterDropdowns(),
          SizedBox(height: 12.h),
          _buildBonusTable(),
          Spacer(),
          _buildTotalDepositSection(),
          SizedBox(height: 14.h),
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildTabBar() {
    return CustomTabBar(
      tabItems: [
        CustomTabItem(
          iconPath: ImageConstant.imgFrame,
          label: 'invite',
          routeName: AppRoutes.qualifiedBonusScreen,
        ),
        CustomTabItem(
          iconPath: ImageConstant.imgFrameBlueGray40020x20,
          label: 'Achievement',
          routeName: AppRoutes.achievementBonusScreen,
        ),
        CustomTabItem(
          iconPath: ImageConstant.imgFrame20x20,
          label: 'Teams',
          routeName: AppRoutes.registrationBonusScreen,
        ),
        CustomTabItem(
          iconPath: ImageConstant.imgFrameBlueGray400,
          label: 'Incomes',
          routeName: AppRoutes.casinoGamingHubScreen,
        ),
        CustomTabItem(
          iconPath: ImageConstant.imgGroup1321314646,
          label: 'bonus',
          routeName: AppRoutes.achievementBonusScreen,
        ),
        CustomTabItem(
          iconPath: ImageConstant.imgFrame1,
          label: 'FAQ',
          routeName: AppRoutes.gamingHomeScreen,
        ),
      ],
      selectedIndex: 4,
      onTabChanged: (index) {
        controller.changeTab(index);
      },
    );
  }

  Widget _buildFilterDropdowns() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.h),
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
                    blurRadius: 4.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Text(
                      'Achievement Bonus',
                      style: TextStyleHelper.instance.body13Bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPolygon1,
                      height: 11.h,
                      width: 13.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Expanded(
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
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
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVectorBlueGray400,
                      height: 17.h,
                      width: 16.h,
                    ),
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
        ],
      ),
    );
  }

  Widget _buildBonusTable() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      height: 200.h,
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.colorFF2528),
        borderRadius: BorderRadius.circular(5.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          Expanded(
            child: Obx(() => ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: controller.bonusRecords.length,
                  itemBuilder: (context, index) {
                    return BonusTableWidget(
                      bonusRecord: controller.bonusRecords[index],
                      index: index,
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF61AC,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(5.h),
          topRight: Radius.circular(5.h),
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 116.h,
            child: Center(
              child: Text(
                'Date',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
          Container(
            width: 1.h,
            height: 40.h,
            color: appTheme.whiteCustom,
          ),
          Container(
            width: 115.h,
            child: Center(
              child: Text(
                'ranking',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
          Container(
            width: 1.h,
            height: 40.h,
            color: appTheme.whiteCustom,
          ),
          Container(
            width: 114.h,
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

  Widget _buildTotalDepositSection() {
    return Container(
      width: double.maxFinite,
      height: 74.h,
      color: appTheme.colorFF2E32,
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Total Deposit Rebate',
            style: TextStyleHelper.instance.body14Bold
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 4.h),
          Text(
            '₱ 333,333.00',
            style: TextStyleHelper.instance.title20Bold,
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Container(
      width: 57.h,
      height: 56.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF242A,
        borderRadius: BorderRadius.circular(28.h),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 5.h,
            left: 3.h,
            child: Container(
              width: 48.h,
              height: 46.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.156, 0),
                  end: Alignment(1, 1),
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
                    blurRadius: 4.h,
                    offset: Offset(-1.h, -4.h),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Center(
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 27.h,
                      width: 25.h,
                    ),
                  ),
                  Positioned(
                    bottom: 14.h,
                    left: 0,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSubtract,
                      height: 43.h,
                      width: 14.h,
                    ),
                  ),
                  Positioned(
                    top: 32.h,
                    right: 8.h,
                    child: Container(
                      width: 3.h,
                      height: 3.h,
                      decoration: BoxDecoration(
                        color: appTheme.whiteCustom,
                        borderRadius: BorderRadius.circular(1.h),
                      ),
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
    );
  }
}
