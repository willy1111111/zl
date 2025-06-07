import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import '../congratulations_reward_screen/congratulations_reward_screen.dart';
import '../gaming_hub_screen/gaming_hub_screen.dart';
import '../junior_agent_dashboard_screen/junior_agent_dashboard_screen.dart';
import '../master_agent_dashboard_screen/master_agent_dashboard_screen.dart';
import './achievement_rewards_initial_page.dart';
import './controller/achievement_rewards_controller.dart';

// Modified: Added missing import

// Modified: Added placeholder screen class
class AgentIncomeOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Agent Income Overview Screen'),
      ),
    );
  }
}

class AchievementRewardsScreen extends GetWidget<AchievementRewardsController> {
  AchievementRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.achievementRewardsScreenInitialPage,
          onGenerateRoute: (routeSetting) => GetPageRoute(
            page: () => getCurrentPage(routeSetting.name!),
            transition: Transition.noTransition,
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(),
        ),
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return CustomBottomNavigationBar(
      bottomBarItemList: [
        CustomBottomNavigationItem(
          icon: ImageConstant.imgFrame,
          title: 'Invite',
          routeName: AppRoutes.masterAgentDashboardScreen,
        ),
        CustomBottomNavigationItem(
          icon: ImageConstant.imgFrameLightGreenA700,
          activeIcon: ImageConstant.imgFrameLightGreenA700,
          title: 'Achievement',
          routeName: AppRoutes.achievementRewardsScreen,
        ),
        CustomBottomNavigationItem(
          icon: ImageConstant.imgFrameBlueGray40020x20,
          title: 'Teams',
          routeName: AppRoutes.juniorAgentDashboardScreen,
        ),
        CustomBottomNavigationItem(
          icon: ImageConstant.imgFrameBlueGray400,
          title: 'Incomes',
          routeName: AppRoutes.agentIncomeOverviewScreen,
        ),
        CustomBottomNavigationItem(
          icon: ImageConstant.imgGroup1321314646,
          title: 'Bonus',
          routeName: AppRoutes.congratulationsRewardScreen,
        ),
        CustomBottomNavigationItem(
          icon: ImageConstant.imgFrame20x20,
          title: 'FAQ',
          routeName: AppRoutes.gamingHubScreen,
        ),
      ],
      selectedIndex: 1,
      onChanged: (index) {
        var bottomBarItemList = [
          AppRoutes.masterAgentDashboardScreen,
          AppRoutes.achievementRewardsScreen,
          AppRoutes.juniorAgentDashboardScreen,
          AppRoutes.agentIncomeOverviewScreen,
          AppRoutes.congratulationsRewardScreen,
          AppRoutes.gamingHubScreen,
        ];
        Get.toNamed(getCurrentRoute(bottomBarItemList[index]), id: 1);
      },
    );
  }

  String getCurrentRoute(String routeName) {
    switch (routeName) {
      case AppRoutes.masterAgentDashboardScreen:
        return AppRoutes.masterAgentDashboardScreen;
      case AppRoutes.achievementRewardsScreen:
        return AppRoutes.achievementRewardsScreenInitialPage;
      case AppRoutes.juniorAgentDashboardScreen:
        return AppRoutes.juniorAgentDashboardScreen;
      case AppRoutes.agentIncomeOverviewScreen:
        return AppRoutes.agentIncomeOverviewScreen;
      case AppRoutes.congratulationsRewardScreen:
        return AppRoutes.congratulationsRewardScreen;
      case AppRoutes.gamingHubScreen:
        return AppRoutes.gamingHubScreen;
      default:
        return AppRoutes.achievementRewardsScreenInitialPage;
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.achievementRewardsScreenInitialPage:
        return AchievementRewardsInitialPage();
      case AppRoutes.masterAgentDashboardScreen:
        return MasterAgentDashboardScreen();
      case AppRoutes.juniorAgentDashboardScreen:
        return JuniorAgentDashboardScreen();
      case AppRoutes.agentIncomeOverviewScreen:
        return AgentIncomeOverviewScreen();
      case AppRoutes.congratulationsRewardScreen:
        return CongratulationsRewardScreen();
      case AppRoutes.gamingHubScreen:
        return GamingHubScreen();
      default:
        return Container();
    }
  }
}
