import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/experience_bonus_game_screen_two_controller.dart';
import './widgets/game_tile_widget.dart';

class ExperienceBonusGameScreenTwo
    extends GetWidget<ExperienceBonusGameScreenTwoController> {
  const ExperienceBonusGameScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          _buildBackgroundImages(),
          _buildMainContent(),
        ],
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
          width: double.maxFinite,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 7.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgVector808x375,
            height: 808.h,
            width: 375.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 594.h,
          child: CustomImageView(
            imagePath: ImageConstant.img3,
            height: 288.h,
            width: 375.h,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 449.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgMaskGroup454x375,
            height: 454.h,
            width: 375.h,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.only(top: 78.h),
      child: Column(
        children: [
          _buildBonusBanner(),
          _buildGameGrid(),
          _buildRulesSection(),
        ],
      ),
    );
  }

  Widget _buildBonusBanner() {
    return Container(
      margin: EdgeInsets.only(top: 64.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 208.h,
            height: 95.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(47.h),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFF57B21E), Color(0xFF005200)],
              ),
            ),
          ),
          Positioned(
            top: -51.h,
            left: -36.h,
            child: CustomImageView(
              imagePath: ImageConstant.img2106x282,
              width: 282.h,
              height: 106.h,
            ),
          ),
          Positioned(
            top: 18.h,
            left: 29.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1365564651,
              width: 151.h,
              height: 70.h,
            ),
          ),
          Positioned(
            top: -53.h,
            left: -5.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1273012,
              width: 224.h,
              height: 44.h,
            ),
          ),
          Positioned(
            top: -4.h,
            right: 54.h,
            child: CustomImageView(
              imagePath: ImageConstant.img185x49,
              width: 49.h,
              height: 85.h,
            ),
          ),
          Positioned(
            top: 10.h,
            left: 11.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage127301,
              width: 47.h,
              height: 103.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameGrid() {
    return Container(
      margin: EdgeInsets.only(top: 100.h),
      width: 345.h,
      height: 345.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage1284,
            width: 345.h,
            height: 345.h,
            fit: BoxFit.cover,
          ),
          _buildGridTiles(),
          _buildCentralGoButton(),
        ],
      ),
    );
  }

  Widget _buildGridTiles() {
    return Obx(() => Stack(
          children: [
            // Row 1
            Positioned(
              top: 26.h,
              left: 24.h,
              child: GameTileWidget(
                gameItem: controller.gameItems[0],
                onTap: () => controller.onTileTap(0),
              ),
            ),
            Positioned(
              top: 26.h,
              left: 126.h,
              child: GameTileWidget(
                gameItem: controller.gameItems[1],
                onTap: () => controller.onTileTap(1),
              ),
            ),
            Positioned(
              top: 26.h,
              left: 228.h,
              child: GameTileWidget(
                gameItem: controller.gameItems[2],
                onTap: () => controller.onTileTap(2),
              ),
            ),
            // Row 2
            Positioned(
              top: 127.h,
              left: 24.h,
              child: GameTileWidget(
                gameItem: controller.gameItems[3],
                onTap: () => controller.onTileTap(3),
              ),
            ),
            Positioned(
              top: 127.h,
              left: 228.h,
              child: GameTileWidget(
                gameItem: controller.gameItems[4],
                onTap: () => controller.onTileTap(4),
              ),
            ),
            // Row 3
            Positioned(
              top: 228.h,
              left: 24.h,
              child: GameTileWidget(
                gameItem: controller.gameItems[5],
                onTap: () => controller.onTileTap(5),
              ),
            ),
            Positioned(
              top: 228.h,
              left: 126.h,
              child: GameTileWidget(
                gameItem: controller.gameItems[6],
                onTap: () => controller.onTileTap(6),
              ),
            ),
            Positioned(
              top: 228.h,
              left: 228.h,
              child: GameTileWidget(
                gameItem: controller.gameItems[7],
                onTap: () => controller.onTileTap(7),
              ),
            ),
          ],
        ));
  }

  Widget _buildCentralGoButton() {
    return Positioned(
      top: 127.h,
      left: 126.h,
      child: GestureDetector(
        onTap: () => controller.onStartGame(),
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
                width: 90.h,
                height: 90.h,
                fit: BoxFit.cover,
              ),
              Center(
                child: CustomImageView(
                  imagePath: ImageConstant.img48x48,
                  width: 48.h,
                  height: 48.h,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRulesSection() {
    return Positioned(
      bottom: 80.h,
      left: 18.h,
      right: 18.h,
      child: Container(
        width: 345.h,
        height: 194.h,
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.h),
          border: Border.all(
            width: 10.h,
            color: appTheme.transparentCustom,
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFF6C500), Color(0xFFA96800)],
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.h),
            color: appTheme.color800000,
          ),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgWhiteA700188x339,
                width: 339.h,
                height: 188.h,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        'RULES',
                        style: TextStyleHelper.instance.body15Black
                            .copyWith(height: 1.47),
                      ),
                    ),
                    SizedBox(height: 16.h),
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
      ),
    );
  }

  Widget _buildRuleText(String text) {
    return Text(
      text,
      style: TextStyleHelper.instance.body12
          .copyWith(color: appTheme.colorFFFFF0, height: 1.17),
    );
  }
}
