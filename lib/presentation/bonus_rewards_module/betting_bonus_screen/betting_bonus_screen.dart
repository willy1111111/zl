import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_tab_bar.dart';
import './controller/betting_bonus_controller.dart';
import './widgets/bonus_table_row_widget.dart';

class BettingBonusScreen extends GetWidget<BettingBonusController> {
  const BettingBonusScreen({Key? key}) : super(key: key);

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
        ),
      ),
      body: Column(
        children: [
          _buildTabBar(),
          Expanded(
            child: Column(
              children: [
                _buildFilterSection(),
                _buildBonusTable(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        bottomBarItemList: controller.bottomBarItemList,
        selectedIndex: 2,
        onChanged: (index) {
          controller.onBottomNavChanged(index);
        },
      ),
      bottomSheet: _buildTotalBonusSection(),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildTabBar() {
    return CustomTabBar(
      tabItems: controller.tabItems,
      selectedIndex: 4,
      onTabChanged: (index) {
        controller.onTabChanged(index);
      },
    );
  }

  Widget _buildFilterSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 12.h),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(6.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Betting Bonus',
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
          SizedBox(width: 10.h),
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(6.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.blackCustom,
                  offset: Offset(0, 4.h),
                  blurRadius: 4.h,
                ),
              ],
            ),
            padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 11.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVectorBlueGray400,
                  height: 17.h,
                  width: 16.h,
                ),
                SizedBox(width: 9.h),
                Text(
                  '08-21  -  08-27',
                  style: TextStyleHelper.instance.body13Bold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusTable() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.colorFF2528),
        borderRadius: BorderRadius.circular(5.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          Obx(() => Column(
                children: List.generate(
                  controller.bonusTableRows.length,
                  (index) => BonusTableRowWidget(
                    bonusRow: controller.bonusTableRows[index],
                    isEven: index % 2 == 0,
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      height: 40.h,
      child: Row(
        children: [
          Container(
            width: 116.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF61AC,
            ),
            alignment: Alignment.center,
            child: Text(
              'Date',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Container(
            width: 1.h,
            height: 200.h,
            color: appTheme.whiteCustom,
          ),
          Container(
            width: 115.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF61AC,
            ),
            alignment: Alignment.center,
            child: Text(
              'Teams',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          Container(
            width: 1.h,
            height: 200.h,
            color: appTheme.whiteCustom,
          ),
          Container(
            width: 114.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF61AC,
            ),
            alignment: Alignment.center,
            child: Text(
              'Bonus',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTotalBonusSection() {
    return Container(
      height: 74.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: appTheme.colorFF2E32,
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Betting Bonus:',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              Text(
                '₱ 333,333.00',
                style: TextStyleHelper.instance.title20Bold,
              ),
            ],
          ),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame14627,
                height: 10.h,
                width: 10.h,
              ),
              SizedBox(width: 4.h),
              Text(
                'total users:10',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ],
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
            left: 4.5.h,
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
                      imagePath: ImageConstant.imgVector,
                      height: 27.h,
                      width: 25.h,
                    ),
                  ),
                  Positioned(
                    bottom: 0.h,
                    left: 0.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSubtract,
                      height: 14.h,
                      width: 43.h,
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
