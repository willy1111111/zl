import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/agent_jackpot_history_ranking_controller.dart';
import './widgets/ranking_item_widget.dart';

class AgentJackpotHistoryRankingScreen
    extends GetWidget<AgentJackpotHistoryRankingController> {
  AgentJackpotHistoryRankingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: double.maxFinite,
        child: Stack(
          children: [
            // Glow Effect Background
            Positioned(
              top: 86.h,
              left: 128.h,
              child: Container(
                width: 120.h,
                height: 120.h,
                decoration: BoxDecoration(
                  color: appTheme.color7FFFA5,
                  borderRadius: BorderRadius.circular(60.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.colorFF8888,
                      blurRadius: 160.h,
                      spreadRadius: 4.h,
                    ),
                  ],
                ),
              ),
            ),

            // Main Content
            Column(
              children: [
                // Custom App Bar
                CustomAppBar(
                  title: 'History  Ranking',
                  showBackButton: true,
                  showStatusBar: true,
                  balanceAmount: '₱1980.00',
                  balanceIcon: ImageConstant.imgGroup736,
                  actionIcon: ImageConstant.img1LightGreenA700,
                  onBackPressed: () {
                    Get.back();
                  },
                ),

                SizedBox(height: 19.h),

                // Jackpot Section
                _buildJackpotSection(),

                SizedBox(height: 61.h),

                // Ranking Table
                Expanded(
                  child: _buildRankingTable(),
                ),

                // Bottom Sheet
                _buildBottomSheet(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 103.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGrasscpirlbv1,
                height: 19.h,
                width: 16.h,
              ),
              Container(
                margin: EdgeInsets.only(left: 8.h, right: 8.h),
                child: Text(
                  'AGENT JACKPOT',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFFFC8, height: 1.21),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGrasscpirlbv2,
                height: 19.h,
                width: 16.h,
              ),
            ],
          ),
          SizedBox(height: 7.h),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFB700), Color(0xFFFF9D00)],
              ),
            ),
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFFB700), Color(0xFFFF9D00)],
              ).createShader(bounds),
              child: Text(
                '₱15,666,523.70',
                style: TextStyleHelper.instance.headline24Bold
                    .copyWith(height: 1.17),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRankingTable() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15.h),
      padding: EdgeInsets.all(15.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date Range
          Center(
            child: Text(
              '2025/03/02-2025/04/12',
              style: TextStyleHelper.instance.body12
                  .copyWith(color: appTheme.whiteCustom, height: 1.17),
            ),
          ),

          SizedBox(height: 25.h),

          // Table Headers
          _buildTableHeaders(),

          SizedBox(height: 8.h),

          // Ranking List
          Expanded(
            child: Stack(
              children: [
                // Decorative Element
                Positioned(
                  top: -25.h,
                  right: -15.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEllipse626,
                    height: 303.h,
                    width: 88.h,
                  ),
                ),

                // Ranking Items
                Obx(() => ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: controller.rankingItems.length,
                      itemBuilder: (context, index) {
                        return RankingItemWidget(
                          rankingItemModel: controller.rankingItems[index],
                        );
                      },
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTableHeaders() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '#',
            style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
          ),
          Text(
            'user',
            style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
          ),
          Text(
            'Direct Invite Quantity',
            style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
          ),
          Text(
            'prize',
            style: TextStyleHelper.instance.body12.copyWith(height: 1.17),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      width: double.maxFinite,
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
          // Your Badge
          Positioned(
            top: 0,
            left: 15.h,
            child: Container(
              width: 32.h,
              height: 18.h,
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
                          .copyWith(color: appTheme.whiteCustom, height: 1.17),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Previous Ranking Info
          Positioned(
            top: 20.h,
            left: 33.h,
            right: 33.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Your previous ranking',
                      style: TextStyleHelper.instance.body12
                          .copyWith(color: appTheme.whiteCustom, height: 1.17),
                    ),
                    SizedBox(height: 2.h),
                    Obx(() => Text(
                          controller.agentJackpotHistoryRankingModel.value
                                  ?.previousRanking?.value ??
                              '50',
                          style: TextStyleHelper.instance.body14
                              .copyWith(height: 1.21),
                        )),
                  ],
                ),

                // Divider
                Container(
                  width: 1.h,
                  height: 20.h,
                  color: appTheme.whiteCustom,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Your previous Prize',
                      style: TextStyleHelper.instance.body12
                          .copyWith(color: appTheme.whiteCustom, height: 1.17),
                    ),
                    SizedBox(height: 2.h),
                    Obx(() => Text(
                          controller.agentJackpotHistoryRankingModel.value
                                  ?.previousPrize?.value ??
                              '₱1500.23',
                          style: TextStyleHelper.instance.body14
                              .copyWith(height: 1.21),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
