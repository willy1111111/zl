import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/bet88_agent_jackpot_ranking_controller.dart';
import './widgets/countdown_timer_widget.dart';
import './widgets/ranking_item_widget.dart';

// Modified: Added missing dart:math import

class Bet88AgentJackpotRankingScreen extends StatelessWidget {
  Bet88AgentJackpotRankingScreen({Key? key}) : super(key: key);

  final Bet88AgentJackpotRankingController controller =
      Get.put(Bet88AgentJackpotRankingController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildJackpotSection(),
            _buildTimeRemainingAndWinnerSection(),
            _buildMyPrizesButton(),
            _buildUserStatsSection(),
            _buildInviteButton(),
            _buildRankingTableSection(),
            _buildViewMoreButton(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      logoImage: ImageConstant.imgLogowj93128x124,
      balanceAmount: '₱1980.00',
      balanceIcon: ImageConstant.imgGroup736,
      actionIcon: ImageConstant.img1LightGreenA700,
      height: 68.h,
      backgroundColor: appTheme.colorFF1B1C,
    );
  }

  Widget _buildJackpotSection() {
    return Container(
      height: 320.h,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 15.h,
            child: CustomImageView(
              imagePath: ImageConstant.img189x323,
              height: 189.h,
              width: 323.h,
            ),
          ),
          ..._buildStarElements(),
          Positioned(
            top: 30.h,
            left: 0,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgJackpot,
              height: 160.h,
              width: 319.h,
            ),
          ),
          Positioned(
            top: 220.h,
            left: 0,
            right: 0,
            child: _buildJackpotAmount(),
          ),
          Positioned(
            top: 298.h,
            right: 44.h,
            child: _buildRulesButton(),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildStarElements() {
    return [
      _buildStarElement(161.h, 51.h, 12.h, 12.h),
      _buildStarElement(139.h, 78.h, 6.h, 6.h),
      _buildStarElement(170.h, 294.h, 10.h, 10.h),
      _buildStarElement(142.h, 287.h, 12.h, 12.h),
      _buildStarElement(131.h, 333.h, 12.h, 12.h, hasShadow: true),
      _buildStarElement(128.h, 309.h, 8.h, 8.h, hasShadow: true),
      _buildStarElement(123.h, 279.h, 6.h, 6.h, hasShadow: true),
      _buildStarElement(134.h, 68.h, 10.h, 10.h, hasShadow: true),
      _buildStarElement(170.h, 73.h, 10.h, 10.h),
      _buildStarElement(119.h, 19.h, 12.h, 12.h),
    ];
  }

  Widget _buildStarElement(double top, double left, double width, double height,
      {bool hasShadow = false}) {
    return Positioned(
      top: top,
      left: left,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: appTheme.colorFFF2C3,
          boxShadow: hasShadow
              ? [
                  BoxShadow(
                    color: appTheme.color888888,
                    offset: Offset(0, 4.h),
                    blurRadius: hasShadow ? (width > 8 ? 2.h : 1.h) : 0,
                  ),
                ]
              : null,
        ),
        child: CustomPaint(
          painter: StarPainter(),
        ),
      ),
    );
  }

  Widget _buildJackpotAmount() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            '₱',
            style: TextStyleHelper.instance.headline35
                .copyWith(letterSpacing: 3, height: 1.2),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFDB909), Color(0xFFFFF971)],
              ),
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF6B02,
                  offset: Offset(0, 1.h),
                  blurRadius: 0,
                ),
              ],
            ),
            child: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFDB909), Color(0xFFFFF971)],
                ).createShader(bounds);
              },
              child: Text(
                '186,665,20',
                style: TextStyleHelper.instance.headline30Bold
                    .copyWith(height: 0.2),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRulesButton() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 16.h,
          height: 16.h,
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
    );
  }

  Widget _buildTimeRemainingAndWinnerSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [
          Expanded(
            child: _buildTimeRemainingCard(),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: _buildLastChampionCard(),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeRemainingCard() {
    return Container(
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
          CountdownTimerWidget(),
        ],
      ),
    );
  }

  Widget _buildLastChampionCard() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgWinner2gwm0lk,
                height: 51.h,
                width: 56.h,
              ),
              SizedBox(width: 8.h),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Winner',
                    style: TextStyleHelper.instance.body12Bold
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  Text(
                    'Last champion',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup2131329665,
                height: 36.h,
                width: 49.h,
              ),
              SizedBox(width: 12.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '103****839',
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
                            text: '1011 ',
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
                      '₱ 66,408.66',
                      style: TextStyleHelper.instance.label10
                          .copyWith(color: appTheme.colorFFFFC6),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMyPrizesButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Stack(
          children: [
            Container(
              height: 26.h,
              width: 88.h,
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                ),
                borderRadius: BorderRadius.circular(13.h),
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgSubtractWhiteA700,
                    height: 13.h,
                    width: 14.h,
                  ),
                  SizedBox(width: 8.h),
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
                  child: Text(
                    '18',
                    style: TextStyleHelper.instance.label10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUserStatsSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
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
                  SizedBox(width: 12.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '103****839',
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
                                text: ' 66,408.66',
                                style: TextStyleHelper.instance.body12
                                    .copyWith(color: appTheme.whiteCustom),
                              ),
                              TextSpan(
                                text: ' To reach',
                                style: TextStyleHelper.instance.body12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: appTheme.colorFF9F42,
                      borderRadius: BorderRadius.circular(8.h),
                    ),
                    child: Text(
                      'Top 10',
                      style: TextStyleHelper.instance.label10,
                    ),
                  ),
                  SizedBox(width: 8.h),
                  Container(
                    width: 16.h,
                    height: 16.h,
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
                color: appTheme.whiteCustom,
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Ranking',
                          style: TextStyleHelper.instance.body12,
                        ),
                        Text(
                          'No rank',
                          style: TextStyleHelper.instance.body15Bold,
                        ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'invite user',
                          style: TextStyleHelper.instance.body12,
                        ),
                        Text(
                          '0',
                          style: TextStyleHelper.instance.body15Bold,
                        ),
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
              padding: EdgeInsets.symmetric(horizontal: 8.h),
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
                    offset: Offset(0, 4.h),
                    blurRadius: 8.h,
                  ),
                ],
              ),
              child: Row(
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
    );
  }

  Widget _buildInviteButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      child: CustomButton(
        text: 'Invite',
        rightIcon: ImageConstant.imgFrameWhiteA70020x20,
        buttonVariant: CustomButtonVariant.gradientGreen,
        width: double.infinity,
        height: 40.h,
        onPressed: () => controller.onInvitePressed(),
      ),
    );
  }

  Widget _buildRankingTableSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          _buildTableHeader(),
          _buildRankingList(),
        ],
      ),
    );
  }

  Widget _buildTableHeader() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1E20,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.h),
          topRight: Radius.circular(10.h),
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
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
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
                decoration: BoxDecoration(
                  color: appTheme.colorFF85D4,
                  borderRadius: BorderRadius.circular(4.h),
                ),
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameWhiteA70015x15,
                      height: 15.h,
                      width: 15.h,
                    ),
                    SizedBox(width: 4.h),
                    Text(
                      'Active',
                      style: TextStyleHelper.instance.label11Bold,
                    ),
                  ],
                ),
              ),
              SizedBox(width: 8.h),
              Text(
                '2025/03/02-2025/04/12',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              SizedBox(
                width: 30.h,
                child: Text(
                  '#',
                  style: TextStyleHelper.instance.body12,
                ),
              ),
              SizedBox(
                width: 80.h,
                child: Text(
                  'user',
                  style: TextStyleHelper.instance.body12,
                ),
              ),
              Expanded(
                child: Text(
                  'Direct Invite Quantity',
                  style: TextStyleHelper.instance.body12,
                ),
              ),
              SizedBox(
                width: 60.h,
                child: Text(
                  'prize',
                  textAlign: TextAlign.end,
                  style: TextStyleHelper.instance.body12,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Container(
            height: 1.h,
            color: appTheme.whiteCustom,
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              SizedBox(
                width: 30.h,
                child: Text(
                  'No rank',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ),
              SizedBox(
                width: 80.h,
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle34625104,
                      height: 18.h,
                      width: 32.h,
                    ),
                    SizedBox(width: 4.h),
                    Text(
                      'Your',
                      style: TextStyleHelper.instance.body12Bold
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Text(
                  '0',
                  style: TextStyleHelper.instance.label11
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ),
              SizedBox(
                width: 60.h,
                child: Text(
                  '₱0',
                  textAlign: TextAlign.end,
                  style: TextStyleHelper.instance.label11
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRankingList() {
    return Container(
      constraints: BoxConstraints(maxHeight: 400.h),
      child: Obx(() => ListView.builder(
            shrinkWrap: true,
            itemCount: controller.rankingItems.length,
            itemBuilder: (context, index) {
              return RankingItemWidget(
                rankingItem: controller.rankingItems[index],
              );
            },
          )),
    );
  }

  Widget _buildViewMoreButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 24.h),
      child: CustomButton(
        text: 'View More',
        buttonVariant: CustomButtonVariant.gradientGreen,
        width: double.infinity,
        height: 40.h,
        fontStyle: TextStyleHelper.instance.body14Bold
            .copyWith(color: appTheme.colorFF85D4),
        onPressed: () => controller.onViewMorePressed(),
      ),
    );
  }
}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Color(0xFFF2C331)
      ..style = PaintingStyle.fill;

    final path = Path();
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final outerRadius = size.width / 2;
    final innerRadius = outerRadius * 0.4;

    for (int i = 0; i < 10; i++) {
      final angle = (i * 36 - 90) * (3.14159 / 180);
      final radius = i % 2 == 0 ? outerRadius : innerRadius;
      final x = centerX + radius * cos(angle);
      final y = centerY + radius * sin(angle);

      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

double cos(double angle) =>
    math.cos(angle); // Modified: Fixed undefined math reference
double sin(double angle) =>
    math.sin(angle); // Modified: Fixed undefined math reference
