import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../../../../../widgets/custom_bottom_navigation_bar.dart';
import '../models/game_item_model.dart';
import '../models/gaming_app_download_model.dart';
import '../models/side_navigation_item_model.dart';

class GamingAppDownloadController extends GetxController {
  Rx<GamingAppDownloadModel?> gamingAppModel =
      Rx<GamingAppDownloadModel?>(null);
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<SideNavigationItemModel> sideNavigationItems =
      <SideNavigationItemModel>[].obs;
  RxBool isModalVisible = true.obs;
  RxList<CustomBottomNavItem> bottomNavigationItems =
      <CustomBottomNavItem>[].obs;

  @override
  void onInit() {
    super.onInit();
    gamingAppModel.value = GamingAppDownloadModel();
    _initializeGameItems();
    _initializeSideNavigationItems();
    _initializeBottomNavigationItems();
  }

  void _initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        imagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        hasPlayButton: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
        hasPlayButton: false.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgLogowj93120x56.obs,
        title: 'Money Coming'.obs,
        hasPlayButton: false.obs,
        isSpecial: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.img1baccarat1.obs,
        playButtonImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasPlayButton: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgBaccarat2.obs,
        playButtonImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasPlayButton: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        playButtonImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasPlayButton: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img277771000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        hasPlayButton: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img431000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        hasPlayButton: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img441000.obs,
        overlayImagePath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        hasPlayButton: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img471000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        hasPlayButton: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img461000.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        hasPlayButton: true.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgJdbslot092.obs,
        overlayImagePath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        hasPlayButton: true.obs,
      ),
    ];
  }

  void _initializeSideNavigationItems() {
    sideNavigationItems.value = [
      SideNavigationItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA40001.obs,
        title: 'Hot'.obs,
        isActive: true.obs,
        backgroundColor: Color(0xFFFFC61E).obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isActive: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isActive: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img536x36.obs,
        title: 'Bingo'.obs,
        isActive: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isActive: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isActive: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img3.obs,
        title: 'Egame'.obs,
        isActive: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isActive: false.obs,
        backgroundColor: Color(0xFF363C41).obs,
      ),
    ];
  }

  void _initializeBottomNavigationItems() {
    bottomNavigationItems.value = [
      CustomBottomNavItem(
        title: 'Home',
        routeName: AppRoutes.gamingHomeScreen,
        iconPath: ImageConstant.imgVectorLightGreenA70020x23,
      ),
      CustomBottomNavItem(
        title: 'Promotion',
        routeName: AppRoutes.registrationBonusScreen,
        iconPath: ImageConstant.img1BlueGray40020x20,
      ),
      CustomBottomNavItem(
        title: 'Invite',
        routeName: AppRoutes.qualifiedBonusScreen,
        iconPath: ImageConstant.img1BlueGray40020x19,
        floatingIconPath: ImageConstant.imgInvite1,
      ),
      CustomBottomNavItem(
        title: 'Deposit',
        routeName: AppRoutes.casinoGamingHubScreen,
        iconPath: ImageConstant.img1BlueGray40020x19,
      ),
      CustomBottomNavItem(
        title: 'Teams',
        routeName: AppRoutes.achievementBonusScreen,
        iconPath: ImageConstant.img1BlueGray400,
      ),
    ];
  }

  void refreshBalance() {
    // Simulate balance refresh
    gamingAppModel.value?.balance?.value =
        'R\$${(2000 + (DateTime.now().millisecond % 100)).toStringAsFixed(2)}';
  }

  void onWithdrawalTap() {
    // Handle withdrawal action
    Get.snackbar('Withdrawal', 'Withdrawal feature coming soon');
  }

  void onDepositTap() {
    // Handle deposit action
    Get.snackbar('Deposit', 'Deposit feature coming soon');
  }

  void onPromotionalBannerTap() {
    // Handle promotional banner tap
    Get.snackbar('Promotion', 'View promotional offers');
  }

  void closeLiveChatNotification() {
    // Handle close live chat notification
    Get.snackbar('Closed', 'Live chat notification closed');
  }

  void onSideNavigationTap(int index) {
    // Update active state
    for (int i = 0; i < sideNavigationItems.length; i++) {
      sideNavigationItems[i].isActive?.value = (i == index);
    }

    // Handle side navigation action
    switch (index) {
      case 0:
        Get.snackbar('Hot', 'Hot games selected');
        break;
      case 1:
        Get.snackbar('Slot', 'Slot games selected');
        break;
      case 2:
        Get.snackbar('Live', 'Live games selected');
        break;
      default:
        Get.snackbar('Game Category', 'Game category selected');
    }
  }

  void onGameItemTap(int index) {
    GameItemModel game = gameItems[index];
    Get.snackbar('Game', 'Selected: ${game.title?.value ?? "Unknown Game"}');
  }

  void onBottomNavigationTap(int index) {
    if (index < bottomNavigationItems.length) {
      Get.toNamed(bottomNavigationItems[index].routeName);
    }
  }

  void closeModal() {
    isModalVisible.value = false;
  }

  void downloadApp() {
    Get.snackbar('Download', 'App download started');
    closeModal();
  }
}
