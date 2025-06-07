import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../models/game_item_model.dart';
import '../models/gaming_hub_model.dart';
import '../models/sidebar_item_model.dart';

class GamingHubController extends GetxController {
  Rx<GamingHubModel?> gamingHubModel = Rx<GamingHubModel?>(null);
  RxList<SidebarItemModel> sidebarItems = <SidebarItemModel>[].obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    gamingHubModel.value = GamingHubModel();
    _initializeSidebarItems();
    _initializeGameItems();
  }

  void _initializeSidebarItems() {
    sidebarItems.value = [
      SidebarItemModel(
        icon: ImageConstant.imgVectorDeepOrangeA400.obs,
        title: 'Hot'.obs,
        isActive: true.obs,
        gradientColors: [Color(0xFFFFC61E), Color(0xFFFFA001)],
      ),
      SidebarItemModel(
        icon: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isActive: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img1.obs,
        title: 'Live'.obs,
        isActive: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img536x36.obs,
        title: 'Bingo'.obs,
        isActive: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img2.obs,
        title: 'Table'.obs,
        isActive: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isActive: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img3.obs,
        title: 'Egame'.obs,
        isActive: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isActive: false.obs,
      ),
    ];
  }

  void _initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        imageUrl: ImageConstant.img231000.obs,
        title: 'Fortune Ox fortune'.obs,
        platformIcon: ImageConstant.imgPlatform24.obs,
        platformColor: appTheme.colorFFFFD6,
      ),
      GameItemModel(
        imageUrl: ImageConstant.img491000.obs,
        title: 'super Ace'.obs,
        platformColor: appTheme.colorFF4147,
      ),
      GameItemModel(
        imageUrl: ImageConstant.imgLogowj931.obs,
        title: 'Money Coming'.obs,
        platformColor: appTheme.colorFF4147,
        backgroundColor: appTheme.colorFF3035,
      ),
      GameItemModel(
        imageUrl: ImageConstant.img102x1000.obs,
        title: 'Roma x'.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        platformIcon: ImageConstant.imgFastspin.obs,
        gradientColors: [Color(0xFFFFAA3A), Color(0xFFEB4136)],
      ),
      GameItemModel(
        imageUrl: ImageConstant.img211000.obs,
        title: 'diamond party'.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        platformIcon: ImageConstant.imgFastspin.obs,
        gradientColors: [Color(0xFFFFAA3A), Color(0xFFEB4136)],
      ),
      GameItemModel(
        imageUrl: ImageConstant.img911000.obs,
        title: 'lucky coming'.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        platformIcon: ImageConstant.imgFastspin.obs,
        gradientColors: [Color(0xFFFFAA3A), Color(0xFFEB4136)],
      ),
      GameItemModel(
        imageUrl: ImageConstant.img277771000.obs,
        title: 'Roma x'.obs,
        platformIcon: ImageConstant.imgLogoaw1024x459.obs,
        platformColor: appTheme.colorFFFFCC,
      ),
      GameItemModel(
        imageUrl: ImageConstant.img431000.obs,
        title: 'diamond party'.obs,
        platformIcon: ImageConstant.imgLogoaw1024x459.obs,
        platformColor: appTheme.colorFFFFCC,
      ),
      GameItemModel(
        imageUrl: ImageConstant.img441000.obs,
        title: 'lucky coming'.obs,
        platformIcon: ImageConstant.imgLogoaw1024x459.obs,
        platformColor: appTheme.colorFFFFCC,
      ),
      GameItemModel(
        imageUrl: ImageConstant.img471000.obs,
        title: 'Roma x'.obs,
        platformIcon: ImageConstant.imgJdbwhite.obs,
        gradientColors: [Color(0xFFFFD200), Color(0xFFFF2E39)],
      ),
      GameItemModel(
        imageUrl: ImageConstant.img461000.obs,
        title: 'diamond party'.obs,
        platformIcon: ImageConstant.imgJdbwhite.obs,
        gradientColors: [Color(0xFFFFD200), Color(0xFFFF2E39)],
      ),
      GameItemModel(
        imageUrl: ImageConstant.imgJdbslot092.obs,
        title: 'lucky coming'.obs,
        platformIcon: ImageConstant.imgPgwhite.obs,
        gradientColors: [Color(0xFF00CCFF), Color(0xFF6313E7)],
      ),
      GameItemModel(
        imageUrl: ImageConstant.img771000.obs,
        title: 'Roma x'.obs,
        platformIcon: ImageConstant.imgPgwhite.obs,
        gradientColors: [Color(0xFF00CCFF), Color(0xFF6313E7)],
      ),
      GameItemModel(
        imageUrl: ImageConstant.img401000.obs,
        title: 'diamond party'.obs,
        platformIcon: ImageConstant.imgPgwhite.obs,
        gradientColors: [Color(0xFF00CCFF), Color(0xFF6313E7)],
      ),
      GameItemModel(
        imageUrl: ImageConstant.imgJdbslot105.obs,
        title: 'lucky coming'.obs,
        platformIcon: ImageConstant.imgPgwhite.obs,
        gradientColors: [Color(0xFF00CCFF), Color(0xFF6313E7)],
      ),
    ];
  }

  void onCloseTap() {
    // Handle close promotional banner
  }

  void onDownloadTap() {
    // Handle download app action
  }

  void onWithdrawalTap() {
    // Handle withdrawal action
  }

  void onDepositTap() {
    // Handle deposit action
  }

  void onSidebarItemTap(SidebarItemModel item) {
    // Update active state
    for (var sidebarItem in sidebarItems.value) {
      sidebarItem.isActive?.value = false;
    }
    item.isActive?.value = true;
    sidebarItems.refresh();
  }

  void onGameTap(GameItemModel gameItem) {
    // Handle game selection
  }
}
