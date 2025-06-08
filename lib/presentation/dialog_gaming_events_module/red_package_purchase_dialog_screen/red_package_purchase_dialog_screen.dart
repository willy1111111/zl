import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/red_package_purchase_dialog_controller.dart';
import './red_package_purchase_dialog_initial_page.dart';

class RedPackagePurchaseDialogScreen
    extends GetWidget<RedPackagePurchaseDialogController> {
  RedPackagePurchaseDialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: AppRoutes.redPackagePurchaseDialogScreenInitialPage,
          onGenerateRoute: (routeSetting) => GetPageRoute(
            page: () => getCurrentPage(routeSetting.name!),
            transition: Transition.noTransition,
          ),
        ),
        bottomNavigationBar: SizedBox(
          width: double.maxFinite,
          child: _buildBottomNavigation(),
        ),
        floatingActionButton: _buildFloatingActionButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  Widget _buildBottomNavigation() {
    return CustomBottomNavigationBar(
      items: [
        CustomBottomNavItem(
          label: 'Home',
          routeName: AppRoutes.redPackagePurchaseDialogScreenInitialPage,
          iconPath: ImageConstant.imgGroup13059,
        ),
        CustomBottomNavItem(
          label: 'Deposit',
          routeName: AppRoutes.redPackagePurchaseDialogScreenInitialPage,
          iconPath: ImageConstant.imgGroup13060,
        ),
        CustomBottomNavItem(
          label: 'Invite',
          routeName: AppRoutes.redPackagePurchaseDialogScreenInitialPage,
          iconPath: ImageConstant.imgGroup13043,
        ),
        CustomBottomNavItem(
          label: 'Spin',
          routeName: AppRoutes.redPackagePurchaseDialogScreenInitialPage,
          iconPath: ImageConstant.imgGroup13061,
          notificationBadgePath: ImageConstant.imgRedA70001,
          badgeTop: 9.h,
          badgeRight: 15.h,
        ),
        CustomBottomNavItem(
          label: 'Teams',
          routeName: AppRoutes.redPackagePurchaseDialogScreenInitialPage,
          iconPath: ImageConstant.imgGroup13062,
        ),
      ],
      selectedIndex: 0,
      onTap: (index) {
        Get.toNamed(getCurrentRoute(index), id: 1);
      },
    );
  }

  Widget _buildFloatingActionButton() {
    return Container(
      width: 56.h,
      height: 56.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF242A,
        borderRadius: BorderRadius.circular(28.h),
      ),
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup13043,
        height: 53.h,
        width: 49.h,
        fit: BoxFit.contain,
      ),
    );
  }

  String getCurrentRoute(int index) {
    switch (index) {
      case 0:
        return AppRoutes.redPackagePurchaseDialogScreenInitialPage;
      case 1:
        return AppRoutes.redPackagePurchaseDialogScreenInitialPage;
      case 2:
        return AppRoutes.redPackagePurchaseDialogScreenInitialPage;
      case 3:
        return AppRoutes.redPackagePurchaseDialogScreenInitialPage;
      case 4:
        return AppRoutes.redPackagePurchaseDialogScreenInitialPage;
      default:
        return AppRoutes.redPackagePurchaseDialogScreenInitialPage;
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.redPackagePurchaseDialogScreenInitialPage:
        return RedPackagePurchaseDialogInitialPage();
      default:
        return Container();
    }
  }
}
