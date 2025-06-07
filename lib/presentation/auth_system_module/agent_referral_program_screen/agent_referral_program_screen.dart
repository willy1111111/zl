import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'controller/agent_referral_program_controller.dart';

class AgentReferralProgramScreen
    extends GetWidget<AgentReferralProgramController> {
  const AgentReferralProgramScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68.h),
        child: CustomAppBar(
          backgroundColor: appTheme.colorFF1B1C,
          logoImagePath: ImageConstant.imgLogowj931,
          balanceAmount: '₱1980.00',
          profileIconPath: ImageConstant.imgGroup736,
          batteryIconPath: ImageConstant.img1LightGreenA700,
          showShadow: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildHeroSection(),
            _buildAgentIncomeSection(),
            _buildRegistrationBonusSection(),
            _buildDepositBonusSection(),
            _buildAchievementRewardsSection(),
            _buildAgentRankingRewardsSection(),
            _buildQualifiedBonusesSection(),
            _buildDepositRebateSection(),
            _buildBettingRebateSection(),
            SizedBox(height: 120.h),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 44.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF76CD00), Color(0xFF478A03)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.circular(22.h),
        ),
        child: ElevatedButton(
          onPressed: () => controller.onInvitePressed(),
          style: ElevatedButton.styleFrom(
            backgroundColor: appTheme.transparentCustom,
            shadowColor: appTheme.transparentCustom,
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.h),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrame1321314650,
                height: 20.h,
                width: 20.h,
              ),
              SizedBox(width: 8.h),
              Text(
                'invite',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.whiteCustom),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeroSection() {
    return Container(
      height: 530.h,
      width: double.infinity,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage560,
            height: 530.h,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Positioned(
            left: 50.h,
            top: 150.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Invite Friends To Earn',
                  style: TextStyleHelper.instance.headline28
                      .copyWith(height: 1.18),
                ),
                SizedBox(height: 8.h),
                Container(
                  child: Text(
                    'Rebate Rate: Maximum',
                    style: TextStyleHelper.instance.title22Bold
                        .copyWith(height: 1.18),
                  ),
                ),
                SizedBox(height: 16.h),
                Container(
                  child: Text(
                    '0.8%',
                    style: TextStyleHelper.instance.display40Bold
                        .copyWith(height: 1.15),
                  ),
                ),
                SizedBox(height: 24.h),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(6.h),
                  ),
                  child: ElevatedButton(
                    onPressed: () => controller.onRegisterPressed(),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: appTheme.transparentCustom,
                      shadowColor: appTheme.transparentCustom,
                      padding: EdgeInsets.symmetric(
                          horizontal: 26.h, vertical: 10.h),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.h),
                      ),
                    ),
                    child: Text(
                      'Register & Earn',
                      style: TextStyleHelper.instance.title16Bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 107.h,
            left: 41.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage,
              height: 107.h,
              width: 93.h,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1064,
              height: 288.h,
              width: 337.h,
            ),
          ),
          Positioned(
            top: 265.h,
            left: 23.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage554,
              height: 41.h,
              width: 39.h,
            ),
          ),
          Positioned(
            top: 363.h,
            left: 60.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1067,
              height: 57.h,
              width: 55.h,
            ),
          ),
          Positioned(
            top: 256.h,
            right: 32.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage490,
              height: 69.h,
              width: 69.h,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAgentIncomeSection() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF25282D), Color(0xFF1E2024)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.h),
          topRight: Radius.circular(20.h),
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      padding: EdgeInsets.fromLTRB(30.h, 12.h, 30.h, 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 5.h,
            width: 16.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF85D4,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            'AGENT 7 MAJOR INCOME',
            style: TextStyleHelper.instance.title22Black.copyWith(height: 1.45),
          ),
          SizedBox(height: 8.h),
          Text(
            'JILITAKA new referral program',
            style: TextStyleHelper.instance.title16.copyWith(height: 1.19),
          ),
          SizedBox(height: 4.h),
          Text(
            'Enjoy 7 super commissions for agents',
            style: TextStyleHelper.instance.title16
                .copyWith(color: appTheme.colorFF8089, height: 1.19),
          ),
        ],
      ),
    );
  }

  Widget _buildRegistrationBonusSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(15.h, 0, 15.h, 10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 4.h,
            offset: Offset(0, 4.h),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF3134,
              borderRadius: BorderRadius.circular(8.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF8888,
                  blurRadius: 4.h,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            padding: EdgeInsets.all(16.h),
            child: Row(
              children: [
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2131329925,
                      height: 60.h,
                      width: 62.h,
                    ),
                    Positioned(
                      top: 15.h,
                      left: 35.h,
                      child: Text(
                        '1',
                        style: TextStyleHelper.instance.title22Bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Each Registration Bonus',
                          style: TextStyleHelper.instance.body15Bold.copyWith(
                              color: appTheme.colorFFFFC6, height: 1.2),
                        ),
                        TextSpan(
                          text: ' +₱2',
                          style: TextStyleHelper.instance.body15Bold
                              .copyWith(height: 1.2),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329910,
                  height: 28.h,
                  width: 28.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '+',
                      style: TextStyleHelper.instance.title18Bold
                          .copyWith(color: appTheme.colorFFFFC6),
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      '₱2',
                      style: TextStyleHelper.instance.headline32Bold,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Text(
                  'Each additional invitee who successfully registers +₱2',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF8089, height: 1.14),
                ),
                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgTdr23,
                    height: 80.h,
                    width: 75.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDepositBonusSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(15.h, 0, 15.h, 10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF3134,
              borderRadius: BorderRadius.circular(8.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF8888,
                  blurRadius: 4.h,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            padding: EdgeInsets.all(16.h),
            child: Row(
              children: [
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2131329925,
                      height: 60.h,
                      width: 62.h,
                    ),
                    Positioned(
                      top: 15.h,
                      left: 35.h,
                      child: Text(
                        '2',
                        style: TextStyleHelper.instance.title22Bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Each Deposit Bonus',
                          style: TextStyleHelper.instance.body15Bold
                              .copyWith(height: 1.2),
                        ),
                        TextSpan(
                          text: ' +₱5',
                          style: TextStyleHelper.instance.body15Bold.copyWith(
                              color: appTheme.colorFFFFC6, height: 1.2),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329910,
                  height: 28.h,
                  width: 28.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      '+',
                      style: TextStyleHelper.instance.title18Bold
                          .copyWith(color: appTheme.colorFFFFC6),
                    ),
                    SizedBox(width: 8.h),
                    Text(
                      '₱5',
                      style: TextStyleHelper.instance.headline32Bold,
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                Text(
                  'Each additional invitee who successfully deposits any amount +₱5',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF8089, height: 1.14),
                ),
                SizedBox(height: 16.h),
                Align(
                  alignment: Alignment.centerRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgImage1088,
                    height: 90.h,
                    width: 90.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAchievementRewardsSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(15.h, 0, 15.h, 10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2F33,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: appTheme.colorFF3134,
                borderRadius: BorderRadius.circular(8.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.colorFF8888,
                    blurRadius: 4.h,
                    offset: Offset(0, 4.h),
                  ),
                ],
              ),
              padding: EdgeInsets.all(16.h),
              child: Row(
                children: [
                  Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup2131329925,
                        height: 60.h,
                        width: 62.h,
                      ),
                      Positioned(
                        top: 15.h,
                        left: 35.h,
                        child: Text(
                          '3',
                          style: TextStyleHelper.instance.title22Bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 16.h),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Maximum achievement reward\nis ',
                            style: TextStyleHelper.instance.body15Bold
                                .copyWith(height: 1.13),
                          ),
                          TextSpan(
                            text: '+₱8888',
                            style: TextStyleHelper.instance.body15Bold.copyWith(
                                color: appTheme.colorFFFFC6, height: 1.13),
                          ),
                        ],
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup2131329910,
                    height: 28.h,
                    width: 28.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  Obx(() => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          controller.achievementMilestones.length,
                          (index) => Column(
                            children: [
                              CustomImageView(
                                imagePath: controller
                                        .achievementMilestones[index]
                                        .iconPath
                                        ?.value ??
                                    '',
                                height: controller.achievementMilestones[index]
                                        .iconHeight?.value ??
                                    40.h,
                                width: controller.achievementMilestones[index]
                                        .iconWidth?.value ??
                                    40.h,
                              ),
                              SizedBox(height: 8.h),
                              Text(
                                controller.achievementMilestones[index].amount
                                        ?.value ??
                                    '',
                                style: TextStyleHelper.instance.body12Bold
                                    .copyWith(color: appTheme.colorFFFFC6),
                              ),
                              Text(
                                controller.achievementMilestones[index]
                                        .userCount?.value ??
                                    '',
                                style: TextStyleHelper.instance.body12Bold,
                              ),
                              Text(
                                'Users',
                                style: TextStyleHelper.instance.label11
                                    .copyWith(color: appTheme.colorFF8089),
                              ),
                            ],
                          ),
                        ),
                      )),
                  SizedBox(height: 20.h),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFw12003,
                        height: 150.h,
                        width: 150.h,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGroup2131329932,
                        height: 82.h,
                        width: 68.h,
                      ),
                      Positioned(
                        bottom: 46.h,
                        child: Container(
                          decoration: BoxDecoration(
                            color: appTheme.colorFF3634,
                            borderRadius: BorderRadius.circular(4.h),
                          ),
                          padding: EdgeInsets.fromLTRB(3.h, 12.h, 3.h, 12.h),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgJilitaka1,
                            height: 20.h,
                            width: 20.h,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    '※All agents enjoy the same registration bonus,deposit bonus.They can all participate in achievement rewards and agent ranking bonus.',
                    style:
                        TextStyleHelper.instance.body12.copyWith(height: 1.33),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    '※The main difference between agent levels is qualified bonus,and deposit rebate bonus.the betting rebate Bonus.',
                    style:
                        TextStyleHelper.instance.body12.copyWith(height: 1.33),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentRankingRewardsSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(15.h, 0, 15.h, 10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF3134,
              borderRadius: BorderRadius.circular(8.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF0000,
                  blurRadius: 2.h,
                  offset: Offset(0, 2.h),
                ),
              ],
            ),
            padding: EdgeInsets.all(16.h),
            child: Row(
              children: [
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2131329925,
                      height: 60.h,
                      width: 62.h,
                    ),
                    Positioned(
                      top: 15.h,
                      left: 35.h,
                      child: Text(
                        '4',
                        style: TextStyleHelper.instance.title22Bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Agent Ranking Rewards up to ',
                          style: TextStyleHelper.instance.body15Bold
                              .copyWith(height: 1.13),
                        ),
                        TextSpan(
                          text: '+₱8999',
                          style: TextStyleHelper.instance.body15Bold.copyWith(
                              color: appTheme.colorFFFFC6, height: 1.13),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329910,
                  height: 28.h,
                  width: 28.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(22.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Only directly invited qualified users within a week are counted',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF8089, height: 1.14),
                ),
                SizedBox(height: 16.h),
                Text(
                  'Leaderboard rewards are settled every Monday at 0:00',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF8089, height: 1.14),
                ),
                SizedBox(height: 24.h),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: appTheme.whiteCustom),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: appTheme.colorFF3B39,
                                  border:
                                      Border.all(color: appTheme.whiteCustom),
                                ),
                                padding: EdgeInsets.all(16.h),
                                child: Text(
                                  'Ranking',
                                  style: TextStyleHelper.instance.body14
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: appTheme.colorFF3B39,
                                  border:
                                      Border.all(color: appTheme.whiteCustom),
                                ),
                                padding: EdgeInsets.all(16.h),
                                child: Text(
                                  'Bonus',
                                  style: TextStyleHelper.instance.body14
                                      .copyWith(color: appTheme.whiteCustom),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Obx(() => Column(
                            children: List.generate(
                              controller.rankingItems.length,
                              (index) => Container(
                                decoration: BoxDecoration(
                                  border:
                                      Border.all(color: appTheme.whiteCustom),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: appTheme.colorFF0000,
                                          border: Border.all(
                                              color: appTheme.whiteCustom),
                                        ),
                                        padding: EdgeInsets.all(16.h),
                                        child: controller.rankingItems[index]
                                                    .iconPath?.value !=
                                                null
                                            ? Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: controller
                                                            .rankingItems[index]
                                                            .iconPath
                                                            ?.value ??
                                                        '',
                                                    height: 25.h,
                                                    width: 21.h,
                                                  ),
                                                  SizedBox(width: 8.h),
                                                  Text(
                                                    controller
                                                            .rankingItems[index]
                                                            .rank
                                                            ?.value ??
                                                        '',
                                                    style: TextStyleHelper
                                                        .instance.body13Bold
                                                        .copyWith(
                                                            color: Color(controller
                                                                    .rankingItems[
                                                                        index]
                                                                    .textColor
                                                                    ?.value ??
                                                                0xFFB16208)),
                                                  ),
                                                ],
                                              )
                                            : Text(
                                                controller.rankingItems[index]
                                                        .rank?.value ??
                                                    '',
                                                style: TextStyleHelper
                                                    .instance.body14
                                                    .copyWith(
                                                        color: appTheme
                                                            .colorFF8089),
                                                textAlign: TextAlign.center,
                                              ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          color: appTheme.colorFF0000,
                                          border: Border.all(
                                              color: appTheme.whiteCustom),
                                        ),
                                        padding: EdgeInsets.all(16.h),
                                        child: Text(
                                          controller.rankingItems[index].bonus
                                                  ?.value ??
                                              '',
                                          style: TextStyleHelper.instance.body14
                                              .copyWith(
                                                  color: appTheme.colorFFFFC6),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQualifiedBonusesSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(15.h, 0, 15.h, 10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF3134,
              borderRadius: BorderRadius.circular(8.h),
            ),
            padding: EdgeInsets.all(16.h),
            child: Row(
              children: [
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2131329925,
                      height: 60.h,
                      width: 62.h,
                    ),
                    Positioned(
                      top: 15.h,
                      left: 35.h,
                      child: Text(
                        '5',
                        style: TextStyleHelper.instance.title22Bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Qualified Bonuses can receive up to ',
                          style: TextStyleHelper.instance.body15Bold
                              .copyWith(height: 1.13),
                        ),
                        TextSpan(
                          text: '+₱58',
                          style: TextStyleHelper.instance.body15Bold.copyWith(
                              color: appTheme.colorFFFFC6, height: 1.13),
                        ),
                        TextSpan(
                          text: ' Per Qualified User',
                          style: TextStyleHelper.instance.body15Bold
                              .copyWith(height: 1.13),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329910,
                  height: 28.h,
                  width: 28.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Qualified Users:',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.21),
                ),
                SizedBox(height: 8.h),
                Text(
                  '1. The invitee is the user you directly invited\n2. The minimum deposit amount of the invitee is ₱100,\n3. The effective betting amount of the invitee is ₱300,\n4. The invitee needs to complete the mobile phone number verification.',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF8089, height: 1.14),
                ),
                SizedBox(height: 24.h),
                Text(
                  'Qualified Bonus:',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.21),
                ),
                SizedBox(height: 8.h),
                _buildAgentTierTable(),
                SizedBox(height: 24.h),
                _buildUserHierarchyVisualization(),
                SizedBox(height: 16.h),
                Text(
                  'Remark:\nOnce the number of qualifed users from the same lP address reachestha limit of 5, subsequent users from the same lP will no longer becounted as qualihed usars',
                  style: TextStyleHelper.instance.body12.copyWith(height: 1.33),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAgentTierTable() {
    return Container(
      decoration: BoxDecoration(
        color: appTheme.colorFF3B39,
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: appTheme.whiteCustom),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3B39,
                      border: Border.all(color: appTheme.whiteCustom),
                    ),
                    padding: EdgeInsets.all(16.h),
                    child: Text(
                      'Agent Tier',
                      style: TextStyleHelper.instance.body14
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: appTheme.colorFF3B39,
                      border: Border.all(color: appTheme.whiteCustom),
                    ),
                    padding: EdgeInsets.all(16.h),
                    child: Text(
                      'Qualified Bonus/1 user',
                      style: TextStyleHelper.instance.body14
                          .copyWith(color: appTheme.whiteCustom),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(() => Column(
                children: List.generate(
                  controller.agentTiers.length,
                  (index) => Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: appTheme.whiteCustom),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: appTheme.colorFF0000,
                              border: Border.all(color: appTheme.whiteCustom),
                            ),
                            padding: EdgeInsets.all(16.h),
                            child: Text(
                              controller.agentTiers[index].tierName?.value ??
                                  '',
                              style: TextStyleHelper.instance.body14
                                  .copyWith(color: appTheme.colorFF8089),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: appTheme.colorFF0000,
                              border: Border.all(color: appTheme.whiteCustom),
                            ),
                            padding: EdgeInsets.all(16.h),
                            child: Text(
                              controller.agentTiers[index].qualifiedBonus
                                      ?.value ??
                                  '',
                              style: TextStyleHelper.instance.body14
                                  .copyWith(color: appTheme.colorFFFFC6),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget _buildUserHierarchyVisualization() {
    return Container(
      height: 340.h,
      child: Stack(
        children: [
          Positioned(
            top: 75.h,
            left: 153.h,
            child: Container(
              height: 40.h,
              width: 40.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF55C2FF), Color(0xFF4891FF)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20.h),
                border: Border.all(color: appTheme.colorFF0093, width: 5.h),
              ),
              child: Center(
                child: Text(
                  'YOU',
                  style: TextStyleHelper.instance.body14Black,
                ),
              ),
            ),
          ),
          Obx(() => Stack(
                children: List.generate(
                  controller.userHierarchy.length,
                  (index) => Positioned(
                    top: controller.userHierarchy[index].top?.value ?? 0,
                    left: controller.userHierarchy[index].left?.value ?? 0,
                    child: Column(
                      children: [
                        CustomImageView(
                          imagePath: controller
                                  .userHierarchy[index].imagePath?.value ??
                              '',
                          height: controller
                                  .userHierarchy[index].imageHeight?.value ??
                              34.h,
                          width: controller
                                  .userHierarchy[index].imageWidth?.value ??
                              34.h,
                        ),
                        SizedBox(height: 5.h),
                        Container(
                          decoration: BoxDecoration(
                            color: Color(controller
                                    .userHierarchy[index].labelBgColor?.value ??
                                0xFFFBBE0B),
                            borderRadius: BorderRadius.circular(5.h),
                          ),
                          height: 10.h,
                          width: 10.h,
                          child: Center(
                            child: Text(
                              controller.userHierarchy[index].label?.value ??
                                  '',
                              style: TextStyleHelper.instance.label6Bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )),
          Positioned(
            top: 187.h,
            left: 49.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131329574,
              height: 36.h,
              width: 16.h,
            ),
          ),
          Positioned(
            top: 187.h,
            left: 261.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup2131329574,
              height: 36.h,
              width: 16.h,
            ),
          ),
          Positioned(
            top: 156.h,
            left: 155.h,
            child: Text(
              'Level 1',
              style: TextStyleHelper.instance.label10Black,
            ),
          ),
          Positioned(
            top: 200.h,
            left: 154.h,
            child: Text(
              'Level 2',
              style: TextStyleHelper.instance.label10Black,
            ),
          ),
          Positioned(
            top: 239.h,
            left: 154.h,
            child: Text(
              'Level 3',
              style: TextStyleHelper.instance.label10Black,
            ),
          ),
          Positioned(
            top: 281.h,
            left: 154.h,
            child: Text(
              'Level 4',
              style: TextStyleHelper.instance.label10Black,
            ),
          ),
          Positioned(
            top: 171.h,
            left: 112.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'You get ',
                    style: TextStyleHelper.instance.label10Bold,
                  ),
                  TextSpan(
                    text: '0.4% form level 1',
                    style: TextStyleHelper.instance.label10Bold
                        .copyWith(color: appTheme.colorFFF652),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 214.h,
            left: 112.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'You get ',
                    style: TextStyleHelper.instance.label10Bold,
                  ),
                  TextSpan(
                    text: '0.3% form level 2',
                    style: TextStyleHelper.instance.label10Bold
                        .copyWith(color: appTheme.colorFFF652),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 254.h,
            left: 112.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'You get ',
                    style: TextStyleHelper.instance.label10Bold,
                  ),
                  TextSpan(
                    text: '0.2% form level 3',
                    style: TextStyleHelper.instance.label10Bold
                        .copyWith(color: appTheme.colorFFF652),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 298.h,
            left: 112.h,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'You get ',
                    style: TextStyleHelper.instance.label10Bold,
                  ),
                  TextSpan(
                    text: '0.1% form level 4',
                    style: TextStyleHelper.instance.label10Bold
                        .copyWith(color: appTheme.colorFFF652),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 101.h,
            left: 292.h,
            child: Column(
              children: [
                Text(
                  'get',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFFFFC6),
                ),
                Text(
                  '₱58',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFFFC6, shadows: [
                    Shadow(
                      color: appTheme.colorFF0000,
                      offset: Offset(2.h, 2.h),
                      blurRadius: 4.h,
                    ),
                  ]),
                ),
              ],
            ),
          ),
          Positioned(
            top: 140.h,
            left: 271.h,
            child: Column(
              children: [
                Text(
                  'get',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFFFFC6),
                ),
                Text(
                  '₱38',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFFFFC6, shadows: [
                    Shadow(
                      color: appTheme.colorFF0000,
                      offset: Offset(2.h, 2.h),
                      blurRadius: 4.h,
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDepositRebateSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(15.h, 0, 15.h, 10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF3134,
              borderRadius: BorderRadius.circular(8.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF8888,
                  blurRadius: 4.h,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            padding: EdgeInsets.all(16.h),
            child: Row(
              children: [
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2131329925,
                      height: 60.h,
                      width: 62.h,
                    ),
                    Positioned(
                      top: 15.h,
                      left: 35.h,
                      child: Text(
                        '6',
                        style: TextStyleHelper.instance.title22Bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'UP TO 1.1%',
                          style: TextStyleHelper.instance.body15Bold.copyWith(
                              color: appTheme.colorFFFFC6, height: 1.2),
                        ),
                        TextSpan(
                          text: ' Deposit Rebate',
                          style: TextStyleHelper.instance.body15Bold
                              .copyWith(height: 1.2),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329910,
                  height: 28.h,
                  width: 28.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'UP TO',
                          style: TextStyleHelper.instance.display40Bold
                              .copyWith(height: 1.15),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '1.1',
                                style: TextStyleHelper.instance.display60Bold
                                    .copyWith(height: 0.8),
                              ),
                              TextSpan(
                                text: '%',
                                style: TextStyleHelper.instance.headline32Bold,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 24.h),
                    Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgDeposit414b0417apng,
                          height: 133.h,
                          width: 133.h,
                        ),
                        Positioned(
                          top: 96.h,
                          left: 86.h,
                          child: Text(
                            '1.1%',
                            style: TextStyleHelper.instance.body15Bold
                                .copyWith(color: appTheme.colorFF171A),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 24.h),
                Text(
                  'When an invitee makes a deposit, the inviter will earn a commission',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF8089, height: 1.14),
                ),
                SizedBox(height: 16.h),
                Text(
                  'The maximum rebate rate for inviters is 1.1%',
                  style: TextStyleHelper.instance.body14
                      .copyWith(color: appTheme.colorFF8089, height: 1.21),
                ),
                SizedBox(height: 16.h),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'If your agent level is "Master Agent "，The direct invitee effectively deposit ',
                        style: TextStyleHelper.instance.body14.copyWith(
                            color: appTheme.colorFF8089, height: 1.14),
                      ),
                      TextSpan(
                        text: '₱1,000,000',
                        style: TextStyleHelper.instance.body14.copyWith(
                            color: appTheme.colorFFFFC6, height: 1.14),
                      ),
                      TextSpan(
                        text: ' and the inviter will receive a bonus of ',
                        style: TextStyleHelper.instance.body14.copyWith(
                            color: appTheme.colorFF8089, height: 1.14),
                      ),
                      TextSpan(
                        text: '1,000,000*1.1%=₱11,000',
                        style: TextStyleHelper.instance.body14.copyWith(
                            color: appTheme.colorFFFFC6, height: 1.14),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 24.h),
                Text(
                  'Bonus:',
                  style: TextStyleHelper.instance.body14Bold
                      .copyWith(color: appTheme.colorFF8089, height: 1.21),
                ),
                SizedBox(height: 8.h),
                _buildDepositRebateTable(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDepositRebateTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: appTheme.whiteCustom),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Agent Tier',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    'level 1',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    'level 2',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    'level 3',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    'level 4',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Junior Agent I',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Intermediate Agent l',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.1%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Senior Agent I',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.2%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.1%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Master Agent I',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.4%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.3%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.2%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Master Agent II',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.5%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.3%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.2%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Master Agent III',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.4%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.3%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.2%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBettingRebateSection() {
    return Container(
      margin: EdgeInsets.fromLTRB(15.h, 0, 15.h, 10.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: appTheme.colorFF3134,
              borderRadius: BorderRadius.circular(8.h),
              boxShadow: [
                BoxShadow(
                  color: appTheme.colorFF8888,
                  blurRadius: 4.h,
                  offset: Offset(0, 4.h),
                ),
              ],
            ),
            padding: EdgeInsets.all(16.h),
            child: Row(
              children: [
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgGroup2131329925,
                      height: 60.h,
                      width: 62.h,
                    ),
                    Positioned(
                      top: 15.h,
                      left: 35.h,
                      child: Text(
                        '7',
                        style: TextStyleHelper.instance.title22Bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '1%',
                              style: TextStyleHelper.instance.body15Bold
                                  .copyWith(
                                      color: appTheme.colorFFFFC6, height: 1.2),
                            ),
                            TextSpan(
                              text: ' Betting Rebate in 4 levels',
                              style: TextStyleHelper.instance.body15Bold
                                  .copyWith(height: 1.2),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        'Different agent have different rebate ratios',
                        style: TextStyleHelper.instance.body12
                            .copyWith(height: 1.17),
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgGroup2131329910,
                  height: 28.h,
                  width: 28.h,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'How much is the betting rebate?',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(height: 1.19),
                ),
                SizedBox(height: 16.h),
                Obx(() => Column(
                      children: List.generate(
                        controller.gameRebates.length,
                        (index) => Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: appTheme.colorFF2F2E,
                                border: Border.all(color: appTheme.whiteCustom),
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(8.h),
                                  topRight: Radius.circular(8.h),
                                ),
                              ),
                              padding: EdgeInsets.all(16.h),
                              child: Row(
                                children: [
                                  CustomImageView(
                                    imagePath: controller.gameRebates[index]
                                            .iconPath?.value ??
                                        '',
                                    height: controller.gameRebates[index]
                                            .iconHeight?.value ??
                                        24.h,
                                    width: controller.gameRebates[index]
                                            .iconWidth?.value ??
                                        24.h,
                                  ),
                                  SizedBox(width: 16.h),
                                  Text(
                                    controller.gameRebates[index].gameName
                                            ?.value ??
                                        '',
                                    style: TextStyleHelper.instance.body14Bold
                                        .copyWith(color: appTheme.whiteCustom),
                                  ),
                                ],
                              ),
                            ),
                            _buildGameRebateTable(),
                            if (index < controller.gameRebates.length - 1)
                              SizedBox(height: 24.h),
                          ],
                        ),
                      ),
                    )),
                SizedBox(height: 16.h),
                Text(
                  '※Different agent have different rebate ratios. You can also increase the rebate ratio by upgrading your Agent Tier',
                  style: TextStyleHelper.instance.body12.copyWith(height: 1.33),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGameRebateTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: appTheme.whiteCustom),
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Agent Tier',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    'level 1',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    'level 2',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    'level 3',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    'level 4',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.whiteCustom),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Junior Agent I',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Intermediate Agent l',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.1%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Senior Agent I',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.2%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.1%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '--',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Master Agent I',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.4%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.3%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.2%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Master Agent II',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.5%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.3%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2F2E,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.2%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 120.h,
                  child: Text(
                    'Master Agent III',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFF8089),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.7%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.4%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.3%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: appTheme.colorFF3B39,
                    border: Border.all(color: appTheme.whiteCustom),
                  ),
                  padding: EdgeInsets.all(8.h),
                  width: 80.h,
                  child: Text(
                    '0.2%',
                    style: TextStyleHelper.instance.body14
                        .copyWith(color: appTheme.colorFFFFC6),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
