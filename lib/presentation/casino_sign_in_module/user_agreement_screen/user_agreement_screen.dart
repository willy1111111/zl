import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../widgets/custom_bottom_navigation_bar.dart';
import '../money_rain_event_screen/money_rain_event_screen.dart';
import '../registration_success_screen/registration_success_screen.dart';
import './controller/user_agreement_controller.dart';
import './user_agreement_screen_initial_page.dart';

class UserAgreementScreen extends GetWidget<UserAgreementController> {
  UserAgreementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.userAgreementScreenInitialPage,
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
      bottomBarItems: [
        CustomBottomNavigationItem(
          icon: ImageConstant.imgGroup14061,
          title: 'Home',
          routeName: AppRoutes.userAgreementScreenInitialPage,
          iconHeight: 42.h,
          iconWidth: 42.h,
        ),
        CustomBottomNavigationItem(
          icon: ImageConstant.imgGroup14062,
          title: 'Deposit',
          routeName: AppRoutes.registrationSuccessScreen,
          iconHeight: 42.h,
          iconWidth: 42.h,
        ),
        CustomBottomNavigationItem(
          icon: ImageConstant.imgVector25x27,
          title: 'Invite',
          routeName: AppRoutes.moneyRainEventScreen,
          iconHeight: 25.h,
          iconWidth: 27.h,
        ),
        CustomBottomNavigationItem(
          icon: ImageConstant.imgGroup14063,
          title: 'Promotion',
          routeName: AppRoutes.userAgreementScreenInitialPage,
          iconHeight: 42.h,
          iconWidth: 42.h,
        ),
        CustomBottomNavigationItem(
          icon: ImageConstant.imgGroup14064,
          title: 'Teams',
          routeName: AppRoutes.userAgreementScreenInitialPage,
          iconHeight: 42.h,
          iconWidth: 42.h,
        ),
      ],
      selectedIndex: 0,
      onChanged: (index) {
        var routes = [
          AppRoutes.userAgreementScreenInitialPage,
          AppRoutes.registrationSuccessScreen,
          AppRoutes.moneyRainEventScreen,
          AppRoutes.userAgreementScreenInitialPage,
          AppRoutes.userAgreementScreenInitialPage,
        ];
        Get.toNamed(routes[index], id: 1);
      },
      variant: CustomBottomNavVariant.withSpecialInvite,
    );
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.userAgreementScreenInitialPage:
        return UserAgreementScreenInitialPage();
      case AppRoutes.registrationSuccessScreen:
        return RegistrationSuccessScreen();
      case AppRoutes.moneyRainEventScreen:
        return MoneyRainEventScreen();
      default:
        return UserAgreementScreenInitialPage();
    }
  }
}
