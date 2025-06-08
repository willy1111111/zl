import '../../../core/app_export.dart';
import '../models/deposit_tier_model.dart';
import '../models/game_item_model.dart';
import '../models/j_bet88_deposit_promotion_model.dart';

class JBet88DepositPromotionController extends GetxController {
  Rx<JBet88DepositPromotionModel> jBet88DepositPromotionModel =
      JBet88DepositPromotionModel().obs;

  RxString balanceAmount = '₱1980.00'.obs;
  RxList<GameItemModel> gameItems = <GameItemModel>[].obs;
  RxList<DepositTierModel> depositTiers = <DepositTierModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeGameItems();
    _initializeDepositTiers();
  }

  void _initializeGameItems() {
    gameItems.value = [
      GameItemModel(
        gameImage: ImageConstant.img231000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'Fortune Ox fortune'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img491000.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'super Ace'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.imgLogowj931.obs,
        overlayIcon: ImageConstant.imgGroup1019.obs,
        title: 'Money Coming'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img102x1000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'Roma x'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img211000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img911000.obs,
        overlayIcon: ImageConstant.imgGroup1024.obs,
        title: 'lucky coming'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img277771000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'Roma x'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img431000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'diamond party'.obs,
      ),
      GameItemModel(
        gameImage: ImageConstant.img441000.obs,
        overlayIcon: ImageConstant.imgGroup1029.obs,
        title: 'lucky coming'.obs,
      ),
    ];
  }

  void _initializeDepositTiers() {
    depositTiers.value = [
      DepositTierModel(
        tierNumber: '1st'.obs,
        tierType: 'Deposit'.obs,
        extraPercentage: '30'.obs,
        bonusPercentage: '2'.obs,
        upToPercentage: '32'.obs,
      ),
      DepositTierModel(
        tierNumber: '2nd'.obs,
        tierType: 'Deposit'.obs,
        extraPercentage: '30'.obs,
        bonusPercentage: '2'.obs,
        upToPercentage: '32'.obs,
      ),
      DepositTierModel(
        tierNumber: '3rd'.obs,
        tierType: 'Deposit'.obs,
        extraPercentage: '30'.obs,
        bonusPercentage: '2'.obs,
        upToPercentage: '32'.obs,
      ),
      DepositTierModel(
        tierNumber: '4th'.obs,
        tierType: 'Deposit'.obs,
        extraPercentage: '30'.obs,
        bonusPercentage: '2'.obs,
        upToPercentage: '32'.obs,
      ),
      DepositTierModel(
        tierNumber: '5st'.obs,
        tierType: 'Deposit'.obs,
        extraPercentage: '30'.obs,
        bonusPercentage: '2'.obs,
        upToPercentage: '32'.obs,
      ),
      DepositTierModel(
        tierNumber: '1st'.obs,
        tierType: 'Daily Deposit'.obs,
        extraPercentage: '30'.obs,
        bonusPercentage: '2'.obs,
        upToPercentage: '32'.obs,
      ),
    ];
  }

  void onWithdrawalPressed() {
    // Handle withdrawal action
  }

  void onDepositPressed() {
    // Handle deposit action
  }

  void onGameSelected(int index) {
    // Handle game selection
  }

  void onDepositTierSelected(DepositTierModel tier) {
    // Handle deposit tier selection
  }

  void onDepositNowPressed() {
    // Handle deposit now action
  }

  void onClosePressed() {
    Get.back();
  }

  void onFloatingActionPressed() {
    // Handle floating action button
  }
}
