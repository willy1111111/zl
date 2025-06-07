import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/income_dashboard_controller.dart';
import './widgets/income_item_widget.dart';

class IncomeDashboardScreen extends StatelessWidget {
  IncomeDashboardScreen({Key? key}) : super(key: key);

  final IncomeDashboardController controller =
      Get.put(IncomeDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        logoImagePath: ImageConstant.imgLogowj931,
        currencyAmount: '₱1980.00',
        walletIconPath: ImageConstant.imgGroup736,
        batteryIconPath: ImageConstant.img1LightGreenA700,
        statusBarImagePath: ImageConstant.img1Black900,
        showStatusBar: true,
      ),
      body: Column(
        children: [
          _buildNavigationTabs(),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFilterSection(),
                  _buildMainContent(),
                ],
              ),
            ),
          ),
          _buildFloatingActionButton(),
        ],
      ),
    );
  }

  Widget _buildNavigationTabs() {
    return Container(
      height: 54.h,
      color: appTheme.colorFF1012,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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

  Widget _buildTabItem(String iconPath, String title, bool isActive) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: iconPath,
          height: 20.h,
          width: 20.h,
        ),
        SizedBox(height: 4.h),
        Text(
          title,
          style: TextStyleHelper.instance.body12.copyWith(
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

  Widget _buildFilterSection() {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: 'All',
                  backgroundColor: appTheme.colorFF85D4,
                  textColor: appTheme.whiteCustom,
                  fontSize: 14.fSize,
                  fontWeight: FontWeight.bold,
                  height: 40.h,
                ),
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: CustomButton(
                  text: 'today',
                  backgroundColor: appTheme.colorFF3236,
                  textColor: appTheme.colorFFABB6,
                  fontSize: 14.fSize,
                  height: 40.h,
                ),
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: CustomButton(
                  text: 'Yesterday',
                  backgroundColor: appTheme.colorFF3236,
                  textColor: appTheme.colorFFABB6,
                  fontSize: 14.fSize,
                  height: 40.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 12.h),
          Row(
            children: [
              Expanded(
                child: CustomButton(
                  text: '7-Days',
                  backgroundColor: appTheme.colorFF3236,
                  textColor: appTheme.colorFFABB6,
                  fontSize: 14.fSize,
                  height: 40.h,
                ),
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: CustomButton(
                  text: '15-Days',
                  backgroundColor: appTheme.colorFF3236,
                  textColor: appTheme.colorFFABB6,
                  fontSize: 14.fSize,
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
          Container(
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
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildIncomeCard(),
          SizedBox(height: 24.h),
          _buildDateRangeSelector(),
          SizedBox(height: 16.h),
          _buildIncomeTitle(),
          SizedBox(height: 16.h),
          _buildTotalIncomeDisplay(),
          SizedBox(height: 24.h),
          _buildIncomeList(),
          SizedBox(height: 32.h),
          _buildChartSection(),
          SizedBox(height: 100.h),
        ],
      ),
    );
  }

  Widget _buildIncomeCard() {
    return Container(
      padding: EdgeInsets.all(24.h),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.7, -0.7),
          end: Alignment(0.7, 0.7),
          colors: [
            Color(0xFFD8D908),
            appTheme.colorFF2FA0,
            appTheme.colorFF009E,
          ],
        ),
        border: Border.all(color: appTheme.colorFFD8D9),
        borderRadius: BorderRadius.circular(16.h),
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
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
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
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame,
                    height: 30.h,
                    width: 30.h,
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today\'s income',
                        style: TextStyleHelper.instance.body12
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
                        style: TextStyleHelper.instance.body12
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

  Widget _buildDateRangeSelector() {
    return Container(
      padding: EdgeInsets.all(12.h),
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

  Widget _buildIncomeTitle() {
    return Text(
      'income',
      style: TextStyleHelper.instance.title20Bold,
    );
  }

  Widget _buildTotalIncomeDisplay() {
    return Row(
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
          '₱ 111,000.00',
          style: TextStyleHelper.instance.title16Bold
              .copyWith(color: appTheme.colorFF85D4),
        ),
      ],
    );
  }

  Widget _buildIncomeList() {
    return Obx(() => ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller.incomeItems.length,
          separatorBuilder: (context, index) => Container(
            margin: EdgeInsets.only(
                left:
                    controller.incomeItems[index].separatorLeftMargin?.value ??
                        0),
            height: 1.h,
            width: controller.incomeItems[index].separatorWidth?.value ?? 0,
            color: appTheme.whiteCustom,
          ),
          itemBuilder: (context, index) {
            return IncomeItemWidget(
              incomeItem: controller.incomeItems[index],
            );
          },
        ));
  }

  Widget _buildChartSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF85D4,
                borderRadius: BorderRadius.circular(4.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.color888888,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Text(
                'Registers',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF85D4),
              ),
            ),
            SizedBox(width: 16.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(4.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.color888888,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Text(
                'deposits',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
            SizedBox(width: 16.h),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(4.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.color888888,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Text(
                'Qualifed Users',
                style: TextStyleHelper.instance.body12Bold
                    .copyWith(color: appTheme.colorFF8089),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.h),
        Container(
          height: 200.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgWrapper,
                height: 200.h,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
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
                top: 0.h,
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
        ),
        SizedBox(height: 8.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('07/18',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF7683)),
              Text('07/20',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF7683)),
              Text('07/22',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF7683)),
              Text('07/24',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF7683)),
              Text('07/26',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF7683)),
              Text('07/28',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF7683)),
              Text('07/30',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.colorFF7683)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFloatingActionButton() {
    return Positioned(
      bottom: 80.h,
      left: 0,
      right: 0,
      child: Center(
        child: Container(
          height: 56.h,
          width: 57.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF242A,
            borderRadius: BorderRadius.circular(28.h),
          ),
          child: Center(
            child: Container(
              height: 46.h,
              width: 48.h,
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
                        border: Border.all(color: appTheme.whiteCustom),
                        borderRadius: BorderRadius.circular(1.h),
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
                      imagePath: ImageConstant.img,
                      height: 14.h,
                      width: 43.h,
                    ),
                  ),
                  Positioned(
                    bottom: 4.h,
                    left: 3.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgUnion8x33,
                      height: 8.h,
                      width: 33.h,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
