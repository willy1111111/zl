import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_app_bar.dart';
import 'controller/agent_dashboard_controller.dart'; // Modified: Fixed import path
import 'widgets/income_card_widget.dart';
import 'widgets/benefit_item_widget.dart';
import 'widgets/income_item_widget.dart';
import 'widgets/reward_item_widget.dart';
import 'widgets/leaderboard_item_widget.dart';

class AgentDashboardScreenInitialPage extends StatelessWidget {
  AgentDashboardScreenInitialPage({Key? key}) : super(key: key);

  AgentDashboardController controller = Get.put(AgentDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 67.h),
            _buildAgentTierSection(),
            _buildAgentRequirementsLink(),
            _buildShareSection(),
            _buildTodaysIncomeSection(),
            _buildAgentIncomeSection(),
            _buildRewardsReleasedSection(),
            _buildRevenueGoalsSection(),
            _buildFooterLogos(),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      logoImagePath: ImageConstant.imgLogowj931,
      balanceAmount: '₱1980.00',
      profileIconPath: ImageConstant.imgGroup736,
      batteryIconPath: ImageConstant.img1LightGreenA700,
    );
  }

  Widget _buildAgentTierSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
        gradient: LinearGradient(
          begin: Alignment(0.32, -0.95),
          end: Alignment(-0.32, 0.95),
          colors: [
            Color(0x4CD869FF),
            appTheme.colorFF4891,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.colorFF8888,
            blurRadius: 21.h,
            offset: Offset(0, 4.h),
          ),
        ],
        border: Border.all(
          width: 1.h,
          color: appTheme.transparentCustom,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Agent Tier',
                style: TextStyleHelper.instance.body15Bold,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray400,
                height: 16.h,
                width: 16.h,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 4.h),
            decoration: BoxDecoration(
              color: appTheme.colorFFFF9E,
              borderRadius: BorderRadius.circular(9.h),
            ),
            child: Text(
              'Junior Agent I',
              style: TextStyleHelper.instance.body12
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
          SizedBox(height: 16.h),
          _buildProgressItem(
            ImageConstant.imgGroup2131329967,
            'Team Count',
            0.5,
            '5/10',
          ),
          SizedBox(height: 16.h),
          _buildProgressItem(
            ImageConstant.imgGroup2131329968,
            'Team Betting',
            0.3,
            '₱550.00/10000',
          ),
          SizedBox(height: 24.h),
          _buildBenefitsSection(),
        ],
      ),
    );
  }

  Widget _buildProgressItem(
      String iconPath, String label, double progress, String value) {
    return Row(
      children: [
        CustomImageView(
          imagePath: iconPath,
          height: 13.h,
          width: 18.h,
        ),
        SizedBox(width: 8.h),
        Text(
          label,
          style: TextStyleHelper.instance.body12
              .copyWith(color: appTheme.colorFF9DA6),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Container(
            height: 10.h,
            decoration: BoxDecoration(
              color: appTheme.blackCustom,
              borderRadius: BorderRadius.circular(5.h),
            ),
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: progress,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: label.contains('Team Count')
                        ? [Color(0xFF0C3BCE), Color(0xFF3AC4FF)]
                        : [Color(0xFF3617E8), Color(0xFF806AFF)],
                  ),
                  borderRadius: BorderRadius.circular(5.h),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 16.h),
        Text(
          value,
          style: TextStyleHelper.instance.label10,
        ),
      ],
    );
  }

  Widget _buildBenefitsSection() {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF1014,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'My Benefits',
            style: TextStyleHelper.instance.body15Bold,
          ),
          SizedBox(height: 16.h),
          Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 16.h,
                ),
                itemCount: controller.benefitItems.length,
                itemBuilder: (context, index) {
                  return BenefitItemWidget(
                    benefitItemModel: controller.benefitItems[index],
                  );
                },
              )),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgPolygon55BlueGray400,
                height: 14.h,
                width: 14.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup2131329969,
                height: 5.h,
                width: 35.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgPolygon56BlueGray400,
                height: 14.h,
                width: 14.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAgentRequirementsLink() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          'Agent Tier Requirements& Benefits',
          style: TextStyleHelper.instance.body14.copyWith(
              color: appTheme.colorFF85D4,
              decoration: TextDecoration.underline),
        ),
      ),
    );
  }

  Widget _buildShareSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img23653621,
                height: 62.h,
                width: 62.h,
              ),
              SizedBox(width: 16.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Share with friends',
                      style: TextStyleHelper.instance.title18Bold,
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      padding: EdgeInsets.all(8.h),
                      decoration: BoxDecoration(
                        color: appTheme.colorFF161D,
                        border: Border.all(color: appTheme.colorFF85D4),
                        borderRadius: BorderRadius.circular(6.h),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              'http://www.jbet88.co?reCode?=arrre...',
                              style: TextStyleHelper.instance.body14
                                  .copyWith(color: appTheme.colorFF85D4),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          SizedBox(width: 8.h),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgGroup14499LightGreenA700,
                            height: 35.h,
                            width: 35.h,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgSubtractWhiteA700,
                height: 18.h,
                width: 18.h,
              ),
            ],
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .img6afbb433afc026dcfdf9fbeec26198a2vibericonlogo1,
                height: 32.h,
                width: 32.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup840,
                height: 32.h,
                width: 32.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup838,
                height: 32.h,
                width: 32.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup12060,
                height: 32.h,
                width: 32.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgTwitter1,
                height: 32.h,
                width: 32.h,
              ),
              SizedBox(width: 16.h),
              CustomImageView(
                imagePath: ImageConstant.imgGroup12019,
                height: 32.h,
                width: 32.h,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTodaysIncomeSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgVector1,
                height: 30.h,
                width: 20.h,
              ),
              Text(
                'Today',
                style: TextStyleHelper.instance.title20Black,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVector30x20,
                height: 30.h,
                width: 20.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            '₱70,577,000.00',
            style: TextStyleHelper.instance.headline26Bold,
          ),
          SizedBox(height: 4.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'today\'s income',
                style: TextStyleHelper.instance.body14
                    .copyWith(color: appTheme.colorFF8089),
              ),
              SizedBox(width: 8.h),
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray40016x16,
                height: 16.h,
                width: 16.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Obx(() => GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.1,
                  crossAxisSpacing: 16.h,
                  mainAxisSpacing: 16.h,
                ),
                itemCount: controller.incomeCards.length,
                itemBuilder: (context, index) {
                  return IncomeCardWidget(
                    incomeCardModel: controller.incomeCards[index],
                  );
                },
              )),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.96, 0.28),
                end: Alignment(0.96, -0.28),
                colors: [Color(0xFFC498FA), Color(0xFF1A68FE)],
              ),
              borderRadius: BorderRadius.circular(7.h),
            ),
            child: Column(
              children: [
                Text(
                  'Agent Ranking Bonus',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.whiteCustom),
                ),
                SizedBox(height: 8.h),
                Text(
                  '₱ 100,000.00',
                  style: TextStyleHelper.instance.title16Bold,
                ),
                SizedBox(height: 8.h),
                CustomImageView(
                  imagePath: ImageConstant.imgJb47x49,
                  height: 47.h,
                  width: 49.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAgentIncomeSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 16.h,
                      width: 5.h,
                      color: appTheme.colorFF85D4,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'AGENT 7 MAJOR INCOME',
                      style: TextStyleHelper.instance.title20Black
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      'JBET88 new referral program',
                      style: TextStyleHelper.instance.title16,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      'Enjoy 7 super commissions for agents',
                      style: TextStyleHelper.instance.title16
                          .copyWith(color: appTheme.colorFF8089),
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgVectorBlueGray40016x16,
                height: 16.h,
                width: 16.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Obx(() => ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.incomeItems.length,
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemBuilder: (context, index) {
                  return IncomeItemWidget(
                    incomeItemModel: controller.incomeItems[index],
                  );
                },
              )),
          SizedBox(height: 32.h),
          _buildBettingRebateTable(),
          SizedBox(height: 32.h),
          _buildReferralTreeVisualization(),
          SizedBox(height: 16.h),
          Text(
            '※ Different agant have different rebate ratios. You can also increase the rebate ratio by upgrading your Agent Tier.',
            style: TextStyleHelper.instance.body12,
          ),
        ],
      ),
    );
  }

  Widget _buildBettingRebateTable() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Betting Rebate',
          style: TextStyleHelper.instance.body15Bold,
        ),
        SizedBox(height: 16.h),
        Container(
          decoration: BoxDecoration(
            color: appTheme.colorFF3B39,
            borderRadius: BorderRadius.circular(8.h),
          ),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(16.h),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        'Agent Tier',
                        style: TextStyleHelper.instance.body14
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'LV 1',
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.body14
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'LV 2',
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.body14
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'LV 3',
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.body14
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'LV 4',
                        textAlign: TextAlign.center,
                        style: TextStyleHelper.instance.body14
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ],
                ),
              ),
              _buildTableRow('Junior Agent I', '0.7%', '--', '--', '--',
                  appTheme.colorFF2F2E),
              _buildTableRow('Senior Agent I', '0.3%', '0.2%', '0.1%', '--',
                  appTheme.blackCustom),
              _buildTableRow('Master Agent II', '0.6%', '0.4%', '0.3%', '0.2%',
                  appTheme.blackCustom),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTableRow(String tier, String lv1, String lv2, String lv3,
      String lv4, Color bgColor) {
    return Container(
      padding: EdgeInsets.all(16.h),
      color: bgColor,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Text(
              tier,
              style: TextStyleHelper.instance.body14
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
          Expanded(
            child: Text(
              lv1,
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ),
          Expanded(
            child: Text(
              lv2,
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ),
          Expanded(
            child: Text(
              lv3,
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ),
          Expanded(
            child: Text(
              lv4,
              textAlign: TextAlign.center,
              style: TextStyleHelper.instance.body14
                  .copyWith(color: appTheme.colorFFFFC6),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferralTreeVisualization() {
    return Column(
      children: [
        Container(
          height: 40.h,
          width: 40.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-0.36, 0.93),
              end: Alignment(0.36, -0.93),
              colors: [Color(0xFF55C2FF), Color(0xFF4891FF)],
            ),
            border: Border.all(color: appTheme.colorFF0093, width: 5.h),
            borderRadius: BorderRadius.circular(20.h),
          ),
          child: Center(
            child: Text(
              'YOU',
              style: TextStyleHelper.instance.body14Black,
            ),
          ),
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildUserLevel(ImageConstant.imgImage44, 'A1'),
            _buildUserLevel(ImageConstant.imgImage37, 'A2'),
          ],
        ),
        SizedBox(height: 16.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Level 1',
              style: TextStyleHelper.instance.label10Black,
            ),
            Text(
              'Level 1',
              style: TextStyleHelper.instance.label10Black,
            ),
          ],
        ),
        SizedBox(height: 16.h),
        RichText(
          text: TextSpan(
            style: TextStyleHelper.instance.label10Bold,
            children: [
              TextSpan(
                text: 'You get ',
                style: TextStyleHelper.instance.textStyle8
                    .copyWith(color: appTheme.colorFF8089),
              ),
              TextSpan(
                text: '0.4% form level 1',
                style: TextStyleHelper.instance.textStyle8
                    .copyWith(color: appTheme.colorFFF652),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildUserLevel(String imagePath, String label) {
    return Column(
      children: [
        CustomImageView(
          imagePath: imagePath,
          height: 34.h,
          width: 34.h,
        ),
        SizedBox(height: 4.h),
        Container(
          height: 10.h,
          width: 10.h,
          decoration: BoxDecoration(
            color: appTheme.colorFFFBBE,
            borderRadius: BorderRadius.circular(5.h),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyleHelper.instance.label6Bold,
            ),
          ),
        ),
        SizedBox(height: 4.h),
        CustomImageView(
          imagePath: ImageConstant.imgGroup2131329574,
          height: 16.h,
          width: 36.h,
        ),
      ],
    );
  }

  Widget _buildRewardsReleasedSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 38.h,
            width: 5.h,
            color: appTheme.colorFF85D4,
          ),
          SizedBox(height: 8.h),
          Text(
            'REWARDS RELEASED TO DATE',
            style: TextStyleHelper.instance.title20Black
                .copyWith(color: appTheme.whiteCustom),
          ),
          SizedBox(height: 16.h),
          Obx(() => ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.rewardItems.length,
                separatorBuilder: (context, index) => SizedBox(height: 16.h),
                itemBuilder: (context, index) {
                  return RewardItemWidget(
                    rewardItemModel: controller.rewardItems[index],
                  );
                },
              )),
        ],
      ),
    );
  }

  Widget _buildRevenueGoalsSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.all(16.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(10.h),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.99, 0.15),
                end: Alignment(0.99, -0.15),
                colors: [Color(0xFF6A8BFF), Color(0xFF4B37DA)],
              ),
              borderRadius: BorderRadius.circular(12.h),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Revenue Goals',
                        style: TextStyleHelper.instance.title22Black,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        '₱ 8,000.00',
                        style: TextStyleHelper.instance.headline32Black,
                      ),
                      SizedBox(height: 8.h),
                      RichText(
                        text: TextSpan(
                          style: TextStyleHelper.instance.body14Bold,
                          children: [
                            TextSpan(
                              text: 'Invite ',
                              style: TextStyleHelper.instance.textStyle8
                                  .copyWith(color: appTheme.whiteCustom),
                            ),
                            TextSpan(
                              text: '1',
                              style: TextStyleHelper.instance.textStyle8
                                  .copyWith(color: appTheme.colorFFFF9E),
                            ),
                            TextSpan(
                              text: ' user to meet the target',
                              style: TextStyleHelper.instance.textStyle8
                                  .copyWith(color: appTheme.whiteCustom),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 16.h),
                Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgImage441,
                      height: 148.h,
                      width: 168.h,
                    ),
                    Positioned(
                      top: 32.h,
                      right: 0,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgImage444,
                        height: 108.h,
                        width: 170.h,
                      ),
                    ),
                    Positioned(
                      bottom: 16.h,
                      right: 16.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgVectorWhiteA70016x16,
                        height: 16.h,
                        width: 16.h,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            'Leaderboard',
            style: TextStyleHelper.instance.body15Bold
                .copyWith(color: appTheme.colorFF849F),
          ),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.all(16.h),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.71, 0.71),
                end: Alignment(0.71, -0.71),
                colors: [Color(0xFF44C8FE), Color(0xFF960ACC)],
              ),
              borderRadius: BorderRadius.circular(12.h),
            ),
            child: Column(
              children: [
                Text(
                  'Who received the rewards',
                  style: TextStyleHelper.instance.body15Bold,
                ),
                SizedBox(height: 16.h),
                Obx(() => ListView.separated(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: controller.leaderboardItems.length,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 8.h),
                      itemBuilder: (context, index) {
                        return LeaderboardItemWidget(
                          leaderboardItemModel:
                              controller.leaderboardItems[index],
                        );
                      },
                    )),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Builder(
            // Modified: Added Builder to provide context
            builder: (BuildContext context) {
              return Container(
                padding: EdgeInsets.all(16.h),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(-0.71, 0.71),
                    end: Alignment(0.71, -0.71),
                    colors: [Color(0xFFF86386), Color(0xFF1026B8)],
                  ),
                  borderRadius: BorderRadius.circular(12.h),
                ),
                child: Row(
                  children: [
                    Stack(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImage885,
                          height: 69.h,
                          width: 80.h,
                        ),
                        Positioned(
                          top: 24.h,
                          left: 0,
                          child: CustomImageView(
                            imagePath: ImageConstant.img935,
                            height: 11.h,
                            width: 11.h,
                          ),
                        ),
                        Positioned(
                          top: 0,
                          right: 16.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.img920,
                            height: 9.h,
                            width: 10.h,
                          ),
                        ),
                        Positioned(
                          top: 16.h,
                          right: 0,
                          child: CustomImageView(
                            imagePath: ImageConstant.img920,
                            height: 9.h,
                            width: 10.h,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 24.h),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Income\nCalculator',
                            style: TextStyleHelper.instance.title22Black,
                          ),
                          SizedBox(height: 16.h),
                          Text(
                            '₱ 99918,000.00',
                            style: TextStyleHelper.instance.headline32Black,
                          ),
                          SizedBox(height: 8.h),
                          RichText(
                            text: TextSpan(
                              style: TextStyleHelper.instance.body14Bold,
                              children: [
                                TextSpan(
                                  text: 'Invite ',
                                  style: TextStyleHelper.instance.textStyle8
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                                TextSpan(
                                  text: '1',
                                  style: TextStyleHelper.instance.textStyle8
                                      .copyWith(color: appTheme.colorFFFF9E),
                                ),
                                TextSpan(
                                  text: ' user to meet the target',
                                  style: TextStyleHelper.instance.textStyle8
                                      .copyWith(color: appTheme.whiteCustom),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h),
                          Stack(
                            children: [
                              Container(
                                height: 8.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blackCustom,
                                  borderRadius: BorderRadius.circular(4.h),
                                ),
                              ),
                              FractionallySizedBox(
                                widthFactor: 0.22,
                                child: Container(
                                  height: 8.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.colorFFFFD8,
                                    borderRadius: BorderRadius.circular(4.h),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: MediaQuery.of(context).size.width * 0.2,
                                top: -3.h,
                                child: Container(
                                  height: 14.h,
                                  width: 14.h,
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                      begin: Alignment(0, -1),
                                      end: Alignment(0, 1),
                                      colors: [
                                        Color(0xFF00F5FE),
                                        Color(0xFF085DCC)
                                      ],
                                    ),
                                    border: Border.all(
                                        color: appTheme.whiteCustom,
                                        width: 2.h),
                                    borderRadius: BorderRadius.circular(7.h),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLogos() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj93128x78,
            height: 28.h,
            width: 78.h,
          ),
          SizedBox(height: 16.h),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            childAspectRatio: 4.8,
            crossAxisSpacing: 16.h,
            mainAxisSpacing: 16.h,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgYesbingo,
                  height: 13.h,
                  width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgJili, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo2, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo3, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgFc, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo213x62,
                  height: 13.h,
                  width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgPg, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo7, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgPp2, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgVectorWhiteA70013x62,
                  height: 13.h,
                  width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo8, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgSexybcrt,
                  height: 13.h,
                  width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo5, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgJdb, height: 13.h, width: 62.h),
              CustomImageView(
                  imagePath: ImageConstant.imgLogo6, height: 13.h, width: 62.h),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            'This site offers a complete experience of the game. To use our website, you must be at least 18 years of age. We are not responsible for providing you with local laws relating to the game. Play responsibly and have fun at wj.com',
            style: TextStyleHelper.instance.body12.copyWith(height: 1.2),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16.h),
          RichText(
            text: TextSpan(
              style: TextStyleHelper.instance.body12,
              children: [
                TextSpan(
                  text: 'Emall:',
                  style: TextStyleHelper.instance.textStyle8
                      .copyWith(color: appTheme.colorFF8089),
                ),
                TextSpan(
                  text: ' ',
                  style: TextStyleHelper.instance.textStyle8
                      .copyWith(color: appTheme.colorFFABB6),
                ),
                TextSpan(
                  text: 'wj@gmail.com',
                  style: TextStyleHelper.instance.textStyle8
                      .copyWith(color: appTheme.colorFF85D4),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.h),
          Text(
            '© 2022 wj@gmail.com | All rights reserved.',
            style: TextStyleHelper.instance.body12,
          ),
          SizedBox(height: 16.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Stack(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse26,
                        height: 30.h,
                        width: 30.h,
                      ),
                      Positioned.fill(
                        child: Center(
                          child: Text(
                            '18',
                            style: TextStyleHelper.instance.title16Bold
                                .copyWith(color: appTheme.colorFFFD20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 8.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup240,
                    height: 11.h,
                    width: 11.h,
                  ),
                ],
              ),
              Row(
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgLogovideo2,
                      height: 30.h,
                      width: 30.h),
                  SizedBox(width: 8.h),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogovideo3,
                      height: 30.h,
                      width: 30.h),
                  SizedBox(width: 8.h),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogovideo4,
                      height: 30.h,
                      width: 30.h),
                  SizedBox(width: 8.h),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogovideo5,
                      height: 30.h,
                      width: 30.h),
                  SizedBox(width: 8.h),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogovideo6,
                      height: 30.h,
                      width: 30.h),
                  SizedBox(width: 8.h),
                  CustomImageView(
                      imagePath: ImageConstant.imgLogovideo7,
                      height: 30.h,
                      width: 30.h),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
