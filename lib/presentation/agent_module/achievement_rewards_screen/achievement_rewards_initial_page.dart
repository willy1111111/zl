import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/achievement_rewards_controller.dart';
import './widgets/achievement_item_widget.dart';
import './widgets/bonus_card_widget.dart';

// Modified: Fixed import path

class AchievementRewardsInitialPage extends StatelessWidget {
  AchievementRewardsInitialPage({Key? key}) : super(key: key);

  AchievementRewardsController controller =
      Get.put(AchievementRewardsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: 16.h),
                  child: Column(
                    children: [
                      _buildPromotionalBanner(),
                      SizedBox(height: 24.h),
                      _buildProgressSection(),
                      SizedBox(height: 16.h),
                      _buildAchievementList(),
                      SizedBox(height: 16.h),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      logoImagePath: ImageConstant.imgLogowj93128x124,
      balanceAmount: '₱1980.00',
      profileIconPath: ImageConstant.imgGroup736,
      batteryIconPath: ImageConstant.img1LightGreenA700,
    );
  }

  Widget _buildPromotionalBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.h),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF1E5D1C),
            appTheme.colorFF2A6E,
            appTheme.colorFF5ABF,
          ],
        ),
      ),
      child: Container(
        height: 170.h,
        width: double.maxFinite,
        child: Stack(
          children: [
            CustomImageView(
              imagePath: ImageConstant.img31,
              height: 109.h,
              width: 221.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 39.h, right: 16.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.img287x245,
              height: 287.h,
              width: 245.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 16.h, right: 115.h),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgRw,
              height: 178.h,
              width: 178.h,
              alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 4.h, right: 25.h),
            ),
            Positioned(
              top: 16.h,
              left: 16.h,
              right: 16.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Become an agent',
                    style: TextStyleHelper.instance.title17ExtraBold
                        .copyWith(height: 1.35, shadows: [
                      Shadow(
                        offset: Offset(0, 1),
                        color: appTheme.colorFF4409,
                      ),
                    ]),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Earn millions a month',
                    style: TextStyleHelper.instance.title21ExtraBold
                        .copyWith(height: 1.19, shadows: [
                      Shadow(
                        offset: Offset(0, 1),
                        color: appTheme.colorFF4409,
                      ),
                    ]),
                  ),
                  SizedBox(height: 16.h),
                  Obx(() => Column(
                        children: [
                          Row(
                            children: [
                              BonusCardWidget(
                                bonusItem: controller.bonusCards[0],
                              ),
                              SizedBox(width: 8.h),
                              BonusCardWidget(
                                bonusItem: controller.bonusCards[1],
                              ),
                            ],
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            children: [
                              BonusCardWidget(
                                bonusItem: controller.bonusCards[2],
                              ),
                              SizedBox(width: 8.h),
                              BonusCardWidget(
                                bonusItem: controller.bonusCards[3],
                              ),
                              SizedBox(width: 8.h),
                              BonusCardWidget(
                                bonusItem: controller.bonusCards[4],
                              ),
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressSection() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'You need to invite 9 qualified users to Get: ',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF8089, height: 1.17),
                ),
                TextSpan(
                  text: '₱388.00',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.h),
          Stack(
            children: [
              Container(
                width: double.maxFinite,
                height: 6.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF4045,
                  borderRadius: BorderRadius.circular(3.h),
                ),
              ),
              Container(
                width: 40.h * 3.43, // 40% of full width
                height: 6.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF85D4,
                  borderRadius: BorderRadius.circular(3.h),
                ),
              ),
              Positioned(
                right: 0,
                top: 8.h,
                child: Text(
                  '40/100',
                  style: TextStyleHelper.instance.label10
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'No expiration',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
              ),
              Row(
                children: [
                  Container(
                    width: 16.h,
                    height: 19.h,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: appTheme.colorFFFFC6,
                        width: 1.h,
                      ),
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                    child: Center(
                      child: Text(
                        '?',
                        style: TextStyleHelper.instance.body12Black,
                      ),
                    ),
                  ),
                  SizedBox(width: 4.h),
                  Text(
                    'Rules',
                    style: TextStyleHelper.instance.label10
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementList() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        color: appTheme.color300303,
        borderRadius: BorderRadius.circular(10.h),
        border: Border.all(
          color: appTheme.color448E8E,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 11.h,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Container(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            Obx(() => ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: controller.achievementItems.length,
                  separatorBuilder: (context, index) => Container(
                    height: 1.h,
                    color: appTheme.colorFF4045,
                    margin: EdgeInsets.symmetric(vertical: 16.h),
                  ),
                  itemBuilder: (context, index) {
                    return AchievementItemWidget(
                      achievementItem: controller.achievementItems[index],
                      onButtonTap: () =>
                          controller.onAchievementButtonTap(index),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
