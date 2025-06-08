import '../../../core/app_export.dart';
import '../models/game_item_model.dart';
import '../models/money_rain_game_model.dart';
import '../models/sidebar_navigation_item_model.dart';

class MoneyRainGameController extends GetxController {
  Rx<MoneyRainGameModel> moneyRainGameModel = MoneyRainGameModel().obs;
  RxBool showMoneyRainPopup = true.obs;

  // Observable variables
  Rx<String> userBalance = 'R\$1980.00'.obs;
  Rx<String> jackpotAmount = '14,091,688.88'.obs;
  Rx<String> prizeAmount = '₱ 200.01'.obs;
  RxInt selectedBottomNavIndex = 0.obs;
  RxInt selectedSidebarIndex = 0.obs;

  // Games list
  RxList<GameItemModel> gamesList = <GameItemModel>[
    GameItemModel(
      gameImagePath: ImageConstant.img231000.obs,
      overlayImagePath: ImageConstant.imgGroup1019.obs,
      gameTitle: 'Fortune Ox fortune'.obs,
    ),
    GameItemModel(
      gameImagePath: ImageConstant.img491000.obs,
      gameTitle: 'super Ace'.obs,
    ),
    GameItemModel(
      gameImagePath: ImageConstant.imgLogowj931.obs,
      gameTitle: ''.obs,
      isSpecial: true.obs,
    ),
    GameItemModel(
      gameImagePath: ImageConstant.img102x1000.obs,
      overlayImagePath: ImageConstant.img1baccarat1.obs,
      badgeImagePath: ImageConstant.imgGroup1024.obs,
      gameTitle: 'Fortune Ox fortune'.obs,
    ),
    GameItemModel(
      gameImagePath: ImageConstant.img211000.obs,
      overlayImagePath: ImageConstant.imgBaccarat2.obs,
      badgeImagePath: ImageConstant.imgGroup1024.obs,
      gameTitle: 'super Ace'.obs,
    ),
    GameItemModel(
      gameImagePath: ImageConstant.img911000.obs,
      overlayImagePath: ImageConstant.imgBaccarat1.obs,
      badgeImagePath: ImageConstant.imgGroup1024.obs,
      gameTitle: 'Money Coming'.obs,
      hasNotification: true.obs,
    ),
  ].obs;

  // Sidebar items
  RxList<SidebarNavigationItemModel> sidebarItems =
      <SidebarNavigationItemModel>[
    SidebarNavigationItemModel(
      iconPath: ImageConstant.imgVectorDeepOrangeA400.obs,
      title: 'Hot'.obs,
      isSelected: true.obs,
    ),
    SidebarNavigationItemModel(
      iconPath: ImageConstant.img10733643587.obs,
      title: 'Slot'.obs,
      isSelected: false.obs,
    ),
    SidebarNavigationItemModel(
      iconPath: ImageConstant.img136x36.obs,
      title: 'Live'.obs,
      isSelected: false.obs,
    ),
    SidebarNavigationItemModel(
      iconPath: ImageConstant.img5.obs,
      title: 'Bingo'.obs,
      isSelected: false.obs,
    ),
    SidebarNavigationItemModel(
      iconPath: ImageConstant.img2.obs,
      title: 'Table'.obs,
      isSelected: false.obs,
    ),
    SidebarNavigationItemModel(
      iconPath: ImageConstant.img7.obs,
      title: 'Fish'.obs,
      isSelected: false.obs,
    ),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    moneyRainGameModel.value = MoneyRainGameModel();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onDownloadTapped() {
    // Handle download action
    Get.snackbar('Download', 'Download initiated');
  }

  void onCloseTapped() {
    // Handle close action
    Get.back();
  }

  void onWithdrawalTapped() {
    // Navigate to withdrawal screen
    Get.toNamed(AppRoutes.withdrawalConfirmationScreen);
  }

  void onDepositTapped() {
    // Handle deposit action
    Get.snackbar('Deposit', 'Deposit action triggered');
  }

  void onGameTapped(GameItemModel game) {
    // Handle game selection
    Get.snackbar('Game Selected', game.gameTitle?.value ?? 'Unknown Game');
  }

  void onSidebarItemTapped(SidebarNavigationItemModel item) {
    // Update selected sidebar item
    for (var sidebarItem in sidebarItems) {
      sidebarItem.isSelected?.value = false;
    }
    item.isSelected?.value = true;
    selectedSidebarIndex.value = sidebarItems.indexOf(item);
  }

  void onCollectTapped() {
    // Handle collect action
    Get.snackbar('Collect', 'Collect rewards');
  }

  void onBottomNavTapped(int index, String route) {
    selectedBottomNavIndex.value = index;
    if (route.isNotEmpty) {
      Get.toNamed(route);
    }
  }

  void closeMoneyRainPopup() {
    showMoneyRainPopup.value = false;
  }

  void onNextRoundTapped() {
    // Handle next round action
    closeMoneyRainPopup();
    Get.snackbar('Next Round', 'Waiting for next round at 18:00:01');
  }
}
