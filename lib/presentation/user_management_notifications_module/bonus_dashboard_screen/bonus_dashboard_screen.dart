import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/bonus_dashboard_controller.dart';
import './widgets/bonus_card_widget.dart';

class BonusDashboardScreen extends GetWidget<BonusDashboardController> {
  const BonusDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(),
            _buildBonusCardsSection(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Bonus',
      balance: '₱1980.00',
      showBalance: true,
      onBackPressed: () => Get.back(),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 371.h,
      child: Stack(
        children: [
          // Background Images
          CustomImageView(
            imagePath: ImageConstant.imgGroup724,
            height: 193.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage69,
            height: 348.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 58.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1183x375,
              height: 183.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 277.h,
            child: Container(
              height: 82.h,
              width: double.maxFinite,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF1E2024), Color(0xFF1E2024)],
                ),
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgF1,
            height: 371.h,
            width: double.maxFinite,
            fit: BoxFit.cover,
          ),

          // Decorative Elements
          _buildDecorativeElements(),

          // Main Text Content
          _buildMainTextContent(),
        ],
      ),
    );
  }

  Widget _buildDecorativeElements() {
    return Stack(
      children: [
        Positioned(
          top: 125.h,
          left: 40.h,
          child: CustomImageView(
            imagePath: ImageConstant.img401,
            height: 81.h,
            width: 81.h,
          ),
        ),
        Positioned(
          top: 141.h,
          left: 77.h,
          child: CustomImageView(
            imagePath: ImageConstant.img403,
            height: 61.h,
            width: 61.h,
          ),
        ),
        Positioned(
          top: 184.h,
          left: 17.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage58,
            height: 114.h,
            width: 341.h,
          ),
        ),
        Positioned(
          top: 223.h,
          left: 84.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage278,
            height: 70.h,
            width: 202.h,
          ),
        ),
        Positioned(
          top: 131.h,
          left: 234.h,
          child: CustomImageView(
            imagePath: ImageConstant.img13,
            height: 59.h,
            width: 79.h,
          ),
        ),
        Positioned(
          top: 86.h,
          left: 83.h,
          child: CustomImageView(
            imagePath: ImageConstant.img1176x204,
            height: 176.h,
            width: 204.h,
          ),
        ),
        Positioned(
          top: 142.h,
          left: 120.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup13009,
            height: 37.h,
            width: 125.h,
          ),
        ),
        _buildCoinsElements(),
      ],
    );
  }

  Widget _buildCoinsElements() {
    return Stack(
      children: [
        Positioned(
          top: 269.h,
          left: 187.h,
          child: CustomImageView(
            imagePath: ImageConstant.img920,
            height: 24.h,
            width: 28.h,
          ),
        ),
        Positioned(
          top: 204.h,
          left: 253.h,
          child: CustomImageView(
            imagePath: ImageConstant.img932,
            height: 19.h,
            width: 22.h,
          ),
        ),
        Positioned(
          top: 193.h,
          left: 103.h,
          child: CustomImageView(
            imagePath: ImageConstant.img923,
            height: 27.h,
            width: 27.h,
          ),
        ),
        Positioned(
          top: 189.h,
          left: 223.h,
          child: CustomImageView(
            imagePath: ImageConstant.img923,
            height: 30.h,
            width: 30.h,
          ),
        ),
        Positioned(
          top: 190.h,
          left: 186.h,
          child: CustomImageView(
            imagePath: ImageConstant.img928,
            height: 30.h,
            width: 30.h,
          ),
        ),
        Positioned(
          top: 188.h,
          left: 204.h,
          child: CustomImageView(
            imagePath: ImageConstant.img928,
            height: 30.h,
            width: 30.h,
          ),
        ),
        Positioned(
          top: 192.h,
          left: 154.h,
          child: CustomImageView(
            imagePath: ImageConstant.img928,
            height: 30.h,
            width: 30.h,
          ),
        ),
        Positioned(
          top: 187.h,
          left: 143.h,
          child: CustomImageView(
            imagePath: ImageConstant.img928,
            height: 30.h,
            width: 30.h,
          ),
        ),
        Positioned(
          top: 190.h,
          left: 127.h,
          child: CustomImageView(
            imagePath: ImageConstant.img922,
            height: 28.h,
            width: 28.h,
          ),
        ),
        Positioned(
          top: 188.h,
          left: 104.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup13080,
            height: 75.h,
            width: 166.h,
          ),
        ),
        Positioned(
          top: 220.h,
          left: 83.h,
          child: CustomImageView(
            imagePath: ImageConstant.img933,
            height: 26.h,
            width: 24.h,
          ),
        ),
        Positioned(
          top: 176.h,
          left: 161.h,
          child: CustomImageView(
            imagePath: ImageConstant.img933,
            height: 26.h,
            width: 24.h,
          ),
        ),
        Positioned(
          top: 246.h,
          left: 247.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage275,
            height: 48.h,
            width: 46.h,
          ),
        ),
        Positioned(
          top: 260.h,
          left: 165.h,
          child: CustomImageView(
            imagePath: ImageConstant.img935,
            height: 21.h,
            width: 18.h,
          ),
        ),
        Positioned(
          top: 227.h,
          left: 274.h,
          child: CustomImageView(
            imagePath: ImageConstant.img936,
            height: 16.h,
            width: 17.h,
          ),
        ),
        Positioned(
          top: 247.h,
          left: 90.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage276,
            height: 32.h,
            width: 31.h,
          ),
        ),
      ],
    );
  }

  Widget _buildMainTextContent() {
    return Stack(
      children: [
        Positioned(
          top: 123.h,
          left: 120.h,
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFFFFF9D4),
                  appTheme.colorFFDA87,
                  Color(0xFFFFD142)
                ],
              ),
            ),
            child: Text(
              'Total',
              style: TextStyleHelper.instance.display40BlackArial
                  .copyWith(letterSpacing: 3, height: 1.43),
            ),
          ),
        ),
        Positioned(
          top: 183.h,
          left: 74.h,
          child: Container(
            child: Text(
              'Bonus Claimed',
              style: TextStyleHelper.instance.headline28BlackArial
                  .copyWith(height: 0.64, shadows: [
                Shadow(
                  offset: Offset(0, 3),
                  color: appTheme.blackCustom,
                ),
              ]),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          top: 218.h,
          left: 112.h,
          child: Container(
            child: Text(
              '₱100000.00',
              style: TextStyleHelper.instance.headline24BlackArial
                  .copyWith(height: 0.75, shadows: [
                Shadow(
                  offset: Offset(0, 1),
                  blurRadius: 2,
                  color: appTheme.colorFF2345,
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBonusCardsSection() {
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Obx(() {
        return Column(
          children: controller.bonusCards.map((bonusCard) {
            return Padding(
              padding: EdgeInsets.only(bottom: 16.h),
              child: BonusCardWidget(bonusCard: bonusCard),
            );
          }).toList(),
        );
      }),
    );
  }
}
