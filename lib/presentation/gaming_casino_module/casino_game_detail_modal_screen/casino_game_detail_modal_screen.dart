import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/casino_game_detail_modal_controller.dart';

class CasinoGameDetailModalScreen
    extends GetWidget<CasinoGameDetailModalController> {
  const CasinoGameDetailModalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: appTheme.blackCustom,
        body: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(ImageConstant.img8), fit: BoxFit.cover)),
            child: Stack(children: [
              _buildCloseButton(),
              _buildBottomSheet(),
            ])));
  }

  Widget _buildCloseButton() {
    return Positioned(
        top: 738.h,
        right: 20.h,
        child: GestureDetector(
            onTap: () => controller.onClosePressed(),
            child: CustomImageView(
                imagePath: ImageConstant.imgGroup, height: 14.h, width: 14.h)));
  }

  Widget _buildBottomSheet() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
            height: 167.h,
            width: double.infinity,
            decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(8.h),
                    topRight: Radius.circular(8.h))),
            child: Padding(
                padding: EdgeInsets.all(16.h),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildGameImageContainer(),
                      SizedBox(width: 9.h),
                      Expanded(child: _buildGameInfoContainer()),
                    ]))));
  }

  Widget _buildGameImageContainer() {
    return Stack(children: [
      Container(
          width: 114.h,
          height: 114.h,
          decoration: BoxDecoration(
              color: appTheme.colorFF3035,
              borderRadius: BorderRadius.circular(4.h)),
          child: Obx(() => CustomImageView(
              imagePath: controller
                      .casinoGameDetailModalModel.value?.gameImage?.value ??
                  ImageConstant.imgBaccarat2,
              height: 114.h,
              width: 114.h,
              fit: BoxFit.cover,
              radius: BorderRadius.circular(4.h)))),
      _buildPlatformBadge(),
    ]);
  }

  Widget _buildPlatformBadge() {
    return Positioned(
        top: 0,
        left: 0,
        child: Container(
            width: 32.h,
            height: 17.h,
            decoration: BoxDecoration(
                color: appTheme.colorFFFFD6,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(2.h),
                    bottomRight: Radius.circular(6.h)),
                boxShadow: [
                  BoxShadow(
                      color: appTheme.blackCustom,
                      offset: Offset(0, 1.h),
                      blurRadius: 2.h),
                ]),
            child: Center(
                child: CustomImageView(
                    imagePath: ImageConstant.imgPlatform24,
                    height: 23.h,
                    width: 10.h))));
  }

  Widget _buildGameInfoContainer() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      _buildGameTitle(),
      SizedBox(height: 8.h),
      _buildCategoryLabel(),
      SizedBox(height: 24.h),
      _buildActionButtons(),
    ]);
  }

  Widget _buildGameTitle() {
    return Obx(() => Container(
        constraints: BoxConstraints(maxWidth: 215.h),
        child: Text(
            controller.casinoGameDetailModalModel.value?.gameTitle?.value ??
                'Game Names Can Be In Two Rows',
            style: TextStyleHelper.instance.title16BoldArial
                .copyWith(color: appTheme.whiteCustom, height: 1.0))));
  }

  Widget _buildCategoryLabel() {
    return Obx(() => Text(
        controller.casinoGameDetailModalModel.value?.category?.value ?? 'SLOTS',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFF8089, height: 14 / 12)));
  }

  Widget _buildActionButtons() {
    return Row(children: [
      _buildRealPlayButton(),
      SizedBox(width: 12.h),
      _buildFavoriteButton(),
    ]);
  }

  Widget _buildRealPlayButton() {
    return CustomButton(
        text: 'Real play',
        leftIcon: ImageConstant.imgPolygon8,
        buttonVariant: CustomButtonVariant.gradientGreen,
        height: 36.h,
        width: 130.h,
        onPressed: () => controller.onRealPlayPressed());
  }

  Widget _buildFavoriteButton() {
    return GestureDetector(
        onTap: () => controller.onFavoritePressed(),
        child: Container(
            height: 36.h,
            width: 84.h,
            decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(8.h)),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Obx(() => CustomImageView(
                  imagePath: controller.casinoGameDetailModalModel.value
                          ?.favoriteIcon?.value ??
                      ImageConstant.imgVectorAmberA400,
                  height: 14.h,
                  width: 13.h)),
              SizedBox(width: 8.h),
              Text('Favorite',
                  style: TextStyleHelper.instance.body12BoldArial
                      .copyWith(color: appTheme.whiteCustom, height: 14 / 12)),
            ])));
  }
}
