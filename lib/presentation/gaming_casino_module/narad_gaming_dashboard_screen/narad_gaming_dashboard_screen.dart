import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/narad_gaming_dashboard_controller.dart';
import './widgets/menu_option_item.dart';
import './widgets/promotional_feature_item.dart';
import './widgets/teams_center_item.dart';

class NaradGamingDashboardScreen extends StatelessWidget {
  NaradGamingDashboardScreen({Key? key}) : super(key: key);

  final NaradGamingDashboardController controller =
      Get.put(NaradGamingDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            // Background Vector
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                width: double.infinity,
                height: 193.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup724,
                  width: double.infinity,
                  height: 193.h,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            // Status Bar Vector
            Positioned(
              top: 7.h,
              left: 10.h,
              child: CustomImageView(
                imagePath: ImageConstant.img1Black900,
                width: 356.h,
                height: 13.h,
              ),
            ),

            // Main Content
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32.h),
                  _buildUserProfileCard(),
                  SizedBox(height: 24.h),
                  _buildTeamsCenterSection(),
                  SizedBox(height: 16.h),
                  _buildPromotionalFeaturesSection(),
                  SizedBox(height: 16.h),
                  _buildMenuOptionsSection(),
                  SizedBox(height: 16.h),
                  _buildCommunitySection(),
                  SizedBox(height: 16.h),
                  _buildLanguageSection(),
                  SizedBox(height: 80.h),
                ],
              ),
            ),

            // Floating Bonus Button
            Positioned(
              bottom: 80.h,
              left: MediaQuery.of(context).size.width / 2 - 28.h,
              child: _buildFloatingBonusButton(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserProfileCard() {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(1.33, 0),
          end: Alignment(-0.33, 1),
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF85D4),
      ),
      child: Stack(
        children: [
          // Background Images
          CustomImageView(
            imagePath: ImageConstant.img22,
            width: 294.h,
            height: 163.h,
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 60.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle412,
              width: 343.h,
              height: 131.h,
            ),
          ),
          Positioned(
            top: 60.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgMaskGroup,
              width: 343.h,
              height: 131.h,
            ),
          ),

          // User Info Section
          Container(
            margin: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              border: Border.all(color: appTheme.colorFF85D4),
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(8.h),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgGroup466,
                          width: 40.h,
                          height: 40.h,
                        ),
                        SizedBox(width: 12.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'User name',
                              style: TextStyleHelper.instance.body14Bold2
                                  .copyWith(color: appTheme.colorFFE6E6),
                            ),
                            Text(
                              '98955464616',
                              style: TextStyleHelper.instance.body14Black,
                            ),
                          ],
                        ),
                      ],
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.img1BlueGray100,
                      width: 10.h,
                      height: 10.h,
                    ),
                  ],
                ),
                SizedBox(height: 32.h),

                // Action Buttons
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => controller.onWithdrawalTap(),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                            ),
                            borderRadius: BorderRadius.circular(18.h),
                            border: Border.all(color: appTheme.colorFFFFC6),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 8.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath:
                                    ImageConstant.imgVectorWhiteA70011x16,
                                width: 16.h,
                                height: 16.h,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                'Withdrawal',
                                style: TextStyleHelper.instance.body14Black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 12.h),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => controller.onDepositTap(),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                            ),
                            borderRadius: BorderRadius.circular(18.h),
                            border: Border.all(color: appTheme.colorFF85D4),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.h, vertical: 8.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgVectorWhiteA700,
                                width: 16.h,
                                height: 16.h,
                              ),
                              SizedBox(width: 8.h),
                              Text(
                                'Deposit',
                                style: TextStyleHelper.instance.body14Black,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
              ],
            ),
          ),

          // VIP Badge
          Positioned(
            top: 18.h,
            right: 18.h,
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                ),
                borderRadius: BorderRadius.circular(14.h),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgV4,
                    width: 24.h,
                    height: 24.h,
                  ),
                  SizedBox(width: 8.h),
                  Text(
                    'VIP 4',
                    style: TextStyleHelper.instance.body14Bold2,
                  ),
                ],
              ),
            ),
          ),

          // Arrow Button
          Positioned(
            top: 75.h,
            right: 12.h,
            child: Container(
              width: 112.h,
              height: 45.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.91, 0),
                  end: Alignment(-0.91, 0),
                  colors: [
                    Color(0xFF478A03),
                    appTheme.colorFF76CD,
                    Color(0xFF478A03)
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.h),
                  bottomLeft: Radius.circular(18.h),
                ),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 2),
                    blurRadius: 3.h,
                  ),
                ],
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup839,
                  width: 24.h,
                  height: 24.h,
                ),
              ),
            ),
          ),

          // Balance Section
          Positioned(
            bottom: 16.h,
            left: 16.h,
            right: 16.h,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Balance',
                        style: TextStyleHelper.instance.body14Bold2
                            .copyWith(shadows: [
                          Shadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 2),
                            blurRadius: 2.h,
                          ),
                        ]),
                      ),
                      Text(
                        '₱ 1213243213.23',
                        style: TextStyleHelper.instance.body15Black
                            .copyWith(shadows: [
                          Shadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 2),
                            blurRadius: 2.h,
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 1.h,
                  height: 36.h,
                  color: appTheme.whiteCustom,
                  margin: EdgeInsets.symmetric(horizontal: 12.h),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Bonus Claimed',
                        style: TextStyleHelper.instance.body14Bold2
                            .copyWith(shadows: [
                          Shadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 2),
                            blurRadius: 2.h,
                          ),
                        ]),
                      ),
                      Text(
                        '₱ 1213243213.23',
                        style: TextStyleHelper.instance.body15Black
                            .copyWith(shadows: [
                          Shadow(
                            color: appTheme.blackCustom,
                            offset: Offset(0, 2),
                            blurRadius: 2.h,
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgStrokeWhiteA700,
                  width: 7.h,
                  height: 13.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTeamsCenterSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Teams center',
          style: TextStyleHelper.instance.title16Bold2.copyWith(shadows: [
            Shadow(
              color: appTheme.blackCustom,
              offset: Offset(0, 2),
              blurRadius: 2.h,
            ),
          ]),
        ),
        SizedBox(height: 16.h),
        Container(
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(8.h),
          ),
          padding: EdgeInsets.all(16.h),
          child: Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 16.h,
                  mainAxisSpacing: 16.h,
                  childAspectRatio: 1.0,
                ),
                itemCount: controller.teamsCenterItems.length,
                itemBuilder: (context, index) {
                  return TeamsCenterItem(
                    teamsCenterModel: controller.teamsCenterItems[index],
                    onTap: () => controller.onTeamsCenterItemTap(
                        controller.teamsCenterItems[index]),
                  );
                },
              )),
        ),
      ],
    );
  }

  Widget _buildPromotionalFeaturesSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.promotionalFeatures.length,
            separatorBuilder: (context, index) => Container(
              height: 1.h,
              color: appTheme.colorFF292F,
            ),
            itemBuilder: (context, index) {
              return PromotionalFeatureItem(
                promotionalFeatureModel: controller.promotionalFeatures[index],
                onTap: () => controller.onPromotionalFeatureTap(
                    controller.promotionalFeatures[index]),
              );
            },
          )),
    );
  }

  Widget _buildMenuOptionsSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Obx(() => ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.menuOptions.length,
            separatorBuilder: (context, index) => Container(
              height: 1.h,
              color: appTheme.colorFF282F,
            ),
            itemBuilder: (context, index) {
              return MenuOptionItem(
                menuOptionModel: controller.menuOptions[index],
                onTap: () =>
                    controller.onMenuOptionTap(controller.menuOptions[index]),
              );
            },
          )),
    );
  }

  Widget _buildCommunitySection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Join Our community',
                style: TextStyleHelper.instance.body12Bold2,
              ),
              SizedBox(height: 12.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () => controller.onTelegramTap(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup840,
                      width: 34.h,
                      height: 34.h,
                    ),
                  ),
                  SizedBox(width: 16.h),
                  GestureDetector(
                    onTap: () => controller.onFacebookTap(),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup1288,
                      width: 34.h,
                      height: 34.h,
                    ),
                  ),
                ],
              ),
            ],
          ),
          CustomImageView(
            imagePath: ImageConstant.imgPolygon22,
            width: 10.h,
            height: 8.h,
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageSection() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      padding: EdgeInsets.all(16.h),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(8.h),
        ),
        padding: EdgeInsets.all(8.h),
        child: Row(
          children: [
            CustomImageView(
              imagePath:
                  ImageConstant.imgD62a6059252dd42a1fed252c093b5bb5c8eab8541,
              width: 30.h,
              height: 15.h,
            ),
            SizedBox(width: 12.h),
            Text(
              'English',
              style: TextStyleHelper.instance.body12Bold2
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFloatingBonusButton() {
    return GestureDetector(
      onTap: () => controller.onFloatingBonusTap(),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF242A,
          borderRadius: BorderRadius.circular(28.h),
        ),
        padding: EdgeInsets.all(4.h),
        child: Stack(
          children: [
            Container(
              width: 48.h,
              height: 48.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(1.56, 0),
                  end: Alignment(-0.56, 1),
                  colors: [
                    Color(0xFFADF835),
                    appTheme.colorFF83CF,
                    Color(0xFF3C7A0B)
                  ],
                ),
                borderRadius: BorderRadius.circular(23.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF6199,
                    offset: Offset(-1, -4),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              child: Center(
                child: CustomImageView(
                  imagePath: ImageConstant.imgVector25x27,
                  width: 27.h,
                  height: 25.h,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgSubtract,
                width: 14.h,
                height: 43.h,
              ),
            ),
            Positioned(
              top: 32.h,
              right: 8.h,
              child: Container(
                width: 3.h,
                height: 3.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  shape: BoxShape.circle,
                  border: Border.all(color: appTheme.whiteCustom),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgSubtract14x43,
                width: 14.h,
                height: 43.h,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: CustomImageView(
                imagePath: ImageConstant.img,
                width: 14.h,
                height: 43.h,
              ),
            ),
            Positioned(
              bottom: 4.h,
              left: 4.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgUnion,
                width: 8.h,
                height: 33.h,
              ),
            ),
            Positioned(
              bottom: 0,
              left: 12.h,
              child: CustomImageView(
                imagePath: ImageConstant.img5,
                width: 31.h,
                height: 45.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
