import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_bar.dart';
import './controller/user_dashboard_controller.dart';
import './user_dashboard_initial_page.dart';

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
      bottomBarItemList: [
        CustomBottomBarItem(
          title: 'Home',
          routeName: AppRoutes.userDashboardScreenInitialPage,
          icon: ImageConstant.imgGroup13007,
          iconHeight: 22.h,
          iconWidth: 24.h,
        ),
        CustomBottomBarItem(
          title: 'Deposit',
          routeName: '/deposit',
          icon: ImageConstant.imgGroup13004,
          iconHeight: 25.h,
          iconWidth: 26.h,
        ),
        CustomBottomBarItem(
          title: 'Invite',
          routeName: '/invite',
          icon: ImageConstant.imgGroup13067,
          iconHeight: 24.h,
          iconWidth: 24.h,
        ),
        CustomBottomBarItem(
          title: 'Promotion',
          routeName: '/promotion',
        ),
        CustomBottomBarItem(
          title: 'Teams',
          routeName: '/teams',
          icon: ImageConstant.imgGroup13046,
          iconHeight: 42.h,
          iconWidth: 42.h,
          activeColor: appTheme.colorFF85D4,
        ),
      ],
      selectedIndex: 4,
      onChanged: (index) {
        var bottomBarItem = controller.bottomBarItemList[index];
        Get.toNamed(getCurrentRoute(bottomBarItem.routeName), id: 1);
      },
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.userDashboardScreenInitialPage:
        return UserDashboardInitialPage();
      default:
        return Container();
    }
  }

  String getCurrentRoute(String? routeName) {
    switch (routeName) {
      case '/home':
        return AppRoutes.userDashboardScreenInitialPage;
      case '/deposit':
        return AppRoutes.userDashboardScreenInitialPage;
      case '/invite':
        return AppRoutes.userDashboardScreenInitialPage;
      case '/promotion':
        return AppRoutes.userDashboardScreenInitialPage;
      case '/teams':
        return AppRoutes.userDashboardScreenInitialPage;
      default:
        return AppRoutes.userDashboardScreenInitialPage;
    }
  }
}
