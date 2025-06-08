import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import './controller/gaming_casino_vip_rewards_controller.dart';
import './gaming_casino_vip_rewards_screen_initial_page.dart';

class GamingCasinoVipRewardsScreen
    extends GetWidget<GamingCasinoVipRewardsController> {
  GamingCasinoVipRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.gamingCasinoVipRewardsScreenInitialPage,
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
          icon: ImageConstant.imgVectorLightGreenA700,
          title: 'Home',
          routeName: AppRoutes.gamingCasinoVipRewardsScreenInitialPage,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x20,
          title: 'Promotion',
          routeName: AppRoutes.gamingCasinoVipRewardsScreenInitialPage,
        ),
        CustomBottomBarItem(
          icon: '',
          title: 'Invite',
          routeName: AppRoutes.gamingCasinoVipRewardsScreenInitialPage,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray40020x19,
          title: 'Deposit',
          routeName: AppRoutes.gamingCasinoVipRewardsScreenInitialPage,
        ),
        CustomBottomBarItem(
          icon: ImageConstant.img1BlueGray400,
          title: 'Teams',
          routeName: AppRoutes.gamingCasinoVipRewardsScreenInitialPage,
        ),
      ],
      selectedIndex: 0,
      hasFloatingButton: true,
      floatingButtonImage: ImageConstant.imgInvite154x54,
      onChanged: (index) {
        Get.toNamed(AppRoutes.gamingCasinoVipRewardsScreenInitialPage, id: 1);
      },
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.gamingCasinoVipRewardsScreenInitialPage:
        return GamingCasinoVipRewardsScreenInitialPage();
      default:
        return Container();
    }
  }

  String getCurrentRoute(String routeName) {
    return AppRoutes.gamingCasinoVipRewardsScreenInitialPage;
  }
}
