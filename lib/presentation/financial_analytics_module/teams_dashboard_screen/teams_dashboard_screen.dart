import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_bar.dart';
import '../income_analytics_dashboard_screen/income_analytics_dashboard_screen.dart';
import '../income_dashboard_screen/income_dashboard_screen.dart';
import '../income_dashboard_screen_three_screen/income_dashboard_screen_three_screen.dart';
import '../income_dashboard_screen_two_screen/income_dashboard_screen_two_screen.dart';
import '../rewards_congratulations_screen/rewards_congratulations_screen.dart';
import './controller/teams_dashboard_controller.dart';
import './teams_dashboard_screen_initial_page.dart';

class TeamsDashboardScreen extends GetWidget<TeamsDashboardController> {
  TeamsDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.teamsDashboardScreenInitialPage,
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
    return CustomBottomBar(
      bottomBarItemList: [
        CustomBottomBarItem(
          title: 'Invite',
          routeName: AppRoutes.teamsDashboardScreenInitialPage,
          iconPath: ImageConstant.imgSubtractBlueGray400,
        ),
        CustomBottomBarItem(
          title: 'Achievement',
          routeName: AppRoutes.teamsDashboardScreenInitialPage,
          iconPath: ImageConstant.img120x19,
        ),
        CustomBottomBarItem(
          title: 'Ranking',
          routeName: AppRoutes.teamsDashboardScreenInitialPage,
          iconPath: ImageConstant.imgFrame2131330279,
        ),
        CustomBottomBarItem(
          title: 'Teams',
          routeName: AppRoutes.teamsDashboardScreenInitialPage,
          iconPath: ImageConstant.img1Black90020x20,
        ),
        CustomBottomBarItem(
          title: 'Incomes',
          routeName: AppRoutes.incomeDashboardScreen,
          iconPath: ImageConstant.img11,
        ),
        CustomBottomBarItem(
          title: 'Records',
          routeName: AppRoutes.teamsDashboardScreenInitialPage,
          iconPath: ImageConstant.img1Black90020x19,
        ),
        CustomBottomBarItem(
          title: 'FAQ',
          routeName: AppRoutes.teamsDashboardScreenInitialPage,
          iconPath: ImageConstant.imgFrame1,
        ),
      ],
      onChanged: (index) {
        controller.selectedIndex.value = index;
        var bottomBarItemList = [
          AppRoutes.teamsDashboardScreenInitialPage,
          AppRoutes.teamsDashboardScreenInitialPage,
          AppRoutes.teamsDashboardScreenInitialPage,
          AppRoutes.teamsDashboardScreenInitialPage,
          AppRoutes.incomeDashboardScreen,
          AppRoutes.teamsDashboardScreenInitialPage,
          AppRoutes.teamsDashboardScreenInitialPage,
        ];
        Get.toNamed(bottomBarItemList[index], id: 1);
      },
      selectedIndex: 3,
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.teamsDashboardScreenInitialPage:
        return TeamsDashboardScreenInitialPage();
      case AppRoutes.incomeDashboardScreen:
        return IncomeDashboardScreen();
      case AppRoutes.incomeAnalyticsDashboardScreen:
        return IncomeAnalyticsDashboardScreen();
      case AppRoutes.rewardsCongratulationsScreen:
        return RewardsCongratulationsScreen();
      case AppRoutes.incomeDashboardScreenTwo:
        return IncomeDashboardScreenTwo();
      case AppRoutes.incomeDashboardScreenThree:
        return IncomeDashboardScreenThree();
      default:
        return TeamsDashboardScreenInitialPage();
    }
  }
}
