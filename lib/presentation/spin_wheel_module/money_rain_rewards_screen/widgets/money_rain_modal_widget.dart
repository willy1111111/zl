import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/money_rain_rewards_controller.dart';

class MoneyRainModalWidget extends StatelessWidget {
  MoneyRainModalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MoneyRainRewardsController>();

    return Positioned.fill(
        child: Container(
            color: Colors.black54,
            child: Center(
                child: Container(
                    width: 345.h,
                    height: 378.h,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFFFA6900), Color(0xFFBF1E1E)]),
                        borderRadius: BorderRadius.circular(12.h)),
                    child: Stack(children: [
                      _buildCloseButton(controller),
                      _buildRewardAmountDisplay(controller),
                      _buildMoneyRainTitle(),
                      _buildReceivedThisRoundText(),
                      _buildBottomCoins(),
                      _buildDecorativeElements(),
                    ])))));
  }

  Widget _buildCloseButton(MoneyRainRewardsController controller) {
    return Positioned(
        top: 8.h,
        right: 8.h,
        child: GestureDetector(
            onTap: () => controller.closeMoneyRainModal(),
            child: CustomImageView(
                imagePath: ImageConstant.imgGroup848,
                height: 28.h,
                width: 28.h)));
  }

  Widget _buildRewardAmountDisplay(MoneyRainRewardsController controller) {
    return Positioned(
        top: 48.h,
        left: 16.h,
        child: Container(
            width: 314.h,
            height: 140.h,
            decoration: BoxDecoration(
                color: appTheme.colorFFFDF6,
                borderRadius: BorderRadius.circular(8.h)),
            child: Stack(children: [
              CustomImageView(
                  imagePath: ImageConstant.img8LightGreen100,
                  height: 140.h,
                  width: 314.h,
                  fit: BoxFit.cover),
              _buildCornerPesoSigns(),
              Positioned(
                  top: 31.h,
                  left: 39.h,
                  child: Obx(() => Text(
                      controller.rewardAmount!.value ?? '₱ 200.01',
                      style: TextStyleHelper.instance.display50Black
                          .copyWith(height: 1.4)))),
            ])));
  }

  Widget _buildCornerPesoSigns() {
    return Stack(children: [
      Positioned(
          top: -1.h,
          left: 8.h,
          child: Text('₱', style: TextStyleHelper.instance.title18Black)),
      Positioned(
          top: -1.h,
          right: 8.h,
          child: Text('₱', style: TextStyleHelper.instance.title18Black)),
      Positioned(
          bottom: -1.h,
          left: 8.h,
          child: Text('₱', style: TextStyleHelper.instance.title18Black)),
      Positioned(
          bottom: -1.h,
          right: 8.h,
          child: Text('₱', style: TextStyleHelper.instance.title18Black)),
    ]);
  }

  Widget _buildMoneyRainTitle() {
    return Positioned(
        top: 172.h,
        left: 98.h,
        child: Stack(children: [
          CustomImageView(
              imagePath: ImageConstant.img2858, height: 48.h, width: 180.h),
          Positioned(
              top: 9.h,
              left: 28.h,
              child: Text('Money Rain',
                  style: TextStyleHelper.instance.title22Bold
                      .copyWith(height: 1.2))),
        ]));
  }

  Widget _buildReceivedThisRoundText() {
    return Positioned(
        top: 185.h,
        left: 79.h,
        child: Row(children: [
          Container(
              width: 21.h,
              height: 20.h,
              decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  borderRadius: BorderRadius.circular(10.h)),
              child: Center(
                  child: CustomImageView(
                      imagePath: ImageConstant.imgVectorLightGreenA70024x24,
                      height: 24.h,
                      width: 24.h))),
          SizedBox(width: 8.h),
          Text('Received this round',
              style: TextStyleHelper.instance.headline24Bold
                  .copyWith(color: appTheme.whiteCustom, height: 1.1)),
        ]));
  }

  Widget _buildBottomCoins() {
    return Positioned(
        bottom: 0,
        left: 0,
        child: CustomImageView(
            imagePath: ImageConstant.img861719114,
            height: 93.h,
            width: 345.h,
            fit: BoxFit.cover));
  }

  Widget _buildDecorativeElements() {
    return Positioned(
        top: 213.h,
        left: 15.h,
        child: CustomImageView(
            imagePath: ImageConstant.imgGroup12503YellowA20002,
            height: 157.h,
            width: 323.h));
  }
}
