import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../teams_center_dashboard_screen/teams_center_dashboard_screen.dart';
import './controller/user_dashboard_controller.dart';
import './user_dashboard_screen_initial_page.dart';

class UserDashboardScreen extends GetWidget<UserDashboardController> {
  UserDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.userDashboardScreenInitialPage,
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
      type: CustomBottomBarType.navigation,
      navigationItems: [
        CustomBottomBarItem(
          icon: ImageConstant.imgGroup13007,
          title: 'Home',
          routeName: AppRoutes.userDashboardScreenInitialPage,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.imgGroup13004,
          title: 'Deposit',
          routeName: AppRoutes.userDashboardScreenInitialPage,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.imgComponent7,
          title: 'Invite',
          routeName: AppRoutes.userDashboardScreenInitialPage,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.imgGroup13067,
          title: 'Promotion',
          routeName: AppRoutes.userDashboardScreenInitialPage,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.imgGroup13046,
          title: 'Teams',
          routeName: AppRoutes.teamsCenterDashboardScreen,
        ),
      ],
      selectedIndex: 0,
      onNavigationChanged: (index) {
        String routeName = getCurrentRoute(index);
        Get.toNamed(routeName, id: 1);
      },
      height: 64.h,
    );
  }

  String getCurrentRoute(int index) {
    switch (index) {
      case 0:
        return AppRoutes.userDashboardScreenInitialPage;
      case 1:
        return AppRoutes.userDashboardScreenInitialPage;
      case 2:
        return AppRoutes.userDashboardScreenInitialPage;
      case 3:
        return AppRoutes.userDashboardScreenInitialPage;
      case 4:
        return AppRoutes.teamsCenterDashboardScreen;
      default:
        return AppRoutes.userDashboardScreenInitialPage;
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.userDashboardScreenInitialPage:
        return UserDashboardScreenInitialPage();
      case AppRoutes.teamsCenterDashboardScreen:
        return TeamsCenterDashboardScreen();
      default:
        return UserDashboardScreenInitialPage();
    }
  }
}
