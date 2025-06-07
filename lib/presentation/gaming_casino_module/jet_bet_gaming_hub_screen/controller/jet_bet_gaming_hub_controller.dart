import 'package:flutter/material.dart';

import '../../../../../core/app_export.dart';
import '../models/game_card_model.dart';
import '../models/jet_bet_gaming_hub_model.dart';
import '../models/side_menu_button_model.dart';

class JetBetGamingHubController extends GetxController {
  Rx<JetBetGamingHubModel> jetBetGamingHubModel = JetBetGamingHubModel().obs;
  RxList<GameCardModel> gameCards = <GameCardModel>[].obs;
  RxList<SideMenuButtonModel> sideMenuButtons = <SideMenuButtonModel>[].obs;

  Rx<String>? balanceAmount = '₱1980.00'.obs;
  Rx<String>? jackpotAmount = '14,091,688.88'.obs;

  @override
  void onInit() {
    super.onInit();
    initializeData();
  }

  void initializeData() {
    jetBetGamingHubModel.value = JetBetGamingHubModel();
    _initializeGameCards();
    _initializeSideMenuButtons();
  }

  void _initializeGameCards() {
    gameCards.value = [
      GameCardModel(
        gameImage: ImageConstant.img231000.obs,
        gameName: 'Fortune Ox fortune'.obs,
        platformIcon: ImageConstant.imgPlatform24.obs,
        platformBg: Color(0xFFFFD600).obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img491000.obs,
        gameName: 'super Ace'.obs,
        platformBg: Color(0xFF41474D).obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.imgLogowj931.obs,
        gameName: 'Money Coming'.obs,
        platformBg: Color(0xFF41474E).obs,
        isCustomBackground: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img102x1000.obs,
        gameName: 'Roma x'.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        platformIcon: ImageConstant.imgFastspin.obs,
        isGradientPlatform: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img211000.obs,
        gameName: 'diamond party'.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        platformIcon: ImageConstant.imgFastspin.obs,
        isGradientPlatform: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img911000.obs,
        gameName: 'lucky coming'.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        platformIcon: ImageConstant.imgFastspin.obs,
        isGradientPlatform: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img277771000.obs,
        gameName: 'Roma x'.obs,
        platformIcon: ImageConstant.imgLogoaw1024x459.obs,
        platformBg: Color(0xFFFFCC00).obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img431000.obs,
        gameName: 'diamond party'.obs,
        platformIcon: ImageConstant.imgLogoaw1024x459.obs,
        platformBg: Color(0xFFFFCC00).obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img441000.obs,
        gameName: 'lucky coming'.obs,
        platformIcon: ImageConstant.imgLogoaw1024x459.obs,
        platformBg: Color(0xFFFFCC00).obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img471000.obs,
        gameName: 'Roma x'.obs,
        platformIcon: ImageConstant.imgJdbwhite.obs,
        isJdbGradient: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img461000.obs,
        gameName: 'diamond party'.obs,
        platformIcon: ImageConstant.imgJdbwhite.obs,
        isJdbGradient: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.imgJdbslot092.obs,
        gameName: 'lucky coming'.obs,
        platformIcon: ImageConstant.imgPgwhite.obs,
        isPgGradient: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img771000.obs,
        gameName: 'Roma x'.obs,
        platformIcon: ImageConstant.imgPgwhite.obs,
        isPgGradient: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.img401000.obs,
        gameName: 'diamond party'.obs,
        platformIcon: ImageConstant.imgPgwhite.obs,
        isPgGradient: true.obs,
      ),
      GameCardModel(
        gameImage: ImageConstant.imgJdbslot105.obs,
        gameName: 'lucky coming'.obs,
        platformIcon: ImageConstant.imgPgwhite.obs,
        isPgGradient: true.obs,
      ),
    ];
  }

  void _initializeSideMenuButtons() {
    sideMenuButtons.value = [
      SideMenuButtonModel(
        icon: ImageConstant.imgVectorDeepOrangeA400.obs,
        label: 'Hot'.obs,
        isActive: true.obs,
      ),
      SideMenuButtonModel(
        icon: ImageConstant.img10733643587.obs,
        label: 'Slot'.obs,
        isActive: false.obs,
      ),
      SideMenuButtonModel(
        icon: ImageConstant.img1.obs,
        label: 'Live'.obs,
        isActive: false.obs,
      ),
      SideMenuButtonModel(
        icon: ImageConstant.img536x36.obs,
        label: 'Bingo'.obs,
        isActive: false.obs,
      ),
      SideMenuButtonModel(
        icon: ImageConstant.img2.obs,
        label: 'Table'.obs,
        isActive: false.obs,
      ),
      SideMenuButtonModel(
        icon: ImageConstant.img7.obs,
        label: 'Fish'.obs,
        isActive: false.obs,
      ),
      SideMenuButtonModel(
        icon: ImageConstant.img336x36.obs,
        label: 'Egame'.obs,
        isActive: false.obs,
      ),
      SideMenuButtonModel(
        icon: ImageConstant.img6.obs,
        label: 'Sport'.obs,
        isActive: false.obs,
      ),
    ];
  }

  void onDownloadTap() {
    Get.snackbar('Download', 'Download feature triggered');
  }

  void onCloseTap() {
    Get.back();
  }

  void onRefreshBalance() {
    Get.snackbar('Refresh', 'Balance refreshed');
  }

  void onWithdrawalTap() {
    Get.snackbar('Withdrawal', 'Withdrawal feature triggered');
  }

  void onDepositTap() {
    Get.snackbar('Deposit', 'Deposit feature triggered');
  }

  void onGameCardTap(GameCardModel gameCard) {
    Get.snackbar('Game', 'Selected game: ${gameCard.gameName?.value ?? ""}');
  }

  void onSideMenuTap(SideMenuButtonModel sideMenuButton) {
    for (var button in sideMenuButtons) {
      button.isActive?.value = false;
    }
    sideMenuButton.isActive?.value = true;
    Get.snackbar('Category', 'Selected: ${sideMenuButton.label?.value ?? ""}');
  }

  void onFloatingActionTap() {
    Get.snackbar('FAB', 'Floating action button tapped');
  }

  void onActivityTap() {
    Get.snackbar('Activity', 'Activity banner tapped');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
