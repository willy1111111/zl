import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_bottom_navigation_bar.dart';
import '../models/game_card_model.dart';
import '../models/jet_bet_casino_model.dart';
import '../models/sidebar_menu_item_model.dart';

class JetBetCasinoController extends GetxController {
  Rx<JetBetCasinoModel> jetBetCasinoModel = JetBetCasinoModel().obs;
  RxList<GameCardModel> gameItems = <GameCardModel>[].obs;
  RxList<SidebarMenuItemModel> sidebarItems = <SidebarMenuItemModel>[].obs;
  RxList<CustomBottomNavItem> bottomNavItems = <CustomBottomNavItem>[].obs;
  RxInt selectedBottomNavIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    jetBetCasinoModel.value = JetBetCasinoModel(
      balance: '1980.00'.obs,
      currency: '₱'.obs,
      jackpotAmount: '14,091,688.88'.obs,
    );
    initializeGameItems();
    initializeSidebarItems();
    initializeBottomNavItems();
  }

  void initializeGameItems() {
    gameItems.value = [
      GameCardModel(
        imagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        gameId: '231000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img491000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'super Ace'.obs,
        gameId: '491000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.imgLogowj93120x56.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Money Coming'.obs,
        gameId: 'money_coming'.obs,
        backgroundColor: Color(0xFF30353A).obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        gameId: '102x1000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        gameId: '211000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        gameId: '911000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        gameId: '277771000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        gameId: '431000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        gameId: '441000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img471000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        gameId: '471000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img461000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        gameId: '461000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.imgJdbslot092.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        gameId: 'jdbslot092'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img771000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        gameId: '771000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.img401000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        gameId: '401000'.obs,
      ),
      GameCardModel(
        imagePath: ImageConstant.imgJdbslot105.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        gameId: 'jdbslot105'.obs,
      ),
    ];
  }

  void initializeSidebarItems() {
    sidebarItems.value = [
      SidebarMenuItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA40001.obs,
        title: 'Hot'.obs,
        isActive: true.obs,
        gradient: 'hot'.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isActive: false.obs,
        gradient: 'sidebar'.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isActive: false.obs,
        gradient: 'sidebar'.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img536x36.obs,
        title: 'Bingo'.obs,
        isActive: false.obs,
        gradient: 'sidebar'.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isActive: false.obs,
        gradient: 'sidebar'.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isActive: false.obs,
        gradient: 'sidebar'.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img3.obs,
        title: 'Egame'.obs,
        isActive: false.obs,
        gradient: 'sidebar'.obs,
      ),
      SidebarMenuItemModel(
        iconPath: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isActive: false.obs,
        gradient: 'sidebar'.obs,
      ),
    ];
  }

  void initializeBottomNavItems() {
    bottomNavItems.value = [
      CustomBottomNavItem(
        title: 'Home',
        routeName: AppRoutes.jetBetCasinoScreen,
        iconPath: ImageConstant.imgGroup13007,
      ),
      CustomBottomNavItem(
        title: 'Deposit',
        routeName: AppRoutes.casinoGamingHubScreen,
        iconPath: ImageConstant.imgGroup13004,
      ),
      CustomBottomNavItem(
        title: 'Invite',
        routeName: AppRoutes.gamingHomeScreen,
        iconPath: ImageConstant.imgGroup13067,
      ),
      CustomBottomNavItem(
        title: 'Promotion',
        routeName: AppRoutes.qualifiedBonusScreen,
        iconPath: '',
      ),
      CustomBottomNavItem(
        title: 'Teams',
        routeName: AppRoutes.achievementBonusScreen,
        iconPath: ImageConstant.imgGroup13046,
      ),
    ];
  }

  void onDownloadPressed() {
    Get.toNamed(AppRoutes.gamingAppDownloadScreen);
  }

  void onRefreshBalance() {
    // Refresh balance logic
    jetBetCasinoModel.value.balance?.value = '1980.00';
    update();
  }

  void onWithdrawalPressed() {
    // Navigate to withdrawal screen
  }

  void onDepositPressed() {
    Get.toNamed(AppRoutes.casinoGamingHubScreen);
  }

  void onAppBannerPressed() {
    Get.toNamed(AppRoutes.gamingAppDownloadScreen);
  }

  void onCollectPressed() {
    // Handle collect action
  }

  void onGamePressed(GameCardModel gameModel) {
    // Handle game selection
  }

  void onSidebarItemPressed(SidebarMenuItemModel sidebarModel) {
    // Update active state
    for (var item in sidebarItems) {
      item.isActive?.value = false;
    }
    sidebarModel.isActive?.value = true;
    sidebarItems.refresh();
  }

  void onActivityPressed() {
    Get.toNamed(AppRoutes.achievementBonusScreen);
  }

  void onFabPressed() {
    // Handle floating action button press
  }

  void onBottomNavChanged(int index) {
    selectedBottomNavIndex.value = index;
    if (index < bottomNavItems.length) {
      Get.toNamed(bottomNavItems[index].routeName);
    }
  }
}
