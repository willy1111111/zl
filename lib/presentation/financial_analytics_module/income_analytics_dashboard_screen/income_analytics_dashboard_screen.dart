import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_income_display.dart';
import './controller/income_analytics_dashboard_controller.dart';
import './widgets/chart_legend_item_widget.dart';
import './widgets/income_category_item_widget.dart';
import './widgets/tab_item_widget.dart';

class IncomeAnalyticsDashboardScreen extends StatelessWidget {
  IncomeAnalyticsDashboardScreen({Key? key}) : super(key: key);

  final IncomeAnalyticsDashboardController controller =
      Get.put(IncomeAnalyticsDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.h),
        child: CustomAppBar(
          logoImagePath: ImageConstant.imgLogowj931,
          currencyAmount: '₱1980.00',
          walletIconPath: ImageConstant.imgGroup736,
          batteryIconPath: ImageConstant.img1LightGreenA700,
        ),
      ),
      body: Column(
        children: [
          _buildTabNavigation(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  _buildFilterSection(),
                  _buildMainIncomeCard(),
                  _buildDateRangeSelector(),
                  _buildTotalIncomeHeader(),
                  _buildIncomeCategoriesList(),
                  _buildChartSection(),
                  _buildChartLegend(),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildTabNavigation() {
    return Container(
      height: 54.h,
      color: appTheme.colorFF1012,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          TabItemWidget(
            iconPath: ImageConstant.imgFrameBlueGray400,
            title: 'invite',
            isActive: false,
          ),
          TabItemWidget(
            iconPath: ImageConstant.imgFrameBlueGray40020x20,
            title: 'Achievement',
            isActive: false,
          ),
          TabItemWidget(
            iconPath: ImageConstant.imgFrame20x20,
            title: 'Teams',
            isActive: false,
          ),
          TabItemWidget(
            iconPath: ImageConstant.imgFrameLightGreenA700,
            title: 'Incomes',
            isActive: true,
          ),
          TabItemWidget(
            iconPath: ImageConstant.imgGroup1321314646,
            title: 'bonus',
            isActive: false,
          ),
          TabItemWidget(
            iconPath: ImageConstant.imgFrame1,
            title: 'FAQ',
            isActive: false,
          ),
        ],
      ),
    );
  }

  Widget _buildFilterSection() {
    return Container(
      color: appTheme.colorFF1A1C,
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'All',
                  backgroundColor: appTheme.colorFF3236,
                  textColor: appTheme.colorFFABB6,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  height: 40.h,
                ),
              ),
              SizedBox(width: 8.h),
              Expanded(
                child: CustomButton(
                  text: 'today',
                  backgroundColor: appTheme.colorFF3236,
                  textColor: appTheme.colorFFABB6,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  height: 40.h,
                ),
              ),
              SizedBox(width: 8.h),
              Expanded(
                child: CustomButton(
                  text: 'Yesterday',
                  backgroundColor: appTheme.colorFF3236,
                  textColor: appTheme.colorFFABB6,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  height: 40.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: '7-Days',
                  backgroundColor: appTheme.colorFF3236,
                  textColor: appTheme.colorFFABB6,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  height: 40.h,
                ),
              ),
              SizedBox(width: 8.h),
              Expanded(
                child: CustomButton(
                  text: '15-Days',
                  backgroundColor: appTheme.colorFF3236,
                  textColor: appTheme.colorFFABB6,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  height: 40.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'Gustomize:',
            style: TextStyleHelper.instance.body14Bold,
          ),
          SizedBox(height: 8.h),
          GestureDetector(
            onTap: () => controller.showCalendarModal(),
            child: Container(
              height: 40.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF3236,
                borderRadius: BorderRadius.circular(6.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '08/21/2024 - 08/27/2024',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFFABB6),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgVectorBlueGray40016x17,
                    height: 16.h,
                    width: 17.h,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainIncomeCard() {
    return Container(
      margin: EdgeInsets.all(16.h),
      height: 120.h,
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
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(color: appTheme.colorFFD8D9),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom.withAlpha(51),
            offset: Offset(0, 0),
            blurRadius: 4.h,
          ),
        ],
      ),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 120.h,
            width: double.infinity,
            fit: BoxFit.cover,
            radius: BorderRadius.circular(16.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup1321314615,
            height: 120.h,
            width: double.infinity,
          ),
          Positioned(
            top: 8.h,
            right: 8.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame,
              height: 30.h,
              width: 30.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total profit',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                SizedBox(height: 4.h),
                Text(
                  '₱ 10,111,000.00',
                  style: TextStyleHelper.instance.title20Bold,
                ),
                Spacer(),
                CustomIncomeDisplay(
                  todayLabel: 'Today\'s income',
                  todayAmount: '₱10.00',
                  yesterdayLabel: 'Yesterday\'s income',
                  yesterdayAmount: '₱10,000.00',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDateRangeSelector() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      height: 40.h,
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
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '2024/08/21 - 2024/08/27',
            style: TextStyleHelper.instance.body13Bold
                .copyWith(color: appTheme.colorFF8089),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgVectorBlueGray40016x17,
            height: 16.h,
            width: 17.h,
          ),
        ],
      ),
    );
  }

  Widget _buildTotalIncomeHeader() {
    return Container(
      margin: EdgeInsets.all(16.h),
      child: Row(
        children: [
          Container(
            height: 18.h,
            width: 18.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF85D4,
              borderRadius: BorderRadius.circular(9.h),
            ),
            child: Center(
              child: Text(
                '₱',
                style: TextStyleHelper.instance.body13Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
          ),
          SizedBox(width: 8.h),
          Text(
            'income',
            style: TextStyleHelper.instance.title20Bold,
          ),
          Spacer(),
          Text(
            '₱ 111,000.00',
            style: TextStyleHelper.instance.title16Bold
                .copyWith(color: appTheme.colorFF85D4),
          ),
        ],
      ),
    );
  }

  Widget _buildIncomeCategoriesList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(() => ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.incomeCategories.length,
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemBuilder: (context, index) {
              return IncomeCategoryItemWidget(
                incomeCategory: controller.incomeCategories[index],
              );
            },
          )),
    );
  }

  Widget _buildChartSection() {
    return Container(
      margin: EdgeInsets.all(16.h),
      height: 200.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWrapper,
            height: 200.h,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
          // Chart data points
          Positioned(
            top: 57.h,
            left: 66.h,
            child: Container(
              width: 5.h,
              height: 5.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                border: Border.all(color: appTheme.colorFF85D4),
                borderRadius: BorderRadius.circular(2.h),
              ),
            ),
          ),
          Positioned(
            top: 74.h,
            left: 108.h,
            child: Container(
              width: 5.h,
              height: 5.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                border: Border.all(color: appTheme.colorFF85D4),
                borderRadius: BorderRadius.circular(2.h),
              ),
            ),
          ),
          Positioned(
            top: 12.h,
            left: 155.h,
            child: Container(
              width: 5.h,
              height: 5.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                border: Border.all(color: appTheme.colorFF85D4),
                borderRadius: BorderRadius.circular(2.h),
              ),
            ),
          ),
          Positioned(
            top: 25.h,
            left: 199.h,
            child: Container(
              width: 5.h,
              height: 5.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                border: Border.all(color: appTheme.colorFF85D4),
                borderRadius: BorderRadius.circular(2.h),
              ),
            ),
          ),
          Positioned(
            top: 33.h,
            left: 242.h,
            child: Container(
              width: 5.h,
              height: 5.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                border: Border.all(color: appTheme.colorFF85D4),
                borderRadius: BorderRadius.circular(2.h),
              ),
            ),
          ),
          Positioned(
            top: -1.h,
            left: 289.h,
            child: Container(
              width: 5.h,
              height: 5.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                border: Border.all(color: appTheme.colorFF85D4),
                borderRadius: BorderRadius.circular(2.h),
              ),
            ),
          ),
          Positioned(
            top: 11.h,
            left: 334.h,
            child: Container(
              width: 5.h,
              height: 5.h,
              decoration: BoxDecoration(
                color: appTheme.whiteCustom,
                border: Border.all(color: appTheme.colorFF85D4),
                borderRadius: BorderRadius.circular(2.h),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChartLegend() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ChartLegendItemWidget(
            title: 'Registers',
            isActive: true,
          ),
          SizedBox(width: 16.h),
          ChartLegendItemWidget(
            title: 'deposits',
            isActive: false,
          ),
          SizedBox(width: 16.h),
          ChartLegendItemWidget(
            title: 'Qualifed Users',
            isActive: false,
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
      padding: EdgeInsets.all(1.h),
      child: Container(
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
              offset: Offset(-1.h, -4.h),
              blurRadius: 4.h,
            ),
          ],
        ),
        child: Stack(
          children: [
            Center(
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
              top: 32.h,
              right: 8.h,
              child: Container(
                width: 3.h,
                height: 3.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  borderRadius: BorderRadius.circular(1.5.h),
                  border: Border.all(color: appTheme.whiteCustom),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
