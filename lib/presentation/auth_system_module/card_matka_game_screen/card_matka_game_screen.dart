import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'controller/card_matka_game_controller.dart';

class CardMatkaGameScreen extends GetWidget<CardMatkaGameController> {
  CardMatkaGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: _buildMainContent(),
    );
  }

  /// App bar with return button and action buttons
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      backgroundColor: appTheme.colorFF171C,
      height: 72.h,
      showBackButton: true,
      backButtonText: 'return',
      backButtonIcon: ImageConstant.imgStroke,
      onBackPressed: () => controller.onReturnPressed(),
      actions: [
        _buildDepositButton(),
        SizedBox(width: 12.h),
        _buildFullScreenButton(),
        SizedBox(width: 16.h),
      ],
    );
  }

  /// Deposit action button with gradient background
  Widget _buildDepositButton() {
    return GestureDetector(
      onTap: () => controller.onDepositPressed(),
      child: Container(
        height: 28.h,
        width: 108.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF76CD00),
              appTheme.colorFF478A,
            ],
          ),
          border: Border.all(
            color: appTheme.colorFF85D4,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(14.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgVectorWhiteA70011x16,
              height: 11.h,
              width: 16.h,
            ),
            SizedBox(width: 8.h),
            Text(
              'Deposit',
              style: TextStyleHelper.instance.body14BoldArial,
            ),
          ],
        ),
      ),
    );
  }

  /// Full screen action button
  Widget _buildFullScreenButton() {
    return GestureDetector(
      onTap: () => controller.onFullScreenPressed(),
      child: Container(
        height: 28.h,
        width: 116.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(6.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.colorFF0000,
              offset: Offset(0, 2.h),
              blurRadius: 2.h,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'full screen',
              style: TextStyleHelper.instance.body14BoldArial,
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgStrokeBlueGray400,
              height: 7.h,
              width: 13.h,
            ),
          ],
        ),
      ),
    );
  }

  /// Main content area with game branding
  Widget _buildMainContent() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.colorFF1E20,
      child: Stack(
        children: [
          Positioned(
            top: 185.h,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgCardmatkalandingen1165x375,
              height: 165.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
