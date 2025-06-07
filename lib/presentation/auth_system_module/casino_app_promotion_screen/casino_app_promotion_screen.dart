import 'package:flutter/material.dart';
import 'dart:ui'; // Modified: Added import for ImageFilter
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import 'controller/casino_app_promotion_controller.dart';

class CasinoAppPromotionScreen extends GetWidget<CasinoAppPromotionController> {
  CasinoAppPromotionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.transparentCustom,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: appTheme.color800000,
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
          child: Stack(
            children: [
              Center(
                child: _buildMainPromotionFrame(),
              ),
              _buildCloseButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainPromotionFrame() {
    return Container(
      width: 287.h,
      height: 529.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Stack(
        children: [
          _buildCasinoPromotionCard(),
          _buildNavigationControls(),
        ],
      ),
    );
  }

  Widget _buildCasinoPromotionCard() {
    return Positioned(
      top: 13.h,
      left: 9.h,
      child: Container(
        width: 270.h,
        height: 456.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(12.h),
        ),
        child: Stack(
          children: [
            _buildPromotionImage(),
            _buildMoreButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildPromotionImage() {
    return CustomImageView(
      imagePath: ImageConstant.imgCardmatkalandingen1,
      height: 388.h,
      width: 270.h,
      fit: BoxFit.cover,
      radius: BorderRadius.only(
        topLeft: Radius.circular(12.h),
        topRight: Radius.circular(12.h),
      ),
    );
  }

  Widget _buildMoreButton() {
    return Positioned(
      top: 403.h,
      left: 70.h,
      child: GestureDetector(
        onTap: () => controller.onMoreButtonPressed(),
        child: Container(
          width: 130.h,
          height: 32.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF76CD00), Color(0xFF478A03)],
            ),
            borderRadius: BorderRadius.circular(16.h),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MORE',
                style: TextStyleHelper.instance.title16BoldArial,
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgVectorWhiteA700,
                width: 11.h,
                height: 9.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavigationControls() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Row(
        children: [
          _buildPreviousButton(),
          Expanded(
            child: _buildPageIndicator(),
          ),
          _buildNextButton(),
        ],
      ),
    );
  }

  Widget _buildPreviousButton() {
    return GestureDetector(
      onTap: () => controller.onPreviousPressed(),
      child: Container(
        width: 100.h,
        height: 40.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(18.h),
            bottomRight: Radius.circular(12.h),
          ),
        ),
        child: Row(
          children: [
            SizedBox(width: 13.h),
            CustomImageView(
              imagePath: ImageConstant.imgStrokeWhiteA70013x7,
              width: 7.h,
              height: 13.h,
            ),
            SizedBox(width: 8.h),
            Text(
              'Previous',
              style: TextStyleHelper.instance.body14BoldArial,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Center(
      child: Obx(
        () => Text(
          '${controller.currentPage.value}/8',
          style: TextStyleHelper.instance.body14BoldArial,
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    return GestureDetector(
      onTap: () => controller.onNextPressed(),
      child: Container(
        width: 100.h,
        height: 40.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(18.h),
            bottomLeft: Radius.circular(12.h),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Next',
              style: TextStyleHelper.instance.body14BoldArial,
            ),
            SizedBox(width: 8.h),
            CustomImageView(
              imagePath: ImageConstant.imgStrokeWhiteA700,
              width: 7.h,
              height: 13.h,
            ),
            SizedBox(width: 13.h),
          ],
        ),
      ),
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      bottom: 32.h,
      left: 0,
      right: 0,
      child: Center(
        child: GestureDetector(
          onTap: () => controller.onClosePressed(),
          child: Container(
            width: 40.h,
            height: 40.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF3741,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: CustomImageView(
                imagePath: ImageConstant.img2,
                width: 24.h,
                height: 24.h,
                color: appTheme.whiteCustom,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
