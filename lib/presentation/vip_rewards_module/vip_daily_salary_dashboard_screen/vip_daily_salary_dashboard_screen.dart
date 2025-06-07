import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_gradient_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_level_display.dart';
import '../../../../widgets/custom_promotion_card.dart';
import '../../../../widgets/custom_vip_app_bar.dart';
import './controller/vip_daily_salary_dashboard_controller.dart';
import './widgets/vip_level_card_widget.dart';
import './widgets/vip_requirement_row_widget.dart';

class VipDailySalaryDashboardScreen
    extends GetWidget<VipDailySalaryDashboardController> {
  VipDailySalaryDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: _buildMainContent(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomVipAppBar(
      title: 'Vip',
      amount: '₱19800.00',
      onLeadingPressed: () => Get.back(),
      showStatusBar: true,
      trailingIcon: ImageConstant.img1LightGreenA70002,
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          _buildVipLevelCard(),
          SizedBox(height: 16.h),
          _buildVipDailySalaryCard(),
          SizedBox(height: 16.h),
          _buildBonusCards(),
          SizedBox(height: 16.h),
          _buildVipPrivileges(),
          SizedBox(height: 16.h),
          _buildVipRequirementsTable(),
        ],
      ),
    );
  }

  Widget _buildVipLevelCard() {
    return VipLevelCardWidget();
  }

  Widget _buildVipDailySalaryCard() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2E31,
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF292F),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVpDailySalary21,
                height: 68.h,
                width: 91.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgVpDailySalary1,
                height: 32.h,
                width: 204.h,
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.img1Gray90003,
                height: 20.h,
                width: 20.h,
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
                    'Total valid bets today:',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '₱99',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Estimated Salary today:',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    '₱10',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(16.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img40x51,
                  height: 51.h,
                  width: 40.h,
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Salary From Yesterday:',
                        style: TextStyleHelper.instance.body14Bold
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        '₱4933.70',
                        style: TextStyleHelper.instance.title16Bold
                            .copyWith(color: appTheme.colorFFFFC6),
                      ),
                    ],
                  ),
                ),
                CustomGradientButton(
                  text: 'Receive',
                  onTap: () => controller.receiveSalary(),
                  gradientColors: [Color(0xFF76CD00), Color(0xFF478A03)],
                  textColor: appTheme.whiteCustom,
                  borderColor: appTheme.transparentCustom,
                  borderRadius: 18.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusCards() {
    return Column(
      children: [
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img3,
          overlayImagePath: ImageConstant.img74x345,
          gradientColors: [Color(0xFFF8AF4D), Color(0xFFBE6C09)],
          borderColor: appTheme.colorFFF9A9,
          height: 70.h,
          onTap: () => controller.navigateToUpgradeBonus(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img73x345,
          gradientColors: [Color(0xFFAECAD6), Color(0xFF367D9B)],
          borderColor: appTheme.colorFFAECA,
          height: 70.h,
          onTap: () => controller.navigateToWeeklySalary(),
        ),
        SizedBox(height: 16.h),
        CustomPromotionCard(
          backgroundImagePath: ImageConstant.img4,
          overlayImagePath: ImageConstant.img2,
          gradientColors: [Color(0xFFB2BCFA), Color(0xFF6657FF)],
          borderColor: appTheme.colorFFB2BC,
          height: 70.h,
          onTap: () => controller.navigateToMonthlySalary(),
        ),
        SizedBox(height: 16.h),
        Container(
          height: 70.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF289EFE), Color(0xFF0063FB)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(8.h),
            border: Border.all(color: appTheme.colorFF289E),
          ),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img4,
                height: 70.h,
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
              Positioned(
                top: 0,
                right: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.img74x250,
                  height: 70.h,
                  width: 250.h,
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.img89661173x105,
                  height: 73.h,
                  width: 105.h,
                ),
              ),
              Positioned(
                top: 16.h,
                right: 48.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup1260WhiteA700,
                  height: 42.h,
                  width: 50.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildVipPrivileges() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            offset: Offset(0, 4.h),
            blurRadius: 4.h,
          ),
        ],
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup11886,
                    height: 32.h,
                    width: 32.h,
                  ),
                  SizedBox(width: 12.h),
                  Text(
                    'VIP Privileges',
                    style: TextStyleHelper.instance.title16Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
              Obx(() => GestureDetector(
                    onTap: () => controller.togglePrivileges(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgComponent8,
                      height: 20.h,
                      width: 20.h,
                    ),
                  )),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            height: 1.h,
            color: appTheme.colorFF282F,
          ),
          SizedBox(height: 16.h),
          Column(
            children: [
              CustomLevelDisplay(
                labelText: 'Your level：',
                iconPath: ImageConstant.imgIconvip026x26,
                valueText: 'V0',
                labelTextStyle: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF8089),
                valueTextStyle: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFFFFC6),
                iconSize: 26.h,
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Withdrawal fee：',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  Text(
                    '3%',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Number of Withdrawals：',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  Text(
                    '1 Times/Day',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Single Withdrawal Limit：',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                  Text(
                    '₱3 - ₱300',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildVipRequirementsTable() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle568,
                height: 39.h,
                width: 282.h,
              ),
              SizedBox(height: 8.h),
              Text(
                'Upgrade VIP Requirements',
                style: TextStyleHelper.instance.title16Bold
                    .copyWith(color: appTheme.whiteCustom, shadows: [
                  Shadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 2.h),
                    blurRadius: 2.h,
                  ),
                ]),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF1E20,
              borderRadius: BorderRadius.circular(8.h),
              border: Border.all(color: appTheme.colorFF1516),
            ),
            child: Column(
              children: [
                _buildTableHeader(),
                _buildTableRows(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF60B100), Color(0xFF386800)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(8.h),
          topRight: Radius.circular(8.h),
        ),
      ),
      padding: EdgeInsets.all(12.h),
      child: Row(
        children: [
          SizedBox(
            width: 48.h,
            child: Text(
              'VIP Level',
              style: TextStyleHelper.instance.body12Black,
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img8411641,
                      height: 20.h,
                      width: 20.h,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Deposit Amount',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFEAEA),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img8411641,
                      height: 20.h,
                      width: 20.h,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Bet Amount',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFEAEA),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img,
                      height: 21.h,
                      width: 27.h,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Upgrade Bonus',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFEAEA),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBn01,
                      height: 21.h,
                      width: 27.h,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Weekly Cashback',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFEAEA),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage285,
                      height: 20.h,
                      width: 20.h,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Daily\nSalary',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.colorFFEAEA, height: 1.2),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableRows() {
    return Obx(() => Column(
          children: controller.vipRequirements.value
              .map((requirement) => VipRequirementRowWidget(
                    vipRequirement: requirement,
                  ))
              .toList(),
        ));
  }
}
