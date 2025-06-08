import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import './controller/money_rain_rewards_controller.dart';
import './money_rain_rewards_screen_initial_page.dart';

class MoneyRainRewardsScreen extends GetWidget<MoneyRainRewardsController> {
  MoneyRainRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.moneyRainRewardsScreenInitialPage,
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
      selectedIndex: 0,
      onItemTapped: (index, route) {
        Get.toNamed(getCurrentRoute(route), id: 1);
      },
      showInviteButton: true,
      backgroundColor: appTheme.colorFF232B,
      activeColor: appTheme.colorFF85D4,
      inactiveColor: appTheme.colorFF8089,
    );
  }

  String getCurrentRoute(String routeName) {
    switch (routeName) {
      case '/home':
        return AppRoutes.moneyRainRewardsScreenInitialPage;
      case '/promotion':
        return AppRoutes.moneyRainPromotionScreen;
      case '/invite':
        return AppRoutes.luckySpinInvitationGuideScreen;
      case '/deposit':
        return AppRoutes.spinWheelDashboardScreen;
      case '/teams':
        return AppRoutes.jetBetCasinoHomeScreen;
      default:
        return AppRoutes.moneyRainRewardsScreenInitialPage;
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.moneyRainRewardsScreenInitialPage:
        return MoneyRainRewardsScreenInitialPage();
      case AppRoutes.moneyRainPromotionScreen:
        return Container(); // Modified: Replaced undefined method with Container
      case AppRoutes.luckySpinInvitationGuideScreen:
        return Container(); // Modified: Replaced undefined method with Container
      case AppRoutes.spinWheelDashboardScreen:
        return Container(); // Modified: Replaced undefined method with Container
      case AppRoutes.jetBetCasinoHomeScreen:
        return Container(); // Modified: Replaced undefined method with Container
      default:
        return Container();
    }
  }
}
