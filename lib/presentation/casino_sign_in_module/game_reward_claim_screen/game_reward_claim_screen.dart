import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/game_reward_claim_controller.dart';

class GameRewardClaimScreen extends GetWidget<GameRewardClaimController> {
  const GameRewardClaimScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage231160x375,
              height: 1160.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),

            // Game Background Frame
            Container(
              width: 375.h,
              height: 893.h,
              color: appTheme.blackCustom,
              child: Stack(
                children: [
                  _buildBackgroundGameElements(),
                  _buildMainRewardCard(),
                  _buildClaimButton(),
                  _buildCongratulationsBanner(),
                  _buildActivatePrivilegesSection(),
                  _buildDecorativeElements(),
                  _buildCloseButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundGameElements() {
    return Stack(
      children: [
        // Game background elements
        Positioned(
          left: 7.h,
          top: 43.h,
          child: CustomImageView(
            imagePath: ImageConstant.img,
            height: 323.h,
            width: 368.h,
          ),
        ),
        Positioned(
          left: 0.h,
          top: 206.h,
          child: CustomImageView(
            imagePath: ImageConstant.img362x363,
            height: 362.h,
            width: 363.h,
          ),
        ),
        Positioned(
          left: 0.h,
          top: 85.h,
          child: CustomImageView(
            imagePath: ImageConstant.img362x375,
            height: 362.h,
            width: 375.h,
          ),
        ),
        Positioned(
          left: 36.h,
          top: 46.h,
          child: CustomImageView(
            imagePath: ImageConstant.img203x313,
            height: 203.h,
            width: 313.h,
          ),
        ),
        Positioned(
          left: 155.h,
          top: 109.h,
          child: CustomImageView(
            imagePath: ImageConstant.img202405201132181,
            height: 77.h,
            width: 80.h,
          ),
        ),
        Positioned(
          left: 0.h,
          top: 276.h,
          child: CustomImageView(
            imagePath: ImageConstant.img412x375,
            height: 412.h,
            width: 375.h,
          ),
        ),
        Positioned(
          left: 17.h,
          top: 204.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup14240,
            height: 300.h,
            width: 341.h,
          ),
        ),
      ],
    );
  }

  Widget _buildMainRewardCard() {
    return Positioned(
      left: 34.h,
      top: 242.h,
      child: Container(
        width: 307.h,
        height: 160.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF0C6E,
          border: Border.all(
            color: appTheme.colorFF55D5,
            width: 1.h,
          ),
          borderRadius: BorderRadius.circular(5.h),
        ),
        child: Stack(
          children: [
            // Reward Amount
            Positioned(
              left: 110.h,
              top: 118.h,
              child: Obx(() => Text(
                    controller
                            .gameRewardClaimModel.value?.rewardAmount?.value ??
                        '₱57.99',
                    style: TextStyleHelper.instance.headline28BoldArial
                        .copyWith(height: 1.18),
                  )),
            ),

            // Money Icon Container
            Positioned(
              left: 110.h,
              top: 17.h,
              child: Container(
                width: 87.h,
                height: 87.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF1E20,
                  border: Border.all(
                    color: appTheme.colorFFCF89,
                    width: 2.h,
                  ),
                  borderRadius: BorderRadius.circular(43.h),
                ),
              ),
            ),

            // Money Stack Images
            Positioned(
              left: 104.h,
              top: 18.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgA65bbb3b63d7cefc212e71be3744557bd9ca5c13c468lzqmo2197x100,
                height: 97.h,
                width: 100.h,
              ),
            ),
            Positioned(
              left: 120.h,
              top: 26.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                height: 79.h,
                width: 79.h,
              ),
            ),
            Positioned(
              left: 104.h,
              top: 40.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgB928f94165e9728829ff07d0c5d4434611caf4103b62867w8is,
                height: 79.h,
                width: 79.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildClaimButton() {
    return Positioned(
      left: 77.h,
      top: 422.h,
      child: Container(
        width: 221.h,
        height: 45.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFFFBF1A),
              appTheme.colorFFD68D,
            ],
          ),
          borderRadius: BorderRadius.circular(22.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.blackCustom,
              offset: Offset(0, 4.h),
              blurRadius: 4.h,
            ),
          ],
        ),
        child: ElevatedButton(
          onPressed: () => controller.onClaimPressed(),
          style: ElevatedButton.styleFrom(
            backgroundColor: appTheme.transparentCustom,
            shadowColor: appTheme.transparentCustom,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.h),
            ),
            padding: EdgeInsets.zero,
          ),
          child: Text(
            'Claim',
            style: TextStyleHelper.instance.title18BoldInter
                .copyWith(height: 1.22),
          ),
        ),
      ),
    );
  }

  Widget _buildCongratulationsBanner() {
    return Stack(
      children: [
        // Decorative side elements
        Positioned(
          left: 32.h,
          top: 177.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector9,
            height: 50.h,
            width: 70.h,
          ),
        ),
        Positioned(
          left: 67.h,
          top: 211.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgPolygon21,
            height: 10.h,
            width: 34.h,
          ),
        ),
        Positioned(
          left: 284.h,
          top: 177.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector10,
            height: 50.h,
            width: 70.h,
          ),
        ),
        Positioned(
          left: 284.h,
          top: 211.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgPolygon22,
            height: 10.h,
            width: 34.h,
          ),
        ),

        // Banner backgrounds
        Positioned(
          left: 67.h,
          top: 166.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle1274,
            height: 52.h,
            width: 252.h,
          ),
        ),
        Positioned(
          left: 67.h,
          top: 166.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgRectangle1275,
            height: 52.h,
            width: 252.h,
          ),
        ),

        // Congratulations text
        Positioned(
          left: 78.h,
          top: 174.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgCongratulations,
            height: 32.h,
            width: 230.h,
          ),
        ),
      ],
    );
  }

  Widget _buildActivatePrivilegesSection() {
    return Positioned(
      left: 17.h,
      top: 525.h,
      child: Container(
        width: 341.h,
        height: 170.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2190,
          borderRadius: BorderRadius.circular(5.h),
        ),
        child: Stack(
          children: [
            // Inner Container
            Positioned(
              left: 10.h,
              top: 47.h,
              child: Container(
                width: 321.h,
                height: 108.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF0D6E,
                  border: Border.all(
                    color: appTheme.colorFF55D6,
                    width: 2.h,
                  ),
                  borderRadius: BorderRadius.circular(5.h),
                ),
              ),
            ),

            // Title
            Positioned(
              left: 99.h,
              top: 17.h,
              child: Obx(() => Text(
                    controller.gameRewardClaimModel.value?.privilegesTitle
                            ?.value ??
                        'Activate privileges',
                    style: TextStyleHelper.instance.title16BoldArial
                        .copyWith(color: appTheme.whiteCustom, height: 1.19),
                  )),
            ),

            // Description Text
            Positioned(
              left: 21.h,
              top: 58.h,
              child: SizedBox(
                width: 292.h,
                height: 101.h,
                child: Obx(() => Text(
                      controller.gameRewardClaimModel.value
                              ?.privilegesDescription?.value ??
                          '1.Congratulations on activating the [Recharge Promotion]you can enjoy up to 30% bonus.\n2.Congratulations on activating the [Newbie RewardPrivilege], you can receive up to P1446 bonus',
                      style: TextStyleHelper.instance.body14BoldArial
                          .copyWith(color: appTheme.colorFF76DB, height: 1.14),
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDecorativeElements() {
    return Stack(
      children: [
        Positioned(
          left: 41.h,
          top: 490.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup1273,
            height: 49.h,
            width: 11.h,
          ),
        ),
        Positioned(
          left: 320.h,
          top: 490.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup1273,
            height: 49.h,
            width: 11.h,
          ),
        ),
      ],
    );
  }

  Widget _buildCloseButton() {
    return Positioned(
      left: 181.h,
      top: 718.h,
      child: GestureDetector(
        onTap: () => controller.onClosePressed(),
        child: CustomImageView(
          imagePath: ImageConstant.imgGroupGray900,
          height: 32.h,
          width: 32.h,
        ),
      ),
    );
  }
}
