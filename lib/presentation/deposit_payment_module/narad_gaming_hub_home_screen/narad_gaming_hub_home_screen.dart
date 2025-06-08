import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../deposit_confirmation_screen/deposit_confirmation_screen.dart';
import '../j_bet88_deposit_promotion_screen/j_bet88_deposit_promotion_screen.dart';
import './controller/narad_gaming_hub_home_controller.dart';
import './narad_gaming_hub_home_screen_initial_page.dart';

class NaradGamingHubHomeScreen extends GetWidget<NaradGamingHubHomeController> {
  NaradGamingHubHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.naradGamingHubHomeScreenInitialPage,
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
      items: [
        CustomBottomBarItem(
          iconPath: ImageConstant.imgVectorLightGreenA700,
          label: 'Home',
          routeName: AppRoutes.naradGamingHubHomeScreenInitialPage,
        ),
        CustomBottomBarItem(
          iconPath: ImageConstant.img1BlueGray40020x20,
          label: 'Promotion',
          routeName: AppRoutes.jBet88DepositPromotionScreen,
        ),
        CustomBottomBarItem(
          iconPath: ImageConstant.imgInvite1,
          label: 'Invite',
          routeName: AppRoutes.naradGamingHubHomeScreenInitialPage,
        ),
        CustomBottomBarItem(
          iconPath: ImageConstant.img120x19,
          label: 'Deposit',
          routeName: AppRoutes.depositConfirmationScreen,
        ),
        CustomBottomBarItem(
          iconPath: ImageConstant.img1BlueGray40020x19,
          label: 'Teams',
          routeName: AppRoutes.naradGamingHubHomeScreenInitialPage,
        ),
      ],
      selectedIndex: 0,
      onItemTapped: (index) {
        switch (index) {
          case 0:
            Get.toNamed(AppRoutes.naradGamingHubHomeScreenInitialPage, id: 1);
            break;
          case 1:
            Get.toNamed(AppRoutes.jBet88DepositPromotionScreen, id: 1);
            break;
          case 2:
            Get.toNamed(AppRoutes.naradGamingHubHomeScreenInitialPage, id: 1);
            break;
          case 3:
            Get.toNamed(AppRoutes.depositConfirmationScreen, id: 1);
            break;
          case 4:
            Get.toNamed(AppRoutes.naradGamingHubHomeScreenInitialPage, id: 1);
            break;
        }
      },
      specialFloatingItem: CustomBottomBarFloatingItem(
        iconPath: ImageConstant.imgInvite1,
        itemIndex: 2,
        size: Size(54.h, 54.h),
        label: 'Invite',
        topOffset: -24.h,
      ),
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.naradGamingHubHomeScreenInitialPage:
        return NaradGamingHubHomeScreenInitialPage();
      case AppRoutes.jBet88DepositPromotionScreen:
        return JBet88DepositPromotionScreen();
      case AppRoutes.depositConfirmationScreen:
        return DepositConfirmationScreen();
      default:
        return NaradGamingHubHomeScreenInitialPage();
    }
  }
}
