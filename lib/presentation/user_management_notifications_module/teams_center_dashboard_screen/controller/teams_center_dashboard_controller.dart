import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/menu_item_model.dart';
import '../models/teams_center_dashboard_model.dart';

class TeamsCenterDashboardController extends GetxController {
  final teamsCenterDashboardModel = Rx<TeamsCenterDashboardModel?>(null);
  final giftCodeController = TextEditingController();
  final isSuccessModalVisible = false.obs;
  final menuItems = <MenuItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  @override
  void onClose() {
    giftCodeController.dispose();
    super.onClose();
  }

  void initializeData() {
    teamsCenterDashboardModel.value = TeamsCenterDashboardModel();

    menuItems.value = [
      MenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40018x22.obs,
        title: 'VIP'.obs,
      ),
      MenuItemModel(
        icon: ImageConstant.imgVector1.obs,
        title: 'Promotion'.obs,
      ),
      MenuItemModel(
        icon: ImageConstant.imgGroup830.obs,
        title: 'Notification'.obs,
      ),
      MenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40017x20.obs,
        title: 'Download the official App for a ₱28 reward'.obs,
        hasInstallButton: true.obs,
      ),
      MenuItemModel(
        icon: ImageConstant.imgVector20x20.obs,
        title: 'Live Support'.obs,
      ),
      MenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x22.obs,
        title: 'Suggestion'.obs,
      ),
      MenuItemModel(
        icon: ImageConstant.imgVectorBlueGray100.obs,
        title: 'Setting'.obs,
      ),
      MenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40019x20.obs,
        title: 'Help Center'.obs,
      ),
      MenuItemModel(
        icon: ImageConstant.imgVectorBlueGray40020x20.obs,
        title: 'Logout'.obs,
      ),
    ];
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onSuccessPressed() {
    isSuccessModalVisible.value = true;
    Future.delayed(Duration(seconds: 2), () {
      isSuccessModalVisible.value = false;
    });
  }

  void onBettingRecordPressed() {
    // Navigate to betting record screen
  }

  void onAccountRecordPressed() {
    // Navigate to account record screen
  }

  void onDepositRecordPressed() {
    // Navigate to deposit record screen
  }

  void onWithdrawalRecordPressed() {
    // Navigate to withdrawal record screen
  }

  void onInvitePressed() {
    // Navigate to invite screen
  }

  void onSpinPressed() {
    // Navigate to spin screen
  }

  void onCashbackPressed() {
    // Navigate to cashback screen
  }

  void onSignInPressed() {
    // Navigate to sign-in screen
  }

  void onExchangePressed() {
    String giftCode = giftCodeController.text.trim();
    if (giftCode.isNotEmpty) {
      // Handle gift code exchange
      onSuccessPressed();
      giftCodeController.clear();
    }
  }

  void onMenuItemPressed(int index) {
    switch (index) {
      case 0: // VIP
        break;
      case 1: // Promotion
        break;
      case 2: // Notification
        Get.toNamed(AppRoutes.notificationsScreen);
        break;
      case 3: // Download App
        break;
      case 4: // Live Support
        break;
      case 5: // Suggestion
        Get.toNamed(AppRoutes.customerSupportSuggestionScreen);
        break;
      case 6: // Setting
        Get.toNamed(AppRoutes.userProfileSettingsScreen);
        break;
      case 7: // Help Center
        break;
      case 8: // Logout
        break;
    }
  }
}
