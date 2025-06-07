import 'package:flutter/material.dart';
import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import 'controller/agent_dashboard_controller.dart';
import 'agent_dashboard_screen_initial_page.dart';
import '../achievement_dashboard_screen/achievement_dashboard_screen.dart';
import '../agent_invite_dashboard_screen/agent_invite_dashboard_screen.dart';

class AgentDashboardScreen extends GetWidget<AgentDashboardController> {
  AgentDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.agentDashboardScreenInitialPage,
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
    return CustomBottomNavBar(
      items: [
        CustomBottomNavItem(
          icon: ImageConstant.imgSubtractLightGreenA700,
          activeIcon: ImageConstant.imgSubtractLightGreenA700,
          title: 'invite',
          routeName: AppRoutes.agentInviteDashboardScreen,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.img13,
          activeIcon: ImageConstant.imgFrameLightGreenA700,
          title: 'Achievement',
          routeName: AppRoutes.achievementDashboardScreen,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.imgFrame2131330279BlueGray400,
          activeIcon: ImageConstant.imgFrame2131330279BlueGray400,
          title: 'ranking',
          routeName: AppRoutes.agentDashboardScreen,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.img120x20,
          activeIcon: ImageConstant.img120x20,
          title: 'member',
          routeName: AppRoutes.agentDashboardScreen,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.img14,
          activeIcon: ImageConstant.img14,
          title: 'report',
          routeName: AppRoutes.agentDashboardScreen,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.img12,
          activeIcon: ImageConstant.img12,
          title: 'bonus',
          routeName: AppRoutes.agentDashboardScreen,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.img12,
          activeIcon: ImageConstant.img12,
          title: 'FQA',
          routeName: AppRoutes.agentDashboardScreen,
        ),
      ],
      selectedIndex: 0,
      onItemTap: (index) {
        String routeName;
        switch (index) {
          case 0:
            routeName = AppRoutes.agentInviteDashboardScreen;
            break;
          case 1:
            routeName = AppRoutes.achievementDashboardScreen;
            break;
          case 2:
            routeName = AppRoutes.agentDashboardScreen;
            break;
          default:
            routeName = AppRoutes.agentDashboardScreen;
        }
        Get.toNamed(routeName, id: 1);
      },
      backgroundColor: appTheme.colorFF1112,
      activeTextColor: appTheme.whiteCustom,
      inactiveTextColor: appTheme.colorFF8089,
      activeIndicatorColor: appTheme.colorFF85D4,
      showActiveIndicator: true,
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.agentDashboardScreenInitialPage:
        return AgentDashboardScreenInitialPage();
      case AppRoutes.agentInviteDashboardScreen:
        return AgentInviteDashboardScreen();
      case AppRoutes.achievementDashboardScreen:
        return AchievementDashboardScreen();
      default:
        return Container();
    }
  }
}
