import '../../../core/app_export.dart';
import '../models/game_item_model.dart';
import '../models/narad_casino_gaming_platform_model.dart';
import '../models/promotional_overlay_model.dart';
import '../models/sidebar_item_model.dart';

class NaradCasinoGamingPlatformController extends GetxController {
  Rx<NaradCasinoGamingPlatformModel> naradCasinoGamingPlatformModelObj =
      NaradCasinoGamingPlatformModel().obs;

  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<SidebarItemModel> sidebarItems = <SidebarItemModel>[].obs;
  RxList<PromotionalOverlayModel> promotionalOverlays =
      <PromotionalOverlayModel>[].obs;

  RxInt selectedBottomNavIndex = 0.obs;
  RxString currentBalance = '₱1980.00'.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeGameItems();
    _initializeSidebarItems();
    _initializePromotionalOverlays();
  }

  void _initializeGameItems() {
    gameItems.value = [
      // Row 1
      GameItemModel(
        gameImage: ImageConstant.img231000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img491000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'super Ace'.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgLogowj931.obs,
        title: 'Money Coming'.obs,
        isRounded: true.obs,
        isCustomBackground: true.obs,
      ),

      // Row 2
      GameItemModel(
        gameImage: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.img1baccarat1.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgBaccarat2.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img911000.obs,
        overlayImage: ImageConstant.imgBaccarat1.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        isRounded: true.obs,
      ),

      // Row 3
      GameItemModel(
        gameImage: ImageConstant.img277771000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img431000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img441000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
        isRounded: true.obs,
      ),

      // Row 4
      GameItemModel(
        gameImage: ImageConstant.img471000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img461000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
        isRounded: true.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgJdbslot092.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
        isRounded: true.obs,
      ),
    ];
  }

  void _initializeSidebarItems() {
    sidebarItems.value = [
      SidebarItemModel(
        icon: ImageConstant.img10733643587.obs,
        title: 'Slot'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img136x36.obs,
        title: 'Live'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img5.obs,
        title: 'Bingo'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img236x36.obs,
        title: 'Table'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img7.obs,
        title: 'Fish'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img336x36.obs,
        title: 'Egame'.obs,
        isSelected: false.obs,
      ),
      SidebarItemModel(
        icon: ImageConstant.img6.obs,
        title: 'Sport'.obs,
        isSelected: false.obs,
      ),
    ];
  }

  void _initializePromotionalOverlays() {
    promotionalOverlays.value = [
      // Money Rain Overlay 1
      PromotionalOverlayModel(
        topPosition: 512.0.obs,
        leftPosition: 116.0.obs,
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        characterImage: ImageConstant.img23331.obs,
        badgeCount: 6.obs,
        timerText: '20Day 23:12'.obs,
        buttonText: 'Receive'.obs,
        moneyRainImage: ImageConstant.img1moneyrain.obs,
        buttonBackgroundImage: ImageConstant.img16.obs,
        showBadge: true.obs,
      ),

      // Gift Code Overlay
      PromotionalOverlayModel(
        topPosition: 664.0.obs,
        leftPosition: 116.0.obs,
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        characterImage: ImageConstant.img2333199x91.obs,
        buttonText: 'Details'.obs,
        moneyRainImage: ImageConstant.img1moneyrain22x118.obs,
        buttonBackgroundImage: ImageConstant.img1630x96.obs,
        showBadge: false.obs,
      ),

      // Money Rain Start Overlay
      PromotionalOverlayModel(
        topPosition: 426.0.obs,
        rightPosition: 7.0.obs,
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        characterImage: ImageConstant.img233312.obs,
        buttonText: '23:00 Start'.obs,
        moneyRainImage: ImageConstant.img1moneyrain2.obs,
        buttonBackgroundImage: ImageConstant.img1630x96.obs,
        showBadge: false.obs,
      ),

      // VIP Club Overlay
      PromotionalOverlayModel(
        topPosition: 748.0.obs,
        rightPosition: 7.0.obs,
        backgroundImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12001.obs,
        overlayImage: ImageConstant
            .img569114bd57270ff3cddd5d20ff7401e454dc67a1f09dic5q4gfw12002.obs,
        characterImage: ImageConstant.img233311.obs,
        badgeCount: 2.obs,
        buttonText: 'Receive'.obs,
        moneyRainImage: ImageConstant.img1moneyrain1.obs,
        buttonBackgroundImage: ImageConstant.img16.obs,
        showBadge: true.obs,
      ),
    ];
  }

  void onDownloadTap() {
    // Handle download button tap
  }

  void onCloseTap() {
    // Handle close button tap
  }

  void onRefreshBalance() {
    // Handle balance refresh
  }

  void onWithdrawalTap() {
    // Handle withdrawal button tap
  }

  void onDepositTap() {
    // Handle deposit button tap
  }

  void onGameItemTap(int index) {
    // Handle game item tap
  }

  void onSidebarItemTap(int index) {
    // Update sidebar selection
    for (int i = 0; i < sidebarItems.length; i++) {
      sidebarItems[i].isSelected?.value = i == index;
    }
  }

  void onPromotionalOverlayTap(int index) {
    // Handle promotional overlay tap
  }

  void onEndlessSurprisesTap() {
    // Handle endless surprises tap
  }

  void onBottomNavTap(int index) {
    selectedBottomNavIndex.value = index;

    switch (index) {
      case 0:
        // Home navigation
        break;
      case 1:
        // Promotion navigation
        break;
      case 2:
        // Invite navigation
        break;
      case 3:
        // Deposit navigation
        break;
      case 4:
        // Teams navigation
        break;
    }
  }
}
