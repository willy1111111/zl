import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_text_link.dart';
import './controller/junior_agent_dashboard_controller.dart';
import './widgets/agent_tier_card_widget.dart';
import './widgets/share_friends_card_widget.dart';
import './widgets/today_income_card_widget.dart';

class JuniorAgentDashboardScreen extends StatelessWidget {
  JuniorAgentDashboardScreen({Key? key}) : super(key: key);

  final JuniorAgentDashboardController controller =
      Get.put(JuniorAgentDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Column(
          children: [
            SizedBox(height: 67.h),
            AgentTierCardWidget(),
            SizedBox(height: 20.h),
            _buildAgentTierRequirementsLink(),
            SizedBox(height: 32.h),
            ShareFriendsCardWidget(),
            SizedBox(height: 16.h),
            TodayIncomeCardWidget(),
            SizedBox(height: 120.h),
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

  Widget _buildAgentTierRequirementsLink() {
    return CustomTextLink(
      text: 'Agent Tier Requirements& Benefits',
      textColor: appTheme.colorFF85D4,
      onTap: () {
        controller.onAgentTierRequirementsTap();
      },
    );
  }
}
