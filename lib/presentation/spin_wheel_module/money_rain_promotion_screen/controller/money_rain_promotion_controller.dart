import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/game_item_model.dart';
import '../models/money_rain_promotion_model.dart';
import '../models/sidebar_menu_item_model.dart';

class MoneyRainPromotionController extends GetxController {
  Rx<MoneyRainPromotionModel?> moneyRainPromotionModel =
      MoneyRainPromotionModel().obs;
  RxBool isMoneyRainModalVisible = true.obs;
  RxString balance = 'R\$1980.00'.obs;
  RxInt selectedSideMenuIndex = 1.obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<SidebarMenuItemModel> sideMenuItems = <SidebarMenuItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    gameItems.value = [
      GameItemModel(
        imagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
        hasOverlay: false.obs,
        backgroundColor: Color(0xFF41474D).obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgLogowj931.obs,
        title: 'Money Coming'.obs,
        hasOverlay: false.obs,
        backgroundColor: Color(0xFF30353A).obs,
        isCustom: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.img1baccarat1.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgBaccarat2.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasOverlay: true.obs,
        hasNotificationBadge: true.obs,
        notificationCount: '1'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        hasOverlay: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        hasOverlay: true.obs,
      ),
    ];

    sideMenuItems.value = [
      SidebarMenuItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img2.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void onDownloadTap() {
    // Handle download app action
    Get.snackbar('Download', 'App download started');
  }

  void onCloseTap() {
    // Handle close banner action
    Get.snackbar('Banner', 'Banner closed');
  }

  void onRefreshBalance() {
    // Handle balance refresh
    Get.snackbar('Balance', 'Balance refreshed');
  }

  void onWithdrawalTap() {
    // Handle withdrawal action
    Get.snackbar('Withdrawal', 'Withdrawal screen opened');
  }

  void onDepositTap() {
    // Handle deposit action
    Get.snackbar('Deposit', 'Deposit screen opened');
  }

  void onGameTap(GameItemModel gameItem) {
    // Handle game selection
    Get.snackbar('Game', 'Selected: ${gameItem.title?.value ?? ''}');
  }

  void onSideMenuTap(int index) {
    selectedSideMenuIndex.value = index;
    for (int i = 0; i < sideMenuItems.length; i++) {
      sideMenuItems[i].isSelected?.value = i == index;
    }
    Get.snackbar(
        'Menu', 'Selected: ${sideMenuItems[index].title?.value ?? ''}');
  }

  void onBottomNavTap(int index, String route) {
    // Handle bottom navigation
    switch (index) {
      case 0:
        // Home - current screen
        break;
      case 1:
        // Promotion
        Get.snackbar('Navigation', 'Promotion selected');
        break;
      case 2:
        // Invite
        Get.snackbar('Navigation', 'Invite selected');
        break;
      case 3:
        // Deposit
        Get.snackbar('Navigation', 'Deposit selected');
        break;
      case 4:
        // Teams
        Get.snackbar('Navigation', 'Teams selected');
        break;
    }
  }

  void closeMoneyRainModal() {
    isMoneyRainModalVisible.value = false;
  }

  void openMoneyRainModal() {
    isMoneyRainModalVisible.value = true;
  }
}
