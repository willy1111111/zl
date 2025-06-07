import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/game_item_model.dart';
import '../models/gaming_home_model.dart';
import '../models/side_navigation_item_model.dart';

class GamingHomeController extends GetxController {
  Rx<GamingHomeModel> gamingHomeModel = GamingHomeModel().obs;
  RxString balance = '1980.00'.obs;
  RxBool showDownloadModal = false.obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<SideNavigationItemModel> sideNavigationItems =
      <SideNavigationItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeGameItems();
    _initializeSideNavigationItems();
  }

  void _initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        imagePath: ImageConstant.img231000.obs,
        overlayImagePath: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgLogowj93120x56.obs,
        title: 'Money Coming'.obs,
        backgroundColor: Color(0xFF30353A).obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img102x1000.obs,
        overlayImagePath: ImageConstant.img1baccarat1.obs,
        iconPath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img211000.obs,
        overlayImagePath: ImageConstant.imgBaccarat2.obs,
        iconPath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img911000.obs,
        overlayImagePath: ImageConstant.imgBaccarat1.obs,
        iconPath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img277771000.obs,
        iconPath: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img431000.obs,
        iconPath: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img441000.obs,
        iconPath: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img471000.obs,
        iconPath: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.img461000.obs,
        iconPath: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        imagePath: ImageConstant.imgJdbslot092.obs,
        iconPath: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
      ),
    ];
  }

  void _initializeSideNavigationItems() {
    sideNavigationItems.value = [
      SideNavigationItemModel(
        iconPath: ImageConstant.imgVectorDeepOrangeA40001.obs,
        title: 'Hot'.obs,
        isSelected: true.obs,
        backgroundColor: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
        ).obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img536x36.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img3.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
      ),
      SideNavigationItemModel(
        iconPath: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void closeBanner() {
    // Handle banner close
  }

  void refreshBalance() {
    // Handle balance refresh
    update();
  }

  void navigateToWithdrawal() {
    // Handle withdrawal navigation
  }

  void navigateToDeposit() {
    // Handle deposit navigation
  }

  void selectGame(GameItemModel game) {
    // Handle game selection
  }

  void selectSideNavigation(SideNavigationItemModel item) {
    // Update selected state
    for (var navItem in sideNavigationItems) {
      navItem.isSelected?.value = false;
    }
    item.isSelected?.value = true;
    sideNavigationItems.refresh();
  }

  void openDownloadModal() {
    showDownloadModal.value = true;
  }

  void closeDownloadModal() {
    showDownloadModal.value = false;
  }
}
