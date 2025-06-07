import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/income_dashboard_screen_two_controller.dart';
import './widgets/bonus_item_widget.dart';

class IncomeDashboardScreenTwo extends StatelessWidget {
  IncomeDashboardScreenTwo({Key? key}) : super(key: key);

  final IncomeDashboardScreenTwoController controller =
      Get.put(IncomeDashboardScreenTwoController());

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              _buildNavigationTabs(),
              SizedBox(height: 16.h),
              _buildTotalProfitCard(),
              SizedBox(height: 16.h),
              _buildIncomeSection(),
              SizedBox(height: 120.h),
            ],
          ),
        ),
      ),
      floatingActionButton: _buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  Widget _buildNavigationTabs() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF1012,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTabItem(ImageConstant.imgFrameBlueGray400, 'invite', false),
          _buildTabItem(
              ImageConstant.imgFrameBlueGray40020x20, 'Achievement', false),
          _buildTabItem(ImageConstant.imgFrame20x20, 'Teams', false),
          _buildTabItem(ImageConstant.imgFrameLightGreenA700, 'Incomes', true),
          _buildTabItem(ImageConstant.imgGroup1321314646, 'bonus', false),
          _buildTabItem(ImageConstant.imgFrame1, 'FAQ', false),
        ],
      ),
    );
  }

  Widget _buildTabItem(String iconPath, String label, bool isActive) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: iconPath,
                height: 20.h,
                width: 20.h,
              ),
              SizedBox(height: 4.h),
              Text(
                label,
                style: TextStyleHelper.instance.body12Regular.copyWith(
                    color:
                        isActive ? appTheme.whiteCustom : appTheme.colorFF8089),
              ),
            ],
          ),
        ),
        if (isActive)
          Container(
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

  Widget _buildTotalProfitCard() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFFD8D908), appTheme.colorFF2FA0, Color(0xFF009E41)],
        ),
        border: Border.all(color: appTheme.colorFFD8D9),
        borderRadius: BorderRadius.circular(16.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.whiteCustom.withAlpha(77),
            blurRadius: 4.h,
            spreadRadius: 0,
          ),
        ],
      ),
      padding: EdgeInsets.all(24.h),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup1321314615,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 0,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgFrame,
              height: 30.h,
              width: 30.h,
            ),
          ),
          Column(
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
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today\'s income',
                        style: TextStyleHelper.instance.body12Regular
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '₱10.00',
                        style: TextStyleHelper.instance.title16Bold,
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Yesterday\'s income',
                        style: TextStyleHelper.instance.body12Regular
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '₱10,000.00',
                        style: TextStyleHelper.instance.title16Bold,
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

  Widget _buildIncomeSection() {
    return Container(
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
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildDateFilter(),
          SizedBox(height: 16.h),
          _buildIncomeHeader(),
          SizedBox(height: 24.h),
          _buildBonusList(),
          SizedBox(height: 24.h),
          _buildFilterTabs(),
          SizedBox(height: 24.h),
          _buildChartSection(),
        ],
      ),
    );
  }

  Widget _buildDateFilter() {
    return Container(
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
      padding: EdgeInsets.all(12.h),
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

  Widget _buildIncomeHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
            SizedBox(width: 12.h),
            Text(
              'income',
              style: TextStyleHelper.instance.title20Bold,
            ),
          ],
        ),
        Text(
          '₱ 111,000.00',
          style: TextStyleHelper.instance.title16Bold
              .copyWith(color: appTheme.colorFF85D4),
        ),
      ],
    );
  }

  Widget _buildBonusList() {
    return Obx(() => Column(
          children: controller.bonusItems.value
              .map((item) => Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: BonusItemWidget(bonusItem: item),
                  ))
              .toList(),
        ));
  }

  Widget _buildFilterTabs() {
    return Row(
      children: [
        CustomButton(
          text: 'Registers',
          backgroundColor: appTheme.colorFF85D4,
          textColor: appTheme.colorFF85D4,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          borderRadius: 4,
          hasShadow: true,
          shadowColor: appTheme.colorFF8888,
          onPressed: () => controller.selectFilterTab(0),
        ),
        SizedBox(width: 8.h),
        CustomButton(
          text: 'deposits',
          backgroundColor: appTheme.colorFF3236,
          textColor: appTheme.colorFF8089,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          borderRadius: 4,
          hasShadow: true,
          shadowColor: appTheme.colorFF8888,
          onPressed: () => controller.selectFilterTab(1),
        ),
        SizedBox(width: 8.h),
        CustomButton(
          text: 'Qualifed Users',
          backgroundColor: appTheme.colorFF3236,
          textColor: appTheme.colorFF8089,
          fontSize: 12,
          fontWeight: FontWeight.bold,
          borderRadius: 4,
          hasShadow: true,
          shadowColor: appTheme.colorFF8888,
          onPressed: () => controller.selectFilterTab(2),
        ),
      ],
    );
  }

  Widget _buildChartSection() {
    return Container(
      height: 180.h,
      child: Row(
        children: [
          _buildYAxisLabels(),
          SizedBox(width: 32.h),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      _buildGridLines(),
                      _buildChartContent(),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                _buildXAxisLabels(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildYAxisLabels() {
    return Container(
      height: 150.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('50', style: TextStyleHelper.instance.label11Bold),
          Text('40', style: TextStyleHelper.instance.label11Bold),
          Text('30', style: TextStyleHelper.instance.label11Bold),
          Text('20', style: TextStyleHelper.instance.label11Bold),
          Text('10', style: TextStyleHelper.instance.label11Bold),
          Text('0', style: TextStyleHelper.instance.label11Bold),
        ],
      ),
    );
  }

  Widget _buildGridLines() {
    return Column(
      children: List.generate(
        6,
        (index) => Expanded(
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: appTheme.whiteCustom.withAlpha(51),
                  width: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildChartContent() {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: CustomImageView(
            imagePath: ImageConstant.imgWrapper91x246,
            height: 91.h,
            width: 246.h,
          ),
        ),
        _buildDataPoints(),
      ],
    );
  }

  Widget _buildDataPoints() {
    List<Map<String, double>> dataPoints = [
      {'bottom': 60, 'left': 55},
      {'bottom': 44, 'left': 95},
      {'bottom': 55, 'left': 140},
      {'bottom': 35, 'left': 182},
      {'bottom': 45, 'left': 222},
      {'bottom': 65, 'left': 267},
      {'bottom': 64, 'left': 310},
    ];

    return Stack(
      children: dataPoints
          .map(
            (point) => Positioned(
              bottom: point['bottom']!.h,
              left: point['left']!.h,
              child: Container(
                height: 4.h,
                width: 4.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  border: Border.all(color: appTheme.colorFF85D4),
                  borderRadius: BorderRadius.circular(2.h),
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildXAxisLabels() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('07/18', style: TextStyleHelper.instance.label11Bold),
        Text('07/20', style: TextStyleHelper.instance.label11Bold),
        Text('07/22', style: TextStyleHelper.instance.label11Bold),
        Text('07/24', style: TextStyleHelper.instance.label11Bold),
        Text('07/26', style: TextStyleHelper.instance.label11Bold),
        Text('07/28', style: TextStyleHelper.instance.label11Bold),
        Text('07/30', style: TextStyleHelper.instance.label11Bold),
      ],
    );
  }

  Widget _buildFloatingActionButton() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF242A,
        borderRadius: BorderRadius.circular(28.h),
      ),
      height: 56.h,
      width: 57.h,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFADF835),
                appTheme.colorFF83CF,
                Color(0xFF3C7A0B)
              ],
            ),
            borderRadius: BorderRadius.circular(23.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.colorFF6199,
                blurRadius: 4.h,
                offset: Offset(-1, -4),
              ),
            ],
          ),
          height: 46.h,
          width: 48.h,
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
                  height: 3.h,
                  width: 3.h,
                  decoration: BoxDecoration(
                    color: appTheme.whiteCustom,
                    borderRadius: BorderRadius.circular(1.5.h),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
