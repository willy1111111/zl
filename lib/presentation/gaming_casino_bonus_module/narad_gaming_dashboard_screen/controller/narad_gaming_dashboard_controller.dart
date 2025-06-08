import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_bottom_bar.dart';
import '../models/narad_gaming_dashboard_model.dart';
import '../models/promotion_item_model.dart';
import '../models/settings_menu_item_model.dart';
import '../models/teams_menu_item_model.dart';

class NaradGamingDashboardController extends GetxController {
  late TextEditingController giftCodeController;

  Rx<NaradGamingDashboardModel> naradGamingDashboardModel =
      NaradGamingDashboardModel().obs;
  RxList<PromotionItemModel> promotionItems = <PromotionItemModel>[].obs;
  RxList<TeamsMenuItemModel> teamsMenuItems = <TeamsMenuItemModel>[].obs;
  RxList<SettingsMenuItemModel> settingsMenuItems =
      <SettingsMenuItemModel>[].obs;
  RxList<CustomBottomBarItem> bottomBarItemList = <CustomBottomBarItem>[]
      .obs; // Modified: Changed from Rx<List<CustomBottomBarItem>> to RxList<CustomBottomBarItem>
  RxInt selectedBottomBarIndex = 4.obs;

  @override
  void onInit() {
    super.onInit();
    giftCodeController = TextEditingController();
    initializeData();
  }

  @override
  void onClose() {
    giftCodeController.dispose();
    super.onClose();
  }

  void initializeData() {
    naradGamingDashboardModel.value = NaradGamingDashboardModel();

    promotionItems.value = [
      PromotionItemModel(
        icon: ImageConstant.imgInvite136x36.obs,
        title: 'Invite -'.obs,
        description: 'Reconnend friends\nTo join '.obs,
        highlightText: 'jbet88 and Earn money'.obs,
      ),
      PromotionItemModel(
        icon: ImageConstant.imgGroup14071.obs,
        title: 'Spin -'.obs,
        description: 'Win real money '.obs,
        highlightText: '₱500'.obs,
      ),
      PromotionItemModel(
        icon: ImageConstant.imgGroup120051.obs,
        title: 'Cashback -'.obs,
        description: 'Weekly '.obs,
        highlightText: 'Max:20%'.obs,
      ),
      PromotionItemModel(
        icon: ImageConstant
            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1.obs,
        title: 'Sign-in -'.obs,
        description: 'Continuous login\nContinuous rewards'.obs,
        highlightText: ''.obs,
      ),
      PromotionItemModel(
        icon: ImageConstant.imgGroup13081Yellow100.obs,
        title: 'Cumulative Deposit -'.obs,
        description: 'Get Bonus'.obs,
        highlightText: ''.obs,
      ),
      PromotionItemModel(
        icon: ImageConstant.imgFrame14123.obs,
        title: 'Ticket Event'.obs,
        description: ''.obs,
        highlightText: ''.obs,
      ),
    ];

    teamsMenuItems.value = [
      TeamsMenuItemModel(
        icon: ImageConstant.imgVector26x26.obs,
        title: 'Betting\nRecord'.obs,
      ),
      TeamsMenuItemModel(
        icon: ImageConstant.imgVector26x20.obs,
        title: 'Account\nRecord'.obs,
      ),
      TeamsMenuItemModel(
        icon: ImageConstant.imgGroup14070.obs,
        title: 'Deposit Record'.obs,
      ),
      TeamsMenuItemModel(
        icon: ImageConstant.imgVector26x24.obs,
        title: 'Withdrawal Record'.obs,
      ),
    ];

    settingsMenuItems.value = [
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40018x22.obs,
        title: 'VIP'.obs,
        hasButton: false.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVector2.obs,
        title: 'Promotion'.obs,
        hasButton: false.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgGroup830.obs,
        title: 'Notification'.obs,
        hasButton: false.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40017x20.obs,
        title: 'Download the official App for a ₱28 reward'.obs,
        hasButton: true.obs,
        buttonText: 'INSTALALL'.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVector1.obs,
        title: 'Live Support'.obs,
        hasButton: false.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x22.obs,
        title: 'Suggestion'.obs,
        hasButton: false.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x20.obs,
        title: 'Setting'.obs,
        hasButton: false.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40019x20.obs,
        title: 'Help Center'.obs,
        hasButton: false.obs,
      ),
      SettingsMenuItemModel(
        icon: ImageConstant.imgVector20x20.obs,
        title: 'Logout'.obs,
        hasButton: false.obs,
      ),
    ];

