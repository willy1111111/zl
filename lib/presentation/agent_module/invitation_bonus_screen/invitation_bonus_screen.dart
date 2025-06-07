import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/invitation_bonus_controller.dart';
import './widgets/bonus_card_widget.dart';

class InvitationBonusScreen extends GetWidget<InvitationBonusController> {
  const InvitationBonusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage917,
              height: 1220.h,
              width: 375.h,
              fit: BoxFit.cover,
            ),

            // Overlay Container
            Container(
              width: 375.h,
              height: 812.h,
              decoration: BoxDecoration(
                color: appTheme.color4D1817,
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    offset: Offset(0, 4.h),
                    blurRadius: 10.h,
                  ),
                ],
              ),
              child: Stack(
                children: [
                  // Close Button
                  Positioned(
                    top: 645.h,
                    left: 167.h,
                    child: GestureDetector(
                      onTap: () => controller.onCloseTap(),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup12922,
                        height: 40.h,
                        width: 40.h,
                      ),
                    ),
                  ),

                  // Main Illustration Container
                  Positioned(
                    top: 173.h,
                    left: 9.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img311x356,
                      height: 356.h,
                      width: 311.h,
                    ),
                  ),

                  // Decorative Stars
                  _buildDecorativeStars(),

                  // Large Decorative Element
                  Positioned(
                    top: 269.h,
                    left: 17.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup1321314676,
                      height: 346.h,
                      width: 346.h,
                    ),
                  ),

                  // Title
                  Positioned(
                    top: 121.h,
                    left: 44.h,
                    child: Container(
                      width: 313.h,
                      child: ShaderMask(
                        shaderCallback: (bounds) => LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFFFFBD4), Color(0xFFEEB819)],
                        ).createShader(bounds),
                        child: Text(
                          'Invitation Bonus Type',
                          style: TextStyleHelper.instance.headline30BoldArial
                              .copyWith(height: 0.6, shadows: [
                            Shadow(
                              color: appTheme.colorFF9C4D,
                              offset: Offset(0, 2.h),
                            ),
                          ]),
                        ),
                      ),
                    ),
                  ),

                  // Top Bonus Section
                  _buildTopBonusSection(),

                  // Main Bonus Cards Container
                  _buildMainBonusContainer(),

                  // Character Elements
                  _buildCharacterElements(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDecorativeStars() {
    return Stack(
      children: [
        Positioned(
          top: 209.h,
          left: 41.h,
          child: CustomImageView(
            imagePath: ImageConstant.img141,
            height: 12.h,
            width: 12.h,
          ),
        ),
        Positioned(
          top: 190.h,
          left: 87.h,
          child: CustomImageView(
            imagePath: ImageConstant.img141,
            height: 6.h,
            width: 6.h,
          ),
        ),
        Positioned(
          top: 230.h,
          left: 307.h,
          child: CustomImageView(
            imagePath: ImageConstant.img141,
            height: 6.h,
            width: 6.h,
          ),
        ),
        Positioned(
          top: 170.h,
          left: 56.h,
          child: CustomImageView(
            imagePath: ImageConstant.img141,
            height: 17.h,
            width: 17.h,
          ),
        ),
        Positioned(
          top: 164.h,
          left: 310.h,
          child: CustomImageView(
            imagePath: ImageConstant.img141,
            height: 12.h,
            width: 12.h,
          ),
        ),
      ],
    );
  }

  Widget _buildTopBonusSection() {
    return Positioned(
      top: 333.h,
      left: 32.h,
      child: Container(
        width: 316.h,
        height: 57.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(0, 1),
            colors: [Color(0xFFA7FFB7), Color(0xFF0A9B57)],
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.h),
            topRight: Radius.circular(10.h),
          ),
        ),
        child: Stack(
          children: [
            // Bonus Icon
            Positioned(
              top: 3.h,
              left: 41.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage539,
                height: 32.h,
                width: 32.h,
              ),
            ),

            // Bonus Title
            Positioned(
              top: 9.h,
              left: 77.h,
              child: Text(
                'Betting Rebate bonus',
                style: TextStyleHelper.instance.title16BoldArial
                    .copyWith(height: 1.19),
              ),
            ),

            // Bonus Description
            Positioned(
              top: 31.h,
              left: 34.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Up to ',
                      style: TextStyleHelper.instance.body12BoldArial,
                    ),
                    TextSpan(
                      text: '4 levels',
                      style: TextStyleHelper.instance.body12BoldArial
                          .copyWith(color: appTheme.colorFFEFF7),
                    ),
                    TextSpan(
                      text: ' of rewards can be obtained.',
                      style: TextStyleHelper.instance.body12BoldArial,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainBonusContainer() {
    return Positioned(
      top: 390.h,
      left: 32.h,
      child: Container(
        width: 316.h,
        height: 205.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(-0.8, -1),
            end: Alignment(0.8, 1),
            colors: [Color(0xFF54D896), Color(0xFF09633F)],
          ),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.h),
            bottomRight: Radius.circular(10.h),
          ),
        ),
        child: Stack(
          children: [
            // Unlimited Referral Text
            Positioned(
              top: 12.h,
              left: 49.h,
              child: Text(
                'Unlimited referral development',
                style: TextStyleHelper.instance.body14BoldArial
                    .copyWith(height: 1.21),
              ),
            ),

            // Bonus Cards Grid
            Positioned(
              top: 44.h,
              left: 15.h,
              child: Obx(() => _buildBonusCardsGrid()),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBonusCardsGrid() {
    return SizedBox(
      width: 286.h,
      height: 128.h,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 6.h,
          mainAxisSpacing: 8.h,
          childAspectRatio: 140 / 60,
        ),
        itemCount: controller.bonusCards.length,
        itemBuilder: (context, index) {
          return BonusCardWidget(
            bonusCard: controller.bonusCards[index],
          );
        },
      ),
    );
  }

  Widget _buildCharacterElements() {
    return Stack(
      children: [
        Positioned(
          top: 199.h,
          left: 59.h,
          child: Container(
            height: 20.h,
            width: 20.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.h),
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgP,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          top: 178.h,
          left: 312.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgJb43x44,
            height: 43.h,
            width: 44.h,
          ),
        ),
        Positioned(
          top: 154.h,
          left: 34.h,
          child: CustomImageView(
            imagePath: ImageConstant.img13,
            height: 300.h,
            width: 182.h,
          ),
        ),
      ],
    );
  }
}
