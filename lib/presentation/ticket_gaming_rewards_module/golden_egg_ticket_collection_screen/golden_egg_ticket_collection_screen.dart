import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_bar.dart';
import '../gaming_ticket_spin_wheel_screen/gaming_ticket_spin_wheel_screen.dart';
import '../integrated_spin_wheel_gaming_screen/integrated_spin_wheel_gaming_screen.dart';
import './controller/golden_egg_ticket_collection_controller.dart';
import './golden_egg_ticket_collection_screen_initial_page.dart';

class GoldenEggTicketCollectionScreen
    extends GetWidget<GoldenEggTicketCollectionController> {
  GoldenEggTicketCollectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.goldenEggTicketCollectionScreenInitialPage,
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
      items: [
        CustomBottomBarItem(
          icon: ImageConstant.imgGroup13059,
          title: 'Home',
          routeName: AppRoutes.goldenEggTicketCollectionScreen,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.imgGroup13060,
          title: 'Deposit',
          routeName: AppRoutes.ticketRecordsDashboardScreen,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.imgGroup13061,
          title: 'Spin',
          routeName: AppRoutes.gamingTicketSpinWheelScreen,
        ),
        CustomBottomBarItem(
          title: 'Invite',
          routeName: AppRoutes.rewardsAchievementsScreen,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.imgGroup13062,
          title: 'Teams',
          routeName: AppRoutes.integratedSpinWheelGamingScreen,
        ),
      ],
      selectedIndex: 0,
      onChanged: (index) {
        var routes = [
          AppRoutes.goldenEggTicketCollectionScreenInitialPage,
          AppRoutes.ticketRecordsDashboardScreen,
          AppRoutes.gamingTicketSpinWheelScreen,
          AppRoutes.rewardsAchievementsScreen,
          AppRoutes.integratedSpinWheelGamingScreen,
        ];
        Get.toNamed(routes[index], id: 1);
      },
      showNotificationBadge: {2: true},
      hasFab: true,
      fabItem: CustomBottomBarFabItem(
        icon: ImageConstant.imgGroup13043,
        onTap: () => Get.toNamed(AppRoutes.spinWheelGameplayScreen),
      ),
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.goldenEggTicketCollectionScreenInitialPage:
        return GoldenEggTicketCollectionScreenInitialPage();
      case AppRoutes.ticketRecordsDashboardScreen:
        return Container(); // Modified: Replaced undefined class with Container
      case AppRoutes.gamingTicketSpinWheelScreen:
        return GamingTicketSpinWheelScreen();
      case AppRoutes.rewardsAchievementsScreen:
        return Container(); // Modified: Replaced undefined class with Container
      case AppRoutes.integratedSpinWheelGamingScreen:
        return IntegratedSpinWheelGamingScreen();
      default:
        return Container();
    }
  }
}
