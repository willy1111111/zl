import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/game_item_model.dart';
import '../models/narad_money_rain_promotion_model.dart';
import '../models/sidebar_item_model.dart';

class NaradMoneyRainPromotionController extends GetxController {
  Rx<NaradMoneyRainPromotionModel> naradMoneyRainPromotionModel =
      NaradMoneyRainPromotionModel().obs;

  // Observable variables
  RxString balance = 'R\$1980.00'.obs;
  RxString jackpotAmount = '14,091,688.88'.obs;
  RxString nextRoundTimer = 'Next Round 18:00:01'.obs;
  RxBool showMoneyRainDialog = true.obs;

  // Game items list
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;

  // Sidebar items list
  RxList<SidebarItemModel> sidebarItems = <SidebarItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    naradMoneyRainPromotionModel.value = NaradMoneyRainPromotionModel();
    initializeGameItems();
    initializeSidebarItems();
  }

  void initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        gameTitle: 'Fortune Ox fortune'.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayImagePath: ''.obs,
        gameTitle: 'super Ace'.obs,
        hasOverlayBadge: true.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.imgLogowj931.obs,
        overlayImagePath: ''.obs,
        gameTitle: ''.obs,
        isSpecial: true.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.img1baccarat1.obs,
        gameTitle: 'Fortune Ox fortune'.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgBaccarat2.obs,
        gameTitle: 'super Ace'.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        gameTitle: 'Money Coming'.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
        hasNotificationBadge: true.obs,
        notificationCount: '1'.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'lucky coming'.obs,
      ),
    ];
  }

  void initializeSidebarItems() {
    sidebarItems.value = [
      SidebarItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isActive: true.obs,
        backgroundColor: Color(0xFFFFC61E).obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img2.obs,
        title: 'Table'.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SidebarItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
    ];
  }

  void onDownloadTap() {
    // Handle download action
    Get.snackbar('Download', 'Download started');
  }

  void onCloseTap() {
    // Handle close action
    Get.back();
  }

  void onWithdrawalTap() {
    // Handle withdrawal action
    Get.snackbar('Withdrawal', 'Withdrawal screen');
  }

  void onDepositTap() {
    // Handle deposit action
    Get.snackbar('Deposit', 'Deposit screen');
  }

  void onGameItemTap(int index) {
    // Handle game item tap
    Get.snackbar(
        'Game', 'Game ${gameItems[index].gameTitle?.value ?? ''} selected');
  }

  void onSidebarItemTap(SidebarItemModel item) {
    // Update active state
    for (var sidebarItem in sidebarItems) {
      sidebarItem.isActive?.value = false;
    }
    item.isActive?.value = true;

    // Handle sidebar item tap
    Get.snackbar('Category', '${item.title?.value ?? ''} selected');
  }

  void closeMoneyRainDialog() {
    showMoneyRainDialog.value = false;
  }

  void onTurnToLuckTap() {
    // Handle turn to luck action
    Get.snackbar('Lucky Spin', 'Starting lucky spin...');
    closeMoneyRainDialog();
  }

  void onBottomNavItemTapped(int index, String route) {
    // Handle bottom navigation
    if (route.isNotEmpty) {
      Get.toNamed(route);
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
