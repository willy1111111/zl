import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_tab_bar.dart';
import './controller/agent_level_system_controller.dart';
import './widgets/faq_item_widget.dart';
import './widgets/income_item_widget.dart';
import './widgets/team_member_widget.dart';

class AgentLevelSystemScreen extends GetWidget<AgentLevelSystemController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Column(
        children: [
          _buildTopNavigationBar(),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 16.h),
                    _buildGreenLine(38.h),
                    SizedBox(height: 16.h),
                    _buildAgentLevelTitlesSection(),
                    SizedBox(height: 16.h),
                    _buildGreenLine(16.h),
                    SizedBox(height: 16.h),
                    _buildTeamStructureSection(),
                    SizedBox(height: 16.h),
                    _buildGreenLine(38.h),
                    SizedBox(height: 16.h),
                    _buildImprovementSection(),
                    SizedBox(height: 16.h),
                    _buildGreenLine(16.h),
                    SizedBox(height: 16.h),
                    _buildAgentIncomeSection(),
                    SizedBox(height: 16.h),
                    _buildGreenLine(16.h),
                    SizedBox(height: 16.h),
                    _buildFaqSection(),
                    SizedBox(height: 24.h),
                    _buildInviteButton(),
                    SizedBox(height: 80.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopNavigationBar() {
    return Container(
      height: 60.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: appTheme.colorFF1112,
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 4.h,
            offset: Offset(0, 2.h),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: CustomTabBar(
          tabItems: [
            CustomTabItem(
              iconPath: ImageConstant.imgSubtractBlueGray400,
              label: 'invite',
              routeName: '/invite',
            ),
            CustomTabItem(
              iconPath: ImageConstant.img120x19,
              label: 'Achievement',
              routeName: '/achievement',
            ),
            CustomTabItem(
              iconPath: ImageConstant.imgFrame2131330279,
              label: 'ranking',
              routeName: '/ranking',
            ),
            CustomTabItem(
              iconPath: ImageConstant.img1Black90020x20,
              label: 'Teams',
              routeName: '/teams',
            ),
            CustomTabItem(
              iconPath: ImageConstant.img12,
              label: 'Incomes',
              routeName: '/incomes',
            ),
            CustomTabItem(
              iconPath: ImageConstant.img1Black90020x19,
              label: 'Records',
              routeName: '/records',
            ),
            CustomTabItem(
              iconPath: ImageConstant.imgFrame1321314655,
              label: 'FAQ',
              routeName: '/faq',
            ),
          ],
          selectedIndex: 6,
          onTabChanged: (index) {
            controller.onTabChanged(index);
          },
          backgroundColor: appTheme.colorFF1112,
          activeTextColor: appTheme.colorFF85D4,
          inactiveTextColor: appTheme.colorFF8089,
          activeIndicatorColor: appTheme.colorFF85D4,
          height: 60.h,
        ),
      ),
    );
  }

  Widget _buildGreenLine(double width) {
    return Container(
      width: width,
      height: 5.h,
      color: appTheme.colorFF85D4,
    );
  }

  Widget _buildAgentLevelTitlesSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What is the agent level titles?',
          style: TextStyleHelper.instance.title20Black.copyWith(height: 1.1),
        ),
        SizedBox(height: 16.h),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(10.h),
          ),
          padding: EdgeInsets.all(12.h),
          child: Text(
            '※Agent Tiers are classified based on the number of friends you invite or the scale of Team Counts participating in betting.\n\n※Each title offers different benefits and rewards. Please refer to the table below for specific upgrade criteria and corresponding title privileges.',
            style: TextStyleHelper.instance.body14.copyWith(height: 1.14),
          ),
        ),
      ],
    );
  }

  Widget _buildTeamStructureSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'what is you team?',
          style: TextStyleHelper.instance.title20Bold
              .copyWith(color: appTheme.whiteCustom, height: 1.15),
        ),
        SizedBox(height: 16.h),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(10.h),
          ),
          padding: EdgeInsets.all(16.h),
          child: Column(
            children: [
              _buildTeamHierarchy(),
              SizedBox(height: 24.h),
              _buildTeamExplanations(),
              SizedBox(height: 16.h),
              Text(
                '※Team Count：level 1 (A)+level 2 (B)+ level 3 (C)+ level 4(D) Teamss are all your Team Counts',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFF8089, height: 1.17),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTeamHierarchy() {
    return Column(
      children: [
        // YOU (Center)
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 16.h),
          child: TeamMemberWidget(
            imagePath: ImageConstant.imgImage1111,
            label: 'YOU',
            imageWidth: 79.h,
            imageHeight: 70.h,
            labelContainerWidth: 36.h,
            labelContainerHeight: 36.h,
            gradientColors: [
              Color(0xFF6D3CCC),
              appTheme.colorFFD59E,
              Color(0xFFE6C7FF)
            ],
            labelTextColor: appTheme.colorFF4755,
            fontSize: 14.fSize,
            topPosition: 16.h,
            leftPosition: 25.h,
          ),
        ),
        // Level A (A1, A2)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TeamMemberWidget(
              imagePath: ImageConstant.imgImage1112,
              label: 'A1',
              imageWidth: 59.h,
              imageHeight: 53.h,
              labelContainerWidth: 26.h,
              labelContainerHeight: 26.h,
              gradientColors: [
                Color(0xFF822565),
                appTheme.colorFFE054,
                Color(0xFFFF94F7)
              ],
              labelTextColor: appTheme.colorFF9737,
              fontSize: 14.fSize,
              topPosition: 14.h,
              leftPosition: 17.h,
            ),
            TeamMemberWidget(
              imagePath: ImageConstant.imgImage1112,
              label: 'A2',
              imageWidth: 59.h,
              imageHeight: 53.h,
              labelContainerWidth: 26.h,
              labelContainerHeight: 26.h,
              gradientColors: [
                Color(0xFF822565),
                appTheme.colorFFE054,
                Color(0xFFFF94F7)
              ],
              labelTextColor: appTheme.colorFF9737,
              fontSize: 14.fSize,
              topPosition: 14.h,
              leftPosition: 17.h,
            ),
          ],
        ),
        SizedBox(height: 16.h),
        // Level B (B1, B2, B3, B4)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TeamMemberWidget(
              imagePath: ImageConstant.imgImage1113,
              label: 'B1',
              imageWidth: 42.h,
              imageHeight: 38.h,
              labelContainerWidth: 22.h,
              labelContainerHeight: 22.h,
              gradientColors: [
                Color(0xFFBB0213),
                appTheme.colorFFFF4E,
                Color(0xFFFF9EBC)
              ],
              labelTextColor: appTheme.colorFF9737,
              fontSize: 14.fSize,
              topPosition: 8.h,
              leftPosition: 11.h,
            ),
            TeamMemberWidget(
              imagePath: ImageConstant.imgImage1113,
              label: 'B2',
              imageWidth: 42.h,
              imageHeight: 38.h,
              labelContainerWidth: 22.h,
              labelContainerHeight: 22.h,
              gradientColors: [
                Color(0xFFBB0213),
                appTheme.colorFFFF4E,
                Color(0xFFFF9EBC)
              ],
              labelTextColor: appTheme.colorFF9737,
              fontSize: 14.fSize,
              topPosition: 8.h,
              leftPosition: 11.h,
            ),
            TeamMemberWidget(
              imagePath: ImageConstant.imgImage1113,
              label: 'B3',
              imageWidth: 42.h,
              imageHeight: 38.h,
              labelContainerWidth: 22.h,
              labelContainerHeight: 22.h,
              gradientColors: [
                Color(0xFFBB0213),
                appTheme.colorFFFF4E,
                Color(0xFFFF9EBC)
              ],
              labelTextColor: appTheme.colorFF9737,
              fontSize: 14.fSize,
              topPosition: 8.h,
              leftPosition: 11.h,
            ),
            TeamMemberWidget(
              imagePath: ImageConstant.imgImage1113,
              label: 'B4',
              imageWidth: 42.h,
              imageHeight: 38.h,
              labelContainerWidth: 22.h,
              labelContainerHeight: 22.h,
              gradientColors: [
                Color(0xFFBB0213),
                appTheme.colorFFFF4E,
                Color(0xFFFF9EBC)
              ],
              labelTextColor: appTheme.colorFF9737,
              fontSize: 14.fSize,
              topPosition: 8.h,
              leftPosition: 11.h,
            ),
          ],
        ),
        SizedBox(height: 16.h),
        // Level C (C1-C8)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(8, (index) {
            return TeamMemberWidget(
              imagePath: ImageConstant.imgImage1114,
              label: 'C${index + 1}',
              imageWidth: 39.h,
              imageHeight: 33.h,
              labelContainerWidth: 19.h,
              labelContainerHeight: 19.h,
              gradientColors: [
                Color(0xFF2160A3),
                appTheme.colorFF3BAC,
                Color(0xFFACE9FF)
              ],
              labelTextColor: appTheme.colorFFDDA6,
              fontSize: 10.fSize,
              topPosition: 7.h,
              leftPosition: 11.h,
            );
          }),
        ),
        SizedBox(height: 16.h),
        // Level D (D1-D8)
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(8, (index) {
            return TeamMemberWidget(
              imagePath: ImageConstant.imgImage1122,
              label: 'D${index + 1}',
              imageWidth: 28.h,
              imageHeight: 26.h,
              labelContainerWidth: 16.h,
              labelContainerHeight: 16.h,
              gradientColors: [
                Color(0xFF0B301E),
                appTheme.colorFF34C8,
                Color(0xFF58FFBF)
              ],
              labelTextColor: appTheme.colorFFDDA6,
              fontSize: 10.fSize,
              topPosition: 5.h,
              leftPosition: 6.h,
            );
          }),
        ),
      ],
    );
  }

  Widget _buildTeamExplanations() {
    return Column(
      children: [
        _buildTeamExplanation(
            'A → YOU: A is your', 'Level 1 Teams（directly invited）'),
        SizedBox(height: 8.h),
        _buildTeamExplanation('B → YOU: B is your', 'Level 2 Teams'),
        SizedBox(height: 8.h),
        _buildTeamExplanation('C → YOU: C is your', 'Level 3 Teams'),
        SizedBox(height: 8.h),
        _buildTeamExplanation('D → YOU: D is your', 'Level 4 Teams'),
      ],
    );
  }

  Widget _buildTeamExplanation(String firstPart, String secondPart) {
    return Row(
      children: [
        Text(
          firstPart,
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.colorFFFFC6),
        ),
        SizedBox(width: 8.h),
        Text(
          secondPart,
          style: TextStyleHelper.instance.body12
              .copyWith(color: appTheme.colorFF8089),
        ),
      ],
    );
  }

  Widget _buildImprovementSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'How to improve the Agent Tier？',
          style: TextStyleHelper.instance.title20Black.copyWith(height: 1.1),
        ),
        SizedBox(height: 16.h),
        Container(
          decoration: BoxDecoration(
            color: appTheme.colorFF2528,
            borderRadius: BorderRadius.circular(10.h),
          ),
          child: Column(
            children: [
              _buildTableHeader(),
              _buildTableRow('Junior Agent I', 'No requirements',
                  'No requirements', 'No requirements', appTheme.colorFF3A3E),
              _buildTableRow('Intermediate Agent I', '30', '10000',
                  'No requirements', appTheme.colorFF3134),
              _buildTableRow(
                  'Senior Agent I', '50', '10000', '444', appTheme.colorFF3A3E),
              _buildTableRow(
                  'Master Agent I', '80', '10000', '444', appTheme.colorFF3134),
              _buildTableFooter(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTableHeader() {
    return Row(
      children: [
        _buildTableCell(
            '----', 86.h, 43.h, appTheme.colorFF3134, appTheme.colorFFFFFF),
        _buildTableCell('Team Count requirements', 86.h, 43.h,
            appTheme.colorFF3134, appTheme.colorFFFFFF),
        _buildTableCell('Betting Requirements', 86.h, 43.h,
            appTheme.colorFF3134, appTheme.colorFFFFFF),
        _buildTableCell('deposit Requirements', 86.h, 43.h,
            appTheme.colorFF3134, appTheme.colorFFFFFF),
      ],
    );
  }

  Widget _buildTableRow(String agentType, String teamCount, String betting,
      String deposit, Color backgroundColor) {
    return Row(
      children: [
        _buildTableCell(
            agentType, 86.h, 43.h, backgroundColor, appTheme.colorFF8089),
        _buildTableCell(
            teamCount, 86.h, 43.h, backgroundColor, appTheme.colorFFFFC6),
        _buildTableCell(
            betting, 86.h, 43.h, backgroundColor, appTheme.colorFFFFC6),
        _buildTableCell(
            deposit, 86.h, 43.h, backgroundColor, appTheme.colorFFFFC6),
      ],
    );
  }

  Widget _buildTableCell(String text, double width, double height,
      Color backgroundColor, Color textColor) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyleHelper.instance.body12,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget _buildTableFooter() {
    return Container(
      padding: EdgeInsets.all(12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '※Team Count：',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                TextSpan(
                  text:
                      'level 1 +level 2 + level 3 + level 4 members are all your team members',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '※Betting Requirements ：',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                TextSpan(
                  text:
                      ' level 1 +level 2 + level 3 + level 4 members\' bets count towards your team bets',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ),
          SizedBox(height: 4.h),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '※Deposit Requirements ：',
                  style: TextStyleHelper.instance.body12Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
                TextSpan(
                  text:
                      'level 1 +level 2 + level 3 + level 4 members\' deposit count towards your team deposit',
                  style: TextStyleHelper.instance.body12
                      .copyWith(color: appTheme.colorFF8089),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAgentIncomeSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Agent 7 major income',
          style: TextStyleHelper.instance.title20Black.copyWith(height: 1.45),
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
        SizedBox(height: 16.h),
        Obx(() => Column(
              children: controller.incomeItems
                  .map((item) => Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: IncomeItemWidget(
                          incomeItem: item,
                        ),
                      ))
                  .toList(),
            )),
        SizedBox(height: 16.h),
        _buildIncomeNotes(),
      ],
    );
  }

  Widget _buildIncomeNotes() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '※All agents enjoy the same ',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFF8089, height: 1.17),
              ),
              TextSpan(
                text: 'registration bonus, deposit bonus',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFFFFC6, height: 1.17),
              ),
              TextSpan(
                text: '.They can all participate in ',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFF8089, height: 1.17),
              ),
              TextSpan(
                text: 'achievement rewards and agent ranking bonus',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFFFFC6, height: 1.17),
              ),
              TextSpan(
                text: '.',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFF8089, height: 1.17),
              ),
            ],
          ),
        ),
        SizedBox(height: 8.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: '※The main difference between agent levels is ',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFF8089, height: 1.33),
              ),
              TextSpan(
                text:
                    'qualified bonus, and deposit rebate bonus. the betting rebate Bonus',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFFFFC6, height: 1.33),
              ),
              TextSpan(
                text: '.',
                style: TextStyleHelper.instance.body12
                    .copyWith(color: appTheme.colorFF8089, height: 1.33),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFaqSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'FQA',
          style: TextStyleHelper.instance.title20Black.copyWith(height: 1.45),
        ),
        SizedBox(height: 16.h),
        Obx(() => Column(
              children: controller.faqItems.asMap().entries.map((entry) {
                int index = entry.key;
                var item = entry.value;
                return Padding(
                  padding: EdgeInsets.only(bottom: 10.h),
                  child: FaqItemWidget(
                    faqItem: item,
                    isExpanded: controller.expandedFaqIndex.value == index,
                    onTap: () => controller.toggleFaq(index),
                  ),
                );
              }).toList(),
            )),
      ],
    );
  }

  Widget _buildInviteButton() {
    return GestureDetector(
      onTap: () => controller.onInvitePressed(),
      child: Container(
        width: double.infinity,
        height: 44.h,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFF76CD00), Color(0xFF478A03)],
          ),
          borderRadius: BorderRadius.circular(22.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgFrameWhiteA70020x20,
              height: 20.h,
              width: 20.h,
              fit: BoxFit.contain,
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
    );
  }
}
