import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/category_nav_item_model.dart';
import '../models/game_card_item_model.dart';
import '../models/gaming_money_rain_promotion_model.dart';

class GamingMoneyRainPromotionController extends GetxController {
  Rx<GamingMoneyRainPromotionModel> gamingMoneyRainPromotionModel =
      GamingMoneyRainPromotionModel().obs;

  RxString userBalance = 'R\$1980.00'.obs;
  RxString jackpotAmount = '14,091,688.88'.obs;
  RxString nextRoundTimer = 'next Round 18:00:01'.obs;
  RxBool showMoneyRainDialog = false.obs;
  RxInt selectedCategoryIndex = 0.obs;

  RxList<GameCardItemModel> gameItems = <GameCardItemModel>[].obs;
  RxList<CategoryNavItemModel> categories = <CategoryNavItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    gameItems.value = [
      GameCardItemModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        gameTitle: 'Fortune Ox fortune'.obs,
        hasTitle: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayImagePath: ''.obs,
        gameTitle: 'super Ace'.obs,
        hasTitle: true.obs,
        hasCustomOverlay: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ''.obs,
        overlayImagePath: ''.obs,
        gameTitle: ''.obs,
        hasTitle: false.obs,
        isLogoCard: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.img1baccarat1.obs,
        gameTitle: ''.obs,
        hasTitle: false.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgBaccarat2.obs,
        gameTitle: ''.obs,
        hasTitle: false.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        gameTitle: 'Money Coming'.obs,
        hasTitle: true.obs,
        badgeImagePath: ImageConstant.imgGroup1024.obs,
        hasNotificationBadge: true.obs,
        notificationCount: '1'.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'Roma x'.obs,
        hasTitle: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'diamond party'.obs,
        hasTitle: true.obs,
      ),
      GameCardItemModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'lucky coming'.obs,
        hasTitle: true.obs,
      ),
    ];

    categories.value = [
      CategoryNavItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
        backgroundColor: Color(0xFFFFC61E).obs,
      ),
      CategoryNavItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      CategoryNavItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      CategoryNavItemModel(
        iconPath: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      CategoryNavItemModel(
        iconPath: ImageConstant.img2.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      CategoryNavItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
    ];
  }

  void onDownloadTap() {
    // Handle download action
  }

  void onCloseTap() {
    // Handle close action
  }

  void onRefreshBalance() {
    // Handle refresh balance action
  }

  void onWithdrawalTap() {
    // Navigate to withdrawal screen
  }

  void onDepositTap() {
    // Navigate to deposit screen
  }

  void onCloseNotification() {
    // Handle close notification
  }

  void onCollectTap() {
    // Handle collect action
  }

  void onCategoryTap(int index) {
    selectedCategoryIndex.value = index;
    for (int i = 0; i < categories.length; i++) {
      categories[i].isSelected?.value = (i == index);
    }
    categories.refresh();
  }

  void onGameTap(int index) {
    // Handle game selection
  }

  void onVipTap() {
    // Handle VIP section tap
  }

  void onBottomNavTap(int index, String route) {
    // Handle bottom navigation
  }

  void showMoneyRainDialogAction() {
    showMoneyRainDialog.value = true;
  }

  void closeMoneyRainDialog() {
    showMoneyRainDialog.value = false;
  }

  void onGoToDepositTap() {
    // Navigate to deposit screen
  }

  void onTurnToLuckTap() {
    // Handle turn to luck action
  }
}