    bottomBarItemList.value = [
      CustomBottomBarItem(
        icon: ImageConstant.imgGroup13007,
        title: 'Home',
        routeName: AppRoutes.gamingCasinoMobileAppHomeScreen,
      ),
      CustomBottomBarItem(
        icon: ImageConstant.imgGroup13004,
        title: 'Deposit',
        routeName: AppRoutes.depositRecordListScreen,
      ),
      CustomBottomBarItem(
        icon: ImageConstant.imgGroup13067,
        title: 'Invite',
        routeName: AppRoutes.jBet88GamingHubScreen,
      ),
      CustomBottomBarItem(
        icon: '',
        title: 'Promotion',
        routeName: AppRoutes.bonusCenterScreen,
      ),
      CustomBottomBarItem(
        icon: ImageConstant.imgGroup13046,
        title: 'Teams',
        routeName: AppRoutes.naradGamingDashboardScreen,
      ),
    ];
  }

  void onWithdrawalPressed() {
    // Handle withdrawal button press
  }

  void onDepositPressed() {
    Get.toNamed(AppRoutes.depositRecordListScreen);
  }

  void onTeamsMenuItemTap(int index) {
    switch (index) {
      case 0:
        // Navigate to betting record
        break;
      case 1:
        // Navigate to account record
        break;
      case 2:
        Get.toNamed(AppRoutes.depositRecordListScreen);
        break;
      case 3:
        // Navigate to withdrawal record
        break;
    }
  }

  void onPromotionItemTap(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.jBet88GamingHubScreen);
        break;
      case 1:
        // Navigate to spin
        break;
      case 2:
        // Navigate to cashback
        break;
      case 3:
        // Navigate to sign-in
        break;
      case 4:
        // Navigate to cumulative deposit
        break;
      case 5:
        // Navigate to ticket event
        break;
    }
  }

  void onSettingsMenuItemTap(int index) {
    switch (index) {
      case 0:
        Get.toNamed(AppRoutes.gamingCasinoVipRewardsScreen);
        break;
      case 1:
        Get.toNamed(AppRoutes.bonusCenterScreen);
        break;
      case 2:
        Get.toNamed(AppRoutes.notificationsScreen);
        break;
      case 3:
        onInstallAppPressed();
        break;
      case 4:
        // Navigate to live support
        break;
      case 5:
        // Navigate to suggestion
        break;
      case 6:
        // Navigate to setting
        break;
      case 7:
        // Navigate to help center
        break;
      case 8:
        onLogoutPressed();
        break;
    }
  }

  void onInstallAppPressed() {
    // Handle install app button press
  }

  void onLogoutPressed() {
    // Handle logout
  }

  void onTelegramTap() {
    // Handle telegram tap
  }

  void onFacebookTap() {
    // Handle facebook tap
  }

  void onBottomBarItemTap(int index) {
    selectedBottomBarIndex.value = index;
    if (bottomBarItemList.value[index].routeName.isNotEmpty) {
      Get.toNamed(bottomBarItemList.value[index].routeName);
    }
  }

  void onExchangeGiftCode() {
    // Handle gift code exchange
    String giftCode = giftCodeController.text;
    if (giftCode.isNotEmpty) {
      // Process gift code
    }
  }
}
