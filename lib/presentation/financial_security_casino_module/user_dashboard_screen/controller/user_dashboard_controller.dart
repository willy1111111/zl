import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../models/promotional_item_model.dart';
import '../models/settings_menu_item_model.dart';
import '../models/teams_center_item_model.dart';
import '../models/user_dashboard_model.dart';

class UserDashboardController extends GetxController {
  Rx<UserDashboardModel> userDashboardModel = UserDashboardModel().obs;
  RxList<TeamsCenterItemModel> teamsCenterItems = <TeamsCenterItemModel>[].obs;
  RxList<PromotionalItemModel> promotionalItems = <PromotionalItemModel>[].obs;
  RxList<SettingsMenuItemModel> settingsMenuItems =
      <SettingsMenuItemModel>[].obs;
  RxList<CustomBottomBarItem> bottomBarItemList = <CustomBottomBarItem>[].obs;

  late TextEditingController giftCodeController;

  @override
  void onInit() {
    super.onInit();
    giftCodeController = TextEditingController();
    initializeUserDashboardData();
    initializeTeamsCenterItems();
    initializePromotionalItems();
    initializeSettingsMenuItems();
    initializeBottomBarItems();
  }

  @override
  void onClose() {
    giftCodeController.dispose();
    super.onClose();
  }

  void initializeUserDashboardData() {
    userDashboardModel.value = UserDashboardModel(
      userName: 'User name'.obs,
      userId: '98955464616'.obs,
      totalBalance: '₱ 693.00'.obs,
      totalBonusClaimed: '₱ 1324.00'.obs,
    );
  }

  void initializeTeamsCenterItems() {
    teamsCenterItems.value = [
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector26x26.obs,
        title: 'Betting Record'.obs,
      ),
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector26x20.obs,
        title: 'Account Record'.obs,
      ),
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector25x26.obs,
        title: 'Deposit Record'.obs,
      ),
      TeamsCenterItemModel(
        icon: ImageConstant.imgVector26x24.obs,
        title: 'Withdrawal Record'.obs,
      ),
    ];
  }

  void initializePromotionalItems() {
    promotionalItems.value = [
      PromotionalItemModel(
        icon: ImageConstant.imgInvite1.obs,
        title: 'Invite -'.obs,
        description: 'Reconnend friends To join'.obs,
        highlightText: ' jbet88 and Earn money'.obs,
      ),
      PromotionalItemModel(
        icon: ImageConstant.imgGroup12769.obs,
        title: 'Spin -'.obs,
        description: 'Win real money '.obs,
        highlightText: '₱500'.obs,
      ),
      PromotionalItemModel(
        icon: ImageConstant.imgGroup120051.obs,
        title: 'Cashback -'.obs,
        description: 'Weekly '.obs,
        highlightText: 'Max:20%'.obs,
      ),
      PromotionalItemModel(
        icon: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1.obs,
        title: 'Sign-in -'.obs,
        description: 'Continuous login Continuous rewards'.obs,
        highlightText: ''.obs,
      ),
      PromotionalItemModel(
        icon: ImageConstant.imgGroup13081.obs,
        title: 'Cumulative Deposit -'.obs,
        description: ''.obs,
        highlightText: 'Get Bonus'.obs,
      ),
      PromotionalItemModel(
        icon: ImageConstant.imgFrame14123.obs,
        title: 'Ticket Event'.obs,
        description: ''.obs,
        highlightText: ''.obs,
      ),
    ];
  }

  void initializeSettingsMenuItems() {
    settingsMenuItems.value = [
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40018x22.obs,
        title: 'VIP'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVector2.obs,
        title: 'Promotion'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgGroup830.obs,
        title: 'Notification'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40017x20.obs,
        title: 'Download the official App for a ₱28 reward'.obs,
        hasButton: true.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVector1.obs,
        title: 'Live Support'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x22.obs,
        title: 'Suggestion'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x20.obs,
        title: 'Setting'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40019x20.obs,
        title: 'Help Center'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVector20x20.obs,
        title: 'Logout'.obs,
      ),
    ];
  }

  void initializeBottomBarItems() {
    bottomBarItemList.value = [
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
    ];
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onExchangePressed() {
    String giftCode = giftCodeController.text;
    if (giftCode.isNotEmpty) {
      // Handle gift code exchange
      giftCodeController.clear();
    }
  }

  void onPromotionalItemTapped(int index) {
    switch (index) {
      case 0:
        // Navigate to invite screen
        break;
      case 1:
        // Navigate to spin screen
        break;
      case 2:
        // Navigate to cashback screen
        break;
      case 3:
        // Navigate to sign-in screen
        break;
      case 4:
        // Navigate to cumulative deposit screen
        break;
      case 5:
        Get.toNamed(AppRoutes.ticketEventScreen);
        break;
    }
  }

  void onSettingsMenuItemTapped(int index) {
    switch (index) {
      case 0:
        // Navigate to VIP screen
        break;
      case 1:
        // Navigate to promotion screen
        break;
      case 2:
        // Navigate to notification screen
        break;
      case 3:
        // Handle app download
        break;
      case 4:
        // Navigate to live support
        break;
      case 5:
        // Navigate to suggestion screen
        break;
      case 6:
        // Navigate to settings screen
        break;
      case 7:
        // Navigate to help center
        break;
      case 8:
        // Handle logout
        break;
    }
  }

  void onTelegramPressed() {
    // Handle telegram action
  }

  void onFacebookPressed() {
    // Handle facebook action
  }

  void onFloatingInvitePressed() {
    // Handle floating invite action
  }
}
