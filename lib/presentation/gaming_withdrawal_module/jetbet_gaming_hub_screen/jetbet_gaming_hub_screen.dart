import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_nav_bar.dart';
import './controller/jetbet_gaming_hub_controller.dart';
import './jetbet_gaming_hub_screen_initial_page.dart';

class JetbetGamingHubScreen extends GetWidget<JetbetGamingHubController> {
  const JetbetGamingHubScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.jetbetGamingHubScreenInitialPage,
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
          title: 'Home',
          routeName: AppRoutes.jetbetGamingHubScreenInitialPage,
          icon: ImageConstant.imgVectorLightGreenA70001,
        ),
        CustomBottomNavItem(
          title: 'Promotion',
          routeName: '/promotion',
          icon: ImageConstant.img1BlueGray40020x20,
        ),
        CustomBottomNavItem(
          title: 'Invite',
          routeName: '/invite',
          elevatedIcon: ImageConstant.imgInvite1,
        ),
        CustomBottomNavItem(
          title: 'Deposit',
          routeName: '/deposit',
          icon: ImageConstant.img1BlueGray40020x19,
        ),
        CustomBottomNavItem(
          title: 'Teams',
          routeName: '/teams',
          icon: ImageConstant.img1BlueGray400,
        ),
      ],
      selectedIndex: 0,
      onChanged: (index) {
        List<String> routes = [
          AppRoutes.jetbetGamingHubScreenInitialPage,
          '/promotion',
          '/invite',
          '/deposit',
          '/teams'
        ];
        Get.toNamed(routes[index], id: 1);
      },
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.jetbetGamingHubScreenInitialPage:
        return JetbetGamingHubScreenInitialPage();
      default:
        return Container();
    }
  }
}
