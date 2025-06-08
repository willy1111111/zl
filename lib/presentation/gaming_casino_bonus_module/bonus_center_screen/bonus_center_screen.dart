import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/bonus_center_controller.dart';
import './widgets/bonus_section_widget.dart';

class BonusCenterScreen extends GetWidget<BonusCenterController> {
  const BonusCenterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Bonus',
        showBalance: true,
        balanceAmount: '₱1980.00',
        onBalancePressed: () => controller.onBalancePressed(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeaderSection(),
            SizedBox(height: 20.h),
            _buildBonusSectionsList(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderSection() {
    return Container(
      height: 371.h,
      width: double.infinity,
      child: Stack(
        children: [
          // Background Images
          CustomImageView(
            imagePath: ImageConstant.imgGroup789,
            height: 193.h,
            width: 375.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 85.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage69,
            height: 348.h,
            width: 375.h,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.img1183x375,
            height: 183.h,
            width: 375.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 58.h),
          ),

          // Gradient Overlay
          Positioned(
            top: 277.h,
            left: 0,
            right: 0,
            child: Container(
              height: 82.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF1E2024), Color(0xFF1E2024)],
                ),
              ),
            ),
          ),

          // Main Background
          CustomImageView(
            imagePath: ImageConstant.imgF1371x375,
            height: 371.h,
            width: 375.h,
            alignment: Alignment.topCenter,
          ),

          // Decorative Elements
          CustomImageView(
            imagePath: ImageConstant.img401,
            height: 81.h,
            width: 81.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 125.h, left: 40.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.img403,
            height: 61.h,
            width: 61.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 141.h, left: 77.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage58,
            height: 114.h,
            width: 341.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 184.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage278,
            height: 70.h,
            width: 202.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 223.h),
          ),

          // Various Icons
          CustomImageView(
            imagePath: ImageConstant.img920,
            height: 24.h,
            width: 28.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 269.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.img13,
            height: 59.h,
            width: 79.h,
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 131.h, right: 62.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.img1176x204,
            height: 176.h,
            width: 204.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 86.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGroup13009,
            height: 37.h,
            width: 125.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 142.h),
          ),

          // Total Text
          Positioned(
            top: 123.h,
            left: 120.h,
            child: Container(
              width: 125.h,
              height: 65.h,
              child: Text(
                'Total',
                style: TextStyleHelper.instance.display40Black
                    .copyWith(letterSpacing: 3),
              ),
            ),
          ),

          // Amount Display
          Positioned(
            top: 218.h,
            left: 112.h,
            child: Container(
              width: 150.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF2345,
                    offset: Offset(0, 1),
                    blurRadius: 2,
                  ),
                ],
              ),
              child: Text(
                '₱100000.00',
                style: TextStyleHelper.instance.headline24Black,
              ),
            ),
          ),

          // Bonus Claimed Text
          Positioned(
            top: 183.h,
            left: 74.h,
            child: Container(
              width: 229.h,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF0000,
                    offset: Offset(0, 3),
                    blurRadius: 0,
                  ),
                ],
              ),
              child: Text(
                'Bonus Claimed',
                textAlign: TextAlign.center,
                style: TextStyleHelper.instance.headline28Black,
              ),
            ),
          ),

          // Additional decorative icons
          _buildAdditionalIcons(),
        ],
      ),
    );
  }

  Widget _buildAdditionalIcons() {
    return Stack(
      children: [
        CustomImageView(
          imagePath: ImageConstant.img932,
          height: 19.h,
          width: 22.h,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 204.h, right: 100.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img923,
          height: 27.h,
          width: 27.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 193.h, left: 103.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img923,
          height: 30.h,
          width: 30.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 189.h, left: 223.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img928,
          height: 30.h,
          width: 30.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 190.h, left: 186.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img928,
          height: 30.h,
          width: 30.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 188.h, left: 204.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img928,
          height: 30.h,
          width: 30.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 192.h, left: 154.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img928,
          height: 30.h,
          width: 30.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 187.h, left: 143.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img922,
          height: 28.h,
          width: 28.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 190.h, left: 127.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgGroup13080,
          height: 75.h,
          width: 166.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 188.h, left: 104.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img933,
          height: 26.h,
          width: 24.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 220.h, left: 83.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img933,
          height: 26.h,
          width: 24.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 176.h, left: 161.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage275,
          height: 48.h,
          width: 46.h,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 246.h, right: 82.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img935,
          height: 21.h,
          width: 18.h,
          alignment: Alignment.topCenter,
          margin: EdgeInsets.only(top: 260.h, left: 165.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img936,
          height: 16.h,
          width: 17.h,
          alignment: Alignment.topRight,
          margin: EdgeInsets.only(top: 227.h, right: 84.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgImage276,
          height: 32.h,
          width: 31.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 247.h, left: 90.h),
        ),
      ],
    );
  }

  Widget _buildBonusSectionsList() {
    return Obx(() => Column(
          children: controller.bonusSections
              .map((section) => BonusSectionWidget(bonusSection: section))
              .toList(),
        ));
  }
}
