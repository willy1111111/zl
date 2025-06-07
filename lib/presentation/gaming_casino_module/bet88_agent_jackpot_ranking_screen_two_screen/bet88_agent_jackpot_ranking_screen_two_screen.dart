import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/bet88_agent_jackpot_ranking_screen_two_controller.dart';
import './widgets/ranking_item_widget.dart';
import './widgets/time_unit_widget.dart';

class Bet88AgentJackpotRankingScreenTwo extends StatelessWidget {
  Bet88AgentJackpotRankingScreenTwo({Key? key}) : super(key: key);

  final Bet88AgentJackpotRankingScreenTwoController controller =
      Get.put(Bet88AgentJackpotRankingScreenTwoController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildStatusBar(),
            _buildMainContent(),
            SizedBox(height: 80.h),
          ],
        ),
      ),
    );
  }

  Widget _buildStatusBar() {
    return Container(
      height: 68.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: appTheme.colorFF1B1C,
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF0000,
            offset: Offset(0, 2),
            blurRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 7.h,
            left: 10.h,
            child: CustomImageView(
              imagePath: ImageConstant.img1Black900,
              height: 13.h,
              width: 356.h,
            ),
          ),
          Positioned(
            top: 29.h,
            left: 237.h,
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup736,
                  height: 16.h,
                  width: 15.h,
                ),
                SizedBox(width: 8.h),
                Obx(() => Text(
                      controller.balanceAmount.value,
                      style: TextStyleHelper.instance.title16Bold
                          .copyWith(color: appTheme.colorFFFFC6, height: 1.19),
                    )),
                SizedBox(width: 8.h),
                CustomImageView(
                  imagePath: ImageConstant.img1LightGreenA700,
                  height: 14.h,
                  width: 16.h,
                ),
              ],
            ),
          ),
          Positioned(
            top: 27.h,
            left: 15.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgLogowj93128x124,
              height: 28.h,
              width: 124.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Container(
      width: double.infinity,
      child: Stack(
        children: [
          _buildJackpotSection(),
          _buildTimeRemainingCard(),
          _buildWinnerCard(),
          _buildMyPrizesButton(),
          _buildMyRankingCard(),
          _buildInviteButton(),
          _buildRankingList(),
          _buildViewMoreButton(),
        ],
      ),
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      height: 230.h,
      child: Stack(
        children: [
          Positioned(
            top: 19.h,
            left: 31.h,
            child: CustomImageView(
              imagePath: ImageConstant.img189x323,
              height: 189.h,
              width: 323.h,
            ),
          ),
          _buildAnimatedStars(),
          Positioned(
            top: 51.h,
            left: 21.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot,
              height: 160.h,
              width: 319.h,
            ),
          ),
          Positioned(
            top: 160.h,
            left: 93.h,
            child: Row(
              children: [
                Text(
                  '₱',
                  style: TextStyleHelper.instance.headline35
                      .copyWith(letterSpacing: 3, height: 1.2),
                ),
                SizedBox(width: 8.h),
                Obx(() => ShaderMask(
                      shaderCallback: (bounds) => LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFFDB909), Color(0xFFFFF971)],
                      ).createShader(bounds),
                      child: Text(
                        controller.jackpotAmount.value,
                        style: TextStyleHelper.instance.headline30Bold
                            .copyWith(height: 0.2, shadows: [
                          Shadow(
                            color: appTheme.colorFF6B02,
                            offset: Offset(0, 1),
                          ),
                        ]),
                      ),
                    )),
              ],
            ),
          ),
          Positioned(
            top: 230.h,
            right: 10.h,
            child: Row(
              children: [
                Container(
                  height: 19.h,
                  width: 16.h,
                  decoration: BoxDecoration(
                    border: Border.all(color: appTheme.colorFF8089),
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Center(
                    child: Text(
                      '?',
                      style: TextStyleHelper.instance.body12Black,
                    ),
                  ),
                ),
                SizedBox(width: 8.h),
                Text(
                  'Rules',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAnimatedStars() {
    return Stack(
      children: [
        _buildStar(93.h, 51.h, 12.h, 12.h),
        _buildStar(71.h, 78.h, 6.h, 6.h),
        _buildStar(102.h, 294.h, 10.h, 10.h),
        _buildStar(74.h, 287.h, 12.h, 12.h),
        _buildStar(63.h, 333.h, 12.h, 12.h, true),
        _buildStar(60.h, 309.h, 8.h, 8.h, true),
        _buildStar(55.h, 279.h, 6.h, 6.h, true),
        _buildStar(66.h, 68.h, 10.h, 10.h, true),
        _buildStar(102.h, 73.h, 10.h, 10.h),
        _buildStar(51.h, 19.h, 12.h, 12.h),
      ],
    );
  }

  Widget _buildStar(double top, double left, double height, double width,
      [bool hasShadow = false]) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: appTheme.colorFFF2C3,
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    color: appTheme.color888888,
                    offset: Offset(0, 4),
                    blurRadius: hasShadow && height >= 8 ? 2 : 1,
                  ),
                ]
              : null,
        ),
      ),
    );
  }

  Widget _buildTimeRemainingCard() {
    return Positioned(
      top: 258.h,
      left: 17.h,
      child: Container(
        height: 118.h,
        width: 169.h,
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Time Remaining',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
            SizedBox(height: 16.h),
            Obx(() => Row(
                  children: [
                    TimeUnitWidget(
                      value: controller.timeRemaining.value.days?.value ??
                          '06', // Modified: Added null safety handling
                      unit: 'Day',
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame2131329993,
                      height: 10.h,
                      width: 3.h,
                    ),
                    SizedBox(width: 8.h),
                    TimeUnitWidget(
                      value: controller.timeRemaining.value.hours?.value ??
                          '11', // Modified: Added null safety handling
                      unit: 'Hour',
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame2131329993,
                      height: 10.h,
                      width: 3.h,
                    ),
                    SizedBox(width: 8.h),
                    TimeUnitWidget(
                      value: controller.timeRemaining.value.minutes?.value ??
                          '38', // Modified: Added null safety handling
                      unit: 'Minute',
                    ),
                    SizedBox(width: 8.h),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame2131329993,
                      height: 10.h,
                      width: 3.h,
                    ),
                    SizedBox(width: 8.h),
                    TimeUnitWidget(
                      value: controller.timeRemaining.value.seconds?.value ??
                          '47', // Modified: Added null safety handling
                      unit: 'Second',
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildWinnerCard() {
    return Positioned(
      top: 256.h,
      left: 191.h,
      child: Container(
        height: 119.h,
        width: 171.h,
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWinner2gwm0lk,
                  height: 51.h,
                  width: 56.h,
                ),
                Positioned(
                  top: 0,
                  left: 2.h,
                  child: Text(
                    'Winner',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              'Last champion',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF8089),
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329665,
                  height: 49.h,
                  width: 36.h,
                ),
                SizedBox(width: 8.h),
                Expanded(
                  child: Obx(() => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            controller.lastChampion.value.userId?.value ??
                                '103****839', // Modified: Added null safety handling
                            style: TextStyleHelper.instance.body12
                                .copyWith(color: appTheme.whiteCustom),
                          ),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Invite ',
                                  style: TextStyleHelper.instance.body12,
                                ),
                                TextSpan(
                                  text: controller.lastChampion.value
                                          .inviteCount?.value ??
                                      '1011 ', // Modified: Added null safety handling
                                  style: TextStyleHelper.instance.body12
                                      .copyWith(color: appTheme.colorFFFFC6),
                                ),
                                TextSpan(
                                  text: 'peple',
                                  style: TextStyleHelper.instance.body12,
                                ),
                              ],
                            ),
                          ),
                          Text(
                            controller.lastChampion.value.prizeAmount?.value ??
                                '₱ 66,408.66', // Modified: Added null safety handling
                            style: TextStyleHelper.instance.label10
                                .copyWith(color: appTheme.colorFFFFC6),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMyPrizesButton() {
    return Positioned(
      top: 224.h,
      left: 17.h,
      child: GestureDetector(
        onTap: () => controller.onMyPrizesTap(),
        child: Container(
          height: 26.h,
          width: 88.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
            ),
            borderRadius: BorderRadius.circular(13.h),
          ),
          child: Stack(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgSubtractWhiteA700,
                      height: 14.h,
                      width: 13.h,
                    ),
                    SizedBox(width: 4.h),
                    Text(
                      'My Prizes',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -3.h,
                right: -2.h,
                child: Container(
                  height: 9.h,
                  width: 17.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFFCC2D,
                    borderRadius: BorderRadius.circular(4.h),
                  ),
                  child: Center(
                    child: Obx(() => Text(
                          controller.prizeCount.value.toString(),
                          style: TextStyleHelper.instance.label10,
                        )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMyRankingCard() {
    return Positioned(
      top: 386.h,
      left: 17.h,
      child: Container(
        height: 120.h,
        width: 345.h,
        padding: EdgeInsets.all(16.h),
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup443,
                      height: 36.h,
                      width: 36.h,
                    ),
                    SizedBox(width: 16.h),
                    Expanded(
                      child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                controller.userRanking.value.userId?.value ??
                                    '103****839', // Modified: Added null safety handling
                                style: TextStyleHelper.instance.body12
                                    .copyWith(color: appTheme.whiteCustom),
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'invite',
                                      style: TextStyleHelper.instance.body12,
                                    ),
                                    TextSpan(
                                      text:
                                          ' ${controller.userRanking.value.inviteAmount?.value ?? '66,408.66'}', // Modified: Added null safety handling
                                      style: TextStyleHelper.instance.body12
                                          .copyWith(
                                              color: appTheme.whiteCustom),
                                    ),
                                    TextSpan(
                                      text: ' To reach',
                                      style: TextStyleHelper.instance.body12,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                    Container(
                      height: 16.h,
                      width: 41.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF9F42,
                        borderRadius: BorderRadius.circular(8.h),
                      ),
                      child: Center(
                        child: Text(
                          'Top 10',
                          style: TextStyleHelper.instance.label10,
                        ),
                      ),
                    ),
                    SizedBox(width: 8.h),
                    Container(
                      height: 19.h,
                      width: 16.h,
                      decoration: BoxDecoration(
                        border: Border.all(color: appTheme.colorFF8089),
                        borderRadius: BorderRadius.circular(8.h),
                      ),
                      child: Center(
                        child: Text(
                          '?',
                          style: TextStyleHelper.instance.body12Black,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Container(
                  height: 1.h,
                  width: 315.h,
                  color: appTheme.whiteCustom,
                ),
                SizedBox(height: 8.h),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'My Ranking',
                            style: TextStyleHelper.instance.body12,
                          ),
                          Obx(() => Text(
                                controller.userRanking.value.currentRank?.value
                                        .toString() ??
                                    '8', // Modified: Added null safety handling
                                style: TextStyleHelper.instance.body15Bold,
                              )),
                        ],
                      ),
                    ),
                    Container(
                      height: 30.h,
                      width: 1.h,
                      color: appTheme.whiteCustom,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'invite user',
                            style: TextStyleHelper.instance.body12,
                          ),
                          Obx(() => Text(
                                controller.userRanking.value.inviteUserCount
                                        ?.value
                                        .toString() ??
                                    '20', // Modified: Added null safety handling
                                style: TextStyleHelper.instance.body15Bold,
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                height: 26.h,
                width: 62.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteCustom,
                  border: Border.all(color: appTheme.whiteCustom),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(6.h),
                    topRight: Radius.circular(6.h),
                    bottomLeft: Radius.circular(6.h),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.color888888,
                      offset: Offset(0, 4),
                      blurRadius: 8,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameWhiteA700,
                      height: 14.h,
                      width: 14.h,
                    ),
                    SizedBox(width: 4.h),
                    Text(
                      'Your',
                      style: TextStyleHelper.instance.body12
                          .copyWith(color: appTheme.whiteCustom),
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

  Widget _buildInviteButton() {
    return Positioned(
      top: 521.h,
      left: 27.h,
      child: GestureDetector(
        onTap: () => controller.onInviteTap(),
        child: Container(
          height: 40.h,
          width: 321.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF76CD00), Color(0xFF478A03)],
            ),
            borderRadius: BorderRadius.circular(20.h),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Invite',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.whiteCustom),
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgFrameWhiteA70020x20,
                height: 20.h,
                width: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRankingList() {
    return Positioned(
      top: 271.h,
      left: 107.h,
      child: Container(
        height: 570.h,
        width: 345.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Column(
          children: [
            _buildRankingHeader(),
            _buildRankingTableHeader(),
            Expanded(
              child: Obx(() => ListView.builder(
                    itemCount: controller.rankingList.length,
                    itemBuilder: (context, index) {
                      return RankingItemWidget(
                        rankingModel: controller.rankingList[index],
                        isUserRank:
                            controller.rankingList[index].rank?.value == 8,
                      );
                    },
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRankingHeader() {
    return Container(
      height: 48.h,
      child: Stack(
        children: [
          Positioned(
            top: -176.h,
            left: 150.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgEllipse626,
              height: 303.h,
              width: 88.h,
            ),
          ),
          Positioned(
            top: 12.h,
            left: 268.h,
            child: Container(
              height: 24.h,
              width: 65.h,
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(4.h),
              ),
              child: Row(
                children: [
                  Text(
                    'history',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  SizedBox(width: 8.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgUnionIndigo400,
                    height: 7.h,
                    width: 7.h,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10.h,
            left: 0,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector28x75,
                  height: 28.h,
                  width: 75.h,
                ),
                Positioned(
                  top: 7.h,
                  left: 4.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFrameWhiteA70015x15,
                    height: 15.h,
                    width: 15.h,
                  ),
                ),
                Positioned(
                  top: 8.h,
                  left: 21.h,
                  child: Text(
                    'Active',
                    style: TextStyleHelper.instance.label11Bold,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 27.h,
            left: 110.h,
            child: Text(
              '2025/03/02-2025/04/12',
              style: TextStyleHelper.instance.body12
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRankingTableHeader() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 8.h),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: appTheme.whiteCustom, width: 1.h),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '#',
            style: TextStyleHelper.instance.body12,
          ),
          Text(
            'user',
            style: TextStyleHelper.instance.body12,
          ),
          Text(
            'Direct Invite Quantity',
            style: TextStyleHelper.instance.body12,
          ),
          Text(
            'prize',
            style: TextStyleHelper.instance.body12,
          ),
        ],
      ),
    );
  }

  Widget _buildViewMoreButton() {
    return Positioned(
      top: 1115.h,
      left: 15.h,
      child: GestureDetector(
        onTap: () => controller.onViewMoreTap(),
        child: Container(
          height: 40.h,
          width: 345.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(20.h),
          ),
          child: Center(
            child: Text(
              'View More',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF85D4),
            ),
          ),
        ),
      ),
    );
  }
}
