import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../casino_gaming_hub_screen/casino_gaming_hub_screen.dart';
import '../gaming_home_screen/gaming_home_screen.dart';
import '../qualified_bonus_screen/qualified_bonus_screen.dart';
import '../registration_bonus_screen/registration_bonus_screen.dart';
import './achievement_bonus_screen_initial_page.dart';
import './controller/achievement_bonus_controller.dart';

class AchievementBonusScreen extends GetWidget<AchievementBonusController> {
  AchievementBonusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.achievementBonusScreenInitialPage,
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
        CustomBottomNavItem(
          title: 'Home',
          routeName: AppRoutes.gamingHomeScreen,
          iconPath: ImageConstant.imgGroup13007,
        ),
        CustomBottomNavItem(
          title: 'Deposit',
          routeName: AppRoutes.casinoGamingHubScreen,
          iconPath: ImageConstant.imgGroup13004,
        ),
        CustomBottomNavItem(
          title: 'Invite',
          routeName: AppRoutes.qualifiedBonusScreen,
          iconPath: ImageConstant.imgInvite1,
          floatingIconPath: ImageConstant.imgInvite1,
        ),
        CustomBottomNavItem(
          title: 'Promotion',
          routeName: AppRoutes.registrationBonusScreen,
          iconPath: ImageConstant.imgGroup13067,
        ),
        CustomBottomNavItem(
          title: 'Teams',
          routeName: AppRoutes.achievementBonusScreen,
          iconPath: ImageConstant.imgGroup13046,
        ),
      ],
      selectedIndex: 4,
      onChanged: (index) {
        String routeName = _getRouteByIndex(index);
        Get.toNamed(routeName, id: 1);
      },
      hasFloatingInvite: true,
    );
  }

  String _getRouteByIndex(int index) {
    switch (index) {
      case 0:
        return AppRoutes.gamingHomeScreen;
      case 1:
        return AppRoutes.casinoGamingHubScreen;
      case 2:
        return AppRoutes.qualifiedBonusScreen;
      case 3:
        return AppRoutes.registrationBonusScreen;
      case 4:
        return AppRoutes.achievementBonusScreenInitialPage;
      default:
        return AppRoutes.achievementBonusScreenInitialPage;
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.achievementBonusScreenInitialPage:
        return AchievementBonusScreenInitialPage();
      case AppRoutes.gamingHomeScreen:
        return GamingHomeScreen();
      case AppRoutes.casinoGamingHubScreen:
        return CasinoGamingHubScreen();
      case AppRoutes.qualifiedBonusScreen:
        return QualifiedBonusScreen();
      case AppRoutes.registrationBonusScreen:
        return RegistrationBonusScreen();
      default:
        return AchievementBonusScreenInitialPage();
    }
  }
}
