import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_tab_bar.dart';
import './controller/qualified_bonus_controller.dart';
import './widgets/bonus_table_row_widget.dart';

class QualifiedBonusScreen extends StatelessWidget {
  QualifiedBonusScreen({Key? key}) : super(key: key);

  final QualifiedBonusController controller =
      Get.put(QualifiedBonusController());

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
          backgroundColor: appTheme.colorFF1B1C,
        ),
      ),
      body: Column(
        children: [
          _buildNavigationTabs(),
          _buildFilterSection(),
          _buildBonusTable(),
          Spacer(),
          _buildTotalBonusSection(),
          _buildFloatingActionButton(),
        ],
      ),
    );
  }

  Widget _buildNavigationTabs() {
    return Container(
      width: double.infinity,
      height: 54.h,
      color: appTheme.colorFF1012,
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
        activeTextColor: appTheme.whiteCustom,
        inactiveTextColor: appTheme.colorFF8089,
        activeIndicatorColor: appTheme.colorFF85D4,
      ),
    );
  }

  Widget _buildFilterSection() {
    return Container(
      margin: EdgeInsets.only(top: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Container(
            width: 167.h,
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    'Qualified Bonus',
                    style: TextStyleHelper.instance.body13Bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgPolygon1,
                    width: 13.h,
                    height: 11.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 10.h),
          Container(
            width: 167.h,
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
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10.h, right: 9.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgVectorBlueGray400,
                    width: 16.h,
                    height: 17.h,
                  ),
                ),
                Text(
                  '08-21 - 08-27',
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
      margin: EdgeInsets.only(top: 12.h, left: 15.h, right: 15.h),
      decoration: BoxDecoration(
        border: Border.all(color: appTheme.colorFF2528),
        borderRadius: BorderRadius.circular(5.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          Obx(() => Column(
                children: controller.bonusData
                    .map((data) => BonusTableRowWidget(bonusData: data))
                    .toList(),
              )),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Row(
      children: [
        Container(
          width: 116.h,
          height: 40.h,
          color: appTheme.colorFF61AC,
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
          height: 40.h,
          color: appTheme.colorFF61AC,
          child: Center(
            child: Text(
              'Teams',
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
          height: 40.h,
          color: appTheme.colorFF61AC,
          child: Center(
            child: Text(
              'Bonus',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTotalBonusSection() {
    return Container(
      width: double.infinity,
      height: 74.h,
      color: appTheme.colorFF2E32,
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Qualified Bonus:',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(height: 1.h),
              Obx(() => Text(
                    controller.totalBonusAmount.value,
                    style: TextStyleHelper.instance.title20Bold,
                  )),
            ],
          ),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame14627,
                width: 10.h,
                height: 10.h,
              ),
              SizedBox(width: 4.h),
              Obx(() => Text(
                    controller.totalUsersText.value,
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.colorFF8089),
                  )),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton() {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 57.h,
            height: 56.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF242A,
              borderRadius: BorderRadius.circular(28.h),
            ),
          ),
          Container(
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
                    width: 25.h,
                    height: 27.h,
                  ),
                ),
                Positioned(
                  bottom: 5.h,
                  left: 0,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSubtract,
                    width: 43.h,
                    height: 14.h,
                  ),
                ),
                Positioned(
                  top: 32.h,
                  right: 7.h,
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
                  bottom: 5.h,
                  left: 0,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgSubtract14x43,
                    width: 43.h,
                    height: 14.h,
                  ),
                ),
                Positioned(
                  bottom: 5.h,
                  left: 0,
                  child: CustomImageView(
                    imagePath: ImageConstant.img,
                    width: 43.h,
                    height: 14.h,
                  ),
                ),
                Positioned(
                  bottom: 1.h,
                  left: 3.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgUnion,
                    width: 33.h,
                    height: 8.h,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 12.h,
            child: CustomImageView(
              imagePath: ImageConstant.img5,
              width: 45.h,
              height: 31.h,
            ),
          ),
        ],
      ),
    );
  }
}
