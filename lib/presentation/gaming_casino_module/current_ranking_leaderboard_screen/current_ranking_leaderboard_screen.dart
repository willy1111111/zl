import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/current_ranking_leaderboard_controller.dart';
import './widgets/ranking_item_widget.dart';

class CurrentRankingLeaderboardScreen
    extends GetWidget<CurrentRankingLeaderboardController> {
  const CurrentRankingLeaderboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Current Ranking',
        showBackButton: true,
        showStatusBar: true,
        balanceAmount: '₱1980.00',
        balanceIcon: ImageConstant.imgGroup736,
        actionIcon: ImageConstant.img1LightGreenA700,
        backgroundColor: appTheme.colorFF1B1C,
        onBackPressed: () => Get.back(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                borderRadius: BorderRadius.circular(10.h),
              ),
              child: Stack(
                children: [
                  // Date Range
                  Positioned(
                    top: 18.h,
                    left: 110.h,
                    child: Text(
                      '2025/03/02-2025/04/12',
                      style: TextStyleHelper.instance.body12
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),

                  // Background Ellipse
                  Positioned(
                    top: 33.h,
                    right: 30.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse626,
                      height: 303.h,
                      width: 88.h,
                    ),
                  ),

                  // Table Headers
                  Positioned(
                    top: 58.h,
                    left: 21.h,
                    right: 21.h,
                    child: Row(
                      children: [
                        Text(
                          '#',
                          style: TextStyleHelper.instance.body12,
                        ),
                        SizedBox(width: 37.h),
                        Text(
                          'user',
                          style: TextStyleHelper.instance.body12,
                        ),
                        SizedBox(width: 42.h),
                        Text(
                          'Direct Invite Quantity',
                          style: TextStyleHelper.instance.body12,
                        ),
                        Spacer(),
                        Text(
                          'prize',
                          style: TextStyleHelper.instance.body12,
                        ),
                      ],
                    ),
                  ),

                  // Ranking List
                  Positioned(
                    top: 81.h,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Obx(() => ListView.builder(
                          itemCount: controller.rankingItems.length,
                          itemBuilder: (context, index) {
                            return RankingItemWidget(
                              rankingModel: controller.rankingItems[index],
                              index: index,
                            );
                          },
                        )),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomSheet: Container(
        height: 74.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: appTheme.colorFF2E32,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.h),
            topRight: Radius.circular(10.h),
          ),
        ),
        child: Stack(
          children: [
            // Your Badge
            Positioned(
              top: 0,
              left: 15.h,
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle34625104,
                    height: 18.h,
                    width: 32.h,
                  ),
                  Positioned(
                    top: 2.h,
                    left: 3.h,
                    child: Text(
                      'Your',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ],
              ),
            ),

            // Section Labels
            Positioned(
              top: 20.h,
              left: 30.h,
              child: Text(
                'Your Ranking',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
            Positioned(
              top: 20.h,
              left: 159.h,
              child: Text(
                'Your invite',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),
            Positioned(
              top: 20.h,
              left: 261.h,
              child: Text(
                'Your current Prize',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ),

            // Divider Lines
            Positioned(
              top: 26.h,
              left: 128.h,
              child: Container(
                width: 1.h,
                height: 20.h,
                color: appTheme.whiteCustom,
              ),
            ),
            Positioned(
              top: 26.h,
              left: 245.h,
              child: Container(
                width: 1.h,
                height: 20.h,
                color: appTheme.whiteCustom,
              ),
            ),

            // Values
            Positioned(
              top: 36.h,
              left: 59.h,
              child: Obx(() => Text(
                    controller.userRanking.value.toString() ?? '11',
                    style: TextStyleHelper.instance.body14,
                  )),
            ),
            Positioned(
              top: 36.h,
              left: 180.h,
              child: Obx(() => Text(
                    controller.userInviteCount.value.toString() ?? '10',
                    style: TextStyleHelper.instance.body14,
                  )),
            ),
            Positioned(
              top: 36.h,
              left: 281.h,
              child: Obx(() => Text(
                    controller.userCurrentPrize.value ?? '₱1500.23',
                    style: TextStyleHelper.instance.body14,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
