import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_nav_bar.dart';
import '../bet88_agent_jackpot_ranking_screen/bet88_agent_jackpot_ranking_screen.dart';
import '../jbet88_user_dashboard_screen/jbet88_user_dashboard_screen.dart';
import '../jet_br_gaming_promotions_screen/jet_br_gaming_promotions_screen.dart';
import '../narad_gaming_dashboard_screen/narad_gaming_dashboard_screen.dart';
import './controller/jetso_casino_home_controller.dart';
import './jetso_casino_home_screen_initial_page.dart';

class JetsoCasinoHomeScreen extends GetWidget<JetsoCasinoHomeController> {
  JetsoCasinoHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.jetsoCasinoHomeScreenInitialPage,
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
          icon: ImageConstant.imgVectorLightGreenA700,
          activeIcon: ImageConstant.imgVectorLightGreenA700,
          label: 'Home',
          routeName: AppRoutes.jetsoCasinoHomeScreenInitialPage,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.img1BlueGray40020x20,
          label: 'Promotion',
          routeName: AppRoutes.jetBrGamingPromotionsScreen,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.imgInvite154x54,
          label: 'Invite',
          routeName: AppRoutes.jbet88UserDashboardScreen,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.img120x19,
          label: 'Deposit',
          routeName: AppRoutes.bet88AgentJackpotRankingScreen,
        ),
        CustomBottomNavItem(
          icon: ImageConstant.img1BlueGray40020x19,
          label: 'Teams',
          routeName: AppRoutes.naradGamingDashboardScreen,
        ),
      ],
      onTap: (index) {
        var routes = [
          AppRoutes.jetsoCasinoHomeScreenInitialPage,
          AppRoutes.jetBrGamingPromotionsScreen,
          AppRoutes.jbet88UserDashboardScreen,
          AppRoutes.bet88AgentJackpotRankingScreen,
          AppRoutes.naradGamingDashboardScreen,
        ];
        Get.toNamed(routes[index], id: 1);
      },
      selectedIndex: 0,
      backgroundColor: appTheme.colorFF232B,
      activeColor: appTheme.colorFF85D4,
      inactiveColor: appTheme.colorFF8089,
      height: 64.h,
      showShadow: true,
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.jetsoCasinoHomeScreenInitialPage:
        return JetsoCasinoHomeScreenInitialPage();
      case AppRoutes.jetBrGamingPromotionsScreen:
        return JetBrGamingPromotionsScreen();
      case AppRoutes.jbet88UserDashboardScreen:
        return Jbet88UserDashboardScreen();
      case AppRoutes.bet88AgentJackpotRankingScreen:
        return Bet88AgentJackpotRankingScreen();
      case AppRoutes.naradGamingDashboardScreen:
        return NaradGamingDashboardScreen();
      default:
        return Container();
    }
  }
}
