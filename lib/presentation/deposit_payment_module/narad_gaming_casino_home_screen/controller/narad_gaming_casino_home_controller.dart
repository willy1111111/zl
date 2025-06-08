import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/game_card_model.dart';
import '../models/narad_gaming_casino_home_model.dart';
import '../models/sidebar_navigation_item_model.dart';

class NaradGamingCasinoHomeController extends GetxController {
  Rx<NaradGamingCasinoHomeModel> naradGamingCasinoHomeModelObj =
      NaradGamingCasinoHomeModel().obs;

  // Observable variables
  RxString currencySymbol = '₱'.obs;
  RxString balance = '1980.00'.obs;
  RxString jackpotAmount = '14,091,688.88'.obs;
  RxInt vipNotificationCount = 2.obs;

  // Lists
  RxList<SidebarNavigationItemModel> sidebarItems =
      <SidebarNavigationItemModel>[].obs;
  RxList<GameCardModel> gameCards = <GameCardModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeSidebarItems();
    initializeGameCards();
  }

  void initializeSidebarItems() {
    sidebarItems.value = [
      SidebarNavigationItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
        label: 'Hot'.obs,
        isSelected: true.obs,
        gradientColors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
      ),
      SidebarNavigationItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        label: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SidebarNavigationItemModel(
        iconPath: ImageConstant.img136x36.obs,
        label: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarNavigationItemModel(
        iconPath: ImageConstant.img5.obs,
        label: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarNavigationItemModel(
        iconPath: ImageConstant.img2.obs,
        label: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarNavigationItemModel(
        iconPath: ImageConstant.img736x36.obs,
        label: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SidebarNavigationItemModel(
        iconPath: ImageConstant.img336x36.obs,
        label: 'Egame'.obs,
        isSelected: false.obs,
      ),
      SidebarNavigationItemModel(
        iconPath: ImageConstant.img6.obs,
        label: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void initializeGameCards() {
    gameCards.value = [
      GameCardModel(
        gameImagePath: ImageConstant.img231000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        gameTitle: 'Fortune Ox fortune'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img491000.obs,
        overlayIconPath: ImageConstant.imgGroup1019.obs,
        gameTitle: 'super Ace'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img102x1000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img211000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img911000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'lucky coming'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img277771000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img431000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img441000.obs,
        overlayIconPath: ImageConstant.imgGroup1029.obs,
        gameTitle: 'lucky coming'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img471000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'Roma x'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.img461000.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'diamond party'.obs,
      ),
      GameCardModel(
        gameImagePath: ImageConstant.imgJdbslot092.obs,
        overlayIconPath: ImageConstant.imgGroup1024.obs,
        gameTitle: 'lucky coming'.obs,
      ),
    ];
  }

  void refreshBalance() {
    // Simulate balance refresh
    print('Balance refreshed');
  }

  void onWithdrawalPressed() {
    print('Withdrawal button pressed');
  }

  void onDepositPressed() {
    print('Deposit button pressed');
  }

  void onCollectPressed() {
    print('Collect button pressed');
  }

  void onSidebarItemPressed(int index) {
    // Update selected state
    for (int i = 0; i < sidebarItems.length; i++) {
      sidebarItems[i].isSelected?.value = i == index;
    }
    print('Sidebar item $index pressed: ${sidebarItems[index].label?.value}');
  }

  void onGameCardPressed(int index) {
    if (index < gameCards.length) {
      print('Game card pressed: ${gameCards[index].gameTitle?.value}');
    }
  }

  void onVipClubPressed() {
    print('VIP Club pressed');
  }

  void onReceivePressed() {
    print('Receive button pressed');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
