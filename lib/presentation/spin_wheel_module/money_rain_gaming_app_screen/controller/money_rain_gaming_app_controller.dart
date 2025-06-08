import '../../../core/app_export.dart';
import '../models/game_card_item_model.dart';
import '../models/money_rain_gaming_app_model.dart';

class MoneyRainGamingAppController extends GetxController {
  Rx<MoneyRainGamingAppModel> moneyRainGamingAppModelObj =
      MoneyRainGamingAppModel().obs;

  RxString userBalance = "R\$1980.00".obs;
  RxString jackpotAmount = "14,091,688.88".obs;
  RxBool isMoneyRainModalVisible = true.obs;
  RxInt selectedBottomNavIndex = 0.obs;

  RxList<GameCardItemModel> gamesList = <GameCardItemModel>[
    GameCardItemModel(
      gameImagePath: ImageConstant.img231000.obs,
      overlayImagePath: ImageConstant.imgGroup1019.obs,
      gameTitle: "Fortune Ox fortune".obs,
    ),
    GameCardItemModel(
      gameImagePath: ImageConstant.img491000.obs,
      overlayImagePath: ImageConstant.imgGroup1019.obs,
      gameTitle: "super Ace".obs,
    ),
    GameCardItemModel(
      gameImagePath: ImageConstant.imgLogowj931.obs,
      overlayImagePath: ImageConstant.imgGroup1019.obs,
      gameTitle: "Game".obs,
    ),
    GameCardItemModel(
      gameImagePath: ImageConstant.img102x1000.obs,
      overlayImagePath: ImageConstant.img1baccarat1.obs,
      gameTitle: "Roma x".obs,
    ),
    GameCardItemModel(
      gameImagePath: ImageConstant.img211000.obs,
      overlayImagePath: ImageConstant.imgBaccarat2.obs,
      gameTitle: "diamond party".obs,
    ),
    GameCardItemModel(
      gameImagePath: ImageConstant.img911000.obs,
      overlayImagePath: ImageConstant.imgBaccarat1.obs,
      gameTitle: "Money Coming".obs,
      hasNotificationBadge: true.obs,
    ),
    GameCardItemModel(
      gameImagePath: ImageConstant.img277771000.obs,
      overlayImagePath: ImageConstant.imgGroup1029.obs,
      gameTitle: "Roma x".obs,
    ),
    GameCardItemModel(
      gameImagePath: ImageConstant.img431000.obs,
      overlayImagePath: ImageConstant.imgGroup1029.obs,
      gameTitle: "diamond party".obs,
    ),
    GameCardItemModel(
      gameImagePath: ImageConstant.img441000.obs,
      overlayImagePath: ImageConstant.imgGroup1029.obs,
      gameTitle: "lucky coming".obs,
    ),
  ].obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void onDownloadTap() {
    Get.snackbar('Download', 'Download functionality coming soon');
  }

  void onCloseTap() {
    Get.back();
  }

  void onRefreshBalance() {
    Get.snackbar('Balance', 'Balance refreshed');
  }

  void onWithdrawalTap() {
    Get.snackbar('Withdrawal', 'Withdrawal screen will open');
  }

  void onDepositTap() {
    Get.snackbar('Deposit', 'Deposit screen will open');
  }

  void onGameCardTap(GameCardItemModel gameModel) {
    Get.snackbar('Game', 'Opening ${gameModel.gameTitle?.value ?? "game"}');
  }

  void onCloseNotification() {
    Get.snackbar('Notification', 'Notification closed');
  }

  void onSidebarMenuTap(String menuType) {
    Get.snackbar('Menu', 'Selected $menuType');
  }

  void onVipTap() {
    Get.snackbar('VIP', 'VIP section opened');
  }

  void closeMoneyRainModal() {
    isMoneyRainModalVisible.value = false;
  }

  void onTurnToLuckTap() {
    Get.snackbar('Luck', 'Turn to luck activated');
    closeMoneyRainModal();
  }

  void onBottomNavTapped(int index, String route) {
    selectedBottomNavIndex.value = index;
    if (route.isNotEmpty) {
      // Navigation logic can be implemented here
      Get.snackbar('Navigation', 'Navigating to $route');
    }
  }
}
