import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/experience_bonus_game_controller.dart';
import './widgets/game_tile_widget.dart';

class ExperienceBonusGameScreen
    extends GetWidget<ExperienceBonusGameController> {
  ExperienceBonusGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            _buildBackgroundImages(),
            _buildPromotionalBanner(),
            _buildExclusiveRewardsBanner(),
            _buildDecorativeElements(),
            _buildGameGridContainer(),
            _buildRulesSection(),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'experience bonus',
      capitalizeTitle: true,
      height: 78.h,
      showBackButton: true,
      onBackPressed: () => Get.back(),
    );
  }

  Widget _buildBackgroundImages() {
    return Stack(
      children: [
        CustomImageView(
          imagePath: ImageConstant
              .img1a0990626aace05f7df5eceebf4916139382517a225b2373nd2kfw480webp1,
          height: 709.h,
          width: 375.h,
          alignment: Alignment.topLeft,
        ),
        CustomImageView(
          imagePath: ImageConstant.imgVector808x375,
          height: 808.h,
          width: 375.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 7.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.img3,
          height: 288.h,
          width: 375.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 594.h),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMaskGroup454x375,
          height: 454.h,
          width: 375.h,
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 449.h),
        ),
      ],
    );
  }

  Widget _buildPromotionalBanner() {
    return Positioned(
      top: 93.h,
      left: 82.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgImage1273012,
        height: 44.h,
        width: 224.h,
      ),
    );
  }

  Widget _buildExclusiveRewardsBanner() {
    return Positioned(
      top: 143.h,
      left: 87.h,
      child: Container(
        width: 208.h,
        height: 95.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF57B21E), Color(0xFF005200)],
          ),
          borderRadius: BorderRadius.circular(47.h),
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img2106x282,
              height: 106.h,
              width: 282.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 3.h, left: -36.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.img1365564651,
              height: 70.h,
              width: 151.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 18.h, left: 34.h),
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
          top: 143.h,
          right: 5.h,
          child: CustomImageView(
            imagePath: ImageConstant.img185x49,
            height: 85.h,
            width: 49.h,
          ),
        ),
        Positioned(
          top: 157.h,
          left: 11.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage127301,
            height: 103.h,
            width: 47.h,
          ),
        ),
      ],
    );
  }

  Widget _buildGameGridContainer() {
    return Positioned(
      top: 257.h,
      left: 19.h,
      child: Container(
        width: 345.h,
        height: 345.h,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage1284,
              height: 345.h,
              width: 345.h,
            ),
            Positioned(
              top: 26.h,
              left: 24.h,
              child: _buildGameGrid(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGameGrid() {
    return Container(
      width: 294.h,
      height: 294.h,
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          crossAxisSpacing: 12.h,
          mainAxisSpacing: 12.h,
        ),
        itemCount: 9,
        itemBuilder: (context, index) {
          if (index == 4) {
            return _buildGoButton();
          }
          return Obx(() => GameTileWidget(
                gameTile: controller.gameTiles[index < 4 ? index : index - 1],
                onTap: () =>
                    controller.onGameTileTap(index < 4 ? index : index - 1),
              ));
        },
      ),
    );
  }

  Widget _buildGoButton() {
    return GestureDetector(
      onTap: () => controller.onGoButtonTap(),
      child: Container(
        width: 90.h,
        height: 90.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45.h),
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage1281,
              height: 90.h,
              width: 90.h,
              fit: BoxFit.cover,
            ),
            Align(
              alignment: Alignment.center,
              child: CustomImageView(
                imagePath: ImageConstant.img48x48,
                height: 48.h,
                width: 48.h,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRulesSection() {
    return Positioned(
      top: 631.h,
      left: 18.h,
      child: Container(
        width: 345.h,
        height: 194.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF2A4A0F), Color(0xFF1A3009)],
          ),
          borderRadius: BorderRadius.circular(25.h),
          border: Border.all(
            width: 10.h,
            color: appTheme.transparentCustom,
          ),
        ),
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgWhiteA700188x339,
              height: 188.h,
              width: 339.h,
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 3.h, left: 3.h),
            ),
            Padding(
              padding: EdgeInsets.all(16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'RULES',
                    style: TextStyleHelper.instance.body15Black
                        .copyWith(height: 1.47),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildRuleText(
                            '1. The bonus for this activity can only be used for slot games on PG, JILI, JDB, EVO, BG game, and PP'),
                        SizedBox(height: 12.h),
                        _buildRuleText(
                            '2. This activity is exclusively for newcomers, and any malicious arbitrage behavior will result in the cancellation of rewards'),
                        SizedBox(height: 12.h),
                        _buildRuleText(
                            '3. Rewards earned in this activity can be withdrawn normally.'),
                        SizedBox(height: 12.h),
                        _buildRuleText('4. Exclusive for newcomers'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRuleText(String text) {
    return Text(
      text,
      style: TextStyleHelper.instance.body12Regular.copyWith(height: 1.17),
      textAlign: TextAlign.left,
    );
  }
}
