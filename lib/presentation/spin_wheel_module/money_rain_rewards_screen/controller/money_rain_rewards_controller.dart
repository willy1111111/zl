import '../../../core/app_export.dart';
import '../models/game_item_model.dart';
import '../models/money_rain_rewards_model.dart';

class MoneyRainRewardsController extends GetxController {
  RxBool showMoneyRainModal = true.obs;
  Rx<String>? userBalance = 'R\$1980.00'.obs;
  Rx<String>? nextRoundTimer = 'next Round 18:00:01'.obs;
  Rx<String>? rewardAmount = '₱ 200.01'.obs;

  RxList<GameItemModel> gamesList = <GameItemModel>[].obs;
  Rx<MoneyRainRewardsModel> moneyRainRewardsModel = MoneyRainRewardsModel().obs;

  @override
  void onInit() {
    super.onInit();
    moneyRainRewardsModel.value = MoneyRainRewardsModel();
    initializeGamesList();
    startCountdownTimer();
  }

  void initializeGamesList() {
    gamesList.value = [
      GameItemModel(
        gameImage: ImageConstant.img231000.obs,
        overlayImage: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img491000.obs,
        overlayImage: ImageConstant.imgGroup1019.obs,
        title: 'super Ace'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgLogowj931.obs,
        overlayImage: ImageConstant.imgGroup1019.obs,
        title: 'Money Coming'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img211000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'super Ace'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img431000.obs,
        overlayImage: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img102x1000.obs,
        overlayImage: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
    ];
  }

  void startCountdownTimer() {
    // Start countdown timer logic here
  }

  void onDownloadTap() {
    // Handle download button tap
  }

  void onCloseTap() {
    // Handle close button tap
  }

  void onWithdrawalTap() {
    Get.toNamed(AppRoutes.withdrawalConfirmationScreen);
  }

  void onDepositTap() {
    Get.toNamed(AppRoutes.spinWheelDashboardScreen);
  }

  void onCollectTap() {
    // Handle collect button tap
  }

  void onGameTap(int index) {
    Get.toNamed(AppRoutes.moneyRainGameScreen);
  }

  void onSidebarTap(String category) {
    // Handle sidebar category tap
  }

  void closeMoneyRainModal() {
    showMoneyRainModal.value = false;
  }

  @override
  void onClose() {
    super.onClose();
  }
}
