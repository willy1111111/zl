import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/current_ranking_leaderboard_screen_two_controller.dart';
import './widgets/ranking_item_widget.dart';

class CurrentRankingLeaderboardScreenTwo
    extends GetWidget<CurrentRankingLeaderboardScreenTwoController> {
  CurrentRankingLeaderboardScreenTwo({Key? key}) : super(key: key);

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
        onBackPressed: () => Get.back(),
      ),
      body: _buildMainContent(),
      bottomSheet: _buildBottomUserStats(),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.only(
        left: 15.h,
        right: 15.h,
        top: 15.h,
        bottom: 74.h,
      ),
      child: Container(
        width: 345.h,
        height: 702.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Stack(
          children: [
            _buildDateRange(),
            _buildDecorativeElement(),
            _buildTableHeaders(),
            _buildRankingList(),
          ],
        ),
      ),
    );
  }

  Widget _buildDateRange() {
    return Positioned(
      top: 18.h,
      left: 110.h,
      child: Text(
        '2025/03/02-2025/04/12',
        style: TextStyleHelper.instance.body12
            .copyWith(color: appTheme.whiteCustom, height: 1.17),
      ),
    );
  }

  Widget _buildDecorativeElement() {
    return Positioned(
      top: 33.h,
      left: 257.h,
      child: CustomImageView(
        imagePath: ImageConstant.imgEllipse626,
        width: 88.h,
        height: 303.h,
      ),
    );
  }

  Widget _buildTableHeaders() {
    return Positioned(
      top: 58.h,
      left: 21.h,
      child: SizedBox(
        width: 292.h,
        child: Row(
          children: [
            Text(
              '#',
              style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
            ),
            SizedBox(width: 37.h),
            Text(
              'user',
              style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
            ),
            SizedBox(width: 42.h),
            Text(
              'Direct Invite Quantity',
              style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
            ),
            SizedBox(width: 28.h),
            Text(
              'prize',
              style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRankingList() {
    return Positioned(
      top: 81.h,
      left: 0,
      child: Obx(() => SizedBox(
            width: 345.h,
            height: 560.h,
            child: ListView.builder(
              itemCount: controller.rankingItems.length,
              itemBuilder: (context, index) {
                return RankingItemWidget(
                  rankingItem: controller.rankingItems[index],
                  isEven: index % 2 == 0,
                );
              },
            ),
          )),
    );
  }

  Widget _buildBottomUserStats() {
    return Container(
      width: 375.h,
      height: 74.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2E32,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.h),
          topRight: Radius.circular(10.h),
        ),
      ),
      child: Stack(
        children: [
          _buildYouBadge(),
          _buildStatsLabels(),
          _buildDividerLines(),
          _buildStatsValues(),
        ],
      ),
    );
  }

  Widget _buildYouBadge() {
    return Positioned(
      top: 0,
      left: 15.h,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle34625104,
            width: 32.h,
            height: 18.h,
          ),
          Positioned(
            top: 0,
            left: 3.h,
            child: Text(
              'Your',
              style: TextStyleHelper.instance.body12Bold
                  .copyWith(color: appTheme.whiteCustom, height: 1.17),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatsLabels() {
    return Positioned(
      top: 20.h,
      left: 30.h,
      child: Row(
        children: [
          Text(
            'Your Ranking',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.whiteCustom, height: 1.17),
          ),
          SizedBox(width: 57.h),
          Text(
            'Your invite',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.whiteCustom, height: 1.17),
          ),
          SizedBox(width: 45.h),
          Text(
            'Your current Prize',
            style: TextStyleHelper.instance.body12
                .copyWith(color: appTheme.whiteCustom, height: 1.17),
          ),
        ],
      ),
    );
  }

  Widget _buildDividerLines() {
    return Stack(
      children: [
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
      ],
    );
  }

  Widget _buildStatsValues() {
    return Positioned(
      top: 36.h,
      left: 39.h,
      child: Obx(() => Row(
            children: [
              Text(
                controller.userStats.value?.ranking?.value ?? 'No rank',
                style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
              ),
              SizedBox(width: 89.h),
              Text(
                controller.userStats.value?.inviteCount?.value ?? '0',
                style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
              ),
              SizedBox(width: 111.h),
              Text(
                controller.userStats.value?.currentPrize?.value ?? '₱0',
                style: TextStyleHelper.instance.body14.copyWith(height: 1.21),
              ),
            ],
          )),
    );
  }
}
