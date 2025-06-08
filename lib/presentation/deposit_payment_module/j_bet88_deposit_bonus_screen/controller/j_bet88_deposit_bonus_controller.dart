import '../../../core/app_export.dart';
import '../models/deposit_bonus_card_model.dart';
import '../models/j_bet88_deposit_bonus_model.dart';

class JBet88DepositBonusController extends GetxController {
  Rx<JBet88DepositBonusModel?> depositBonusModel =
      Rx<JBet88DepositBonusModel?>(null);
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    depositBonusModel.value = JBet88DepositBonusModel();
    initializeDepositCards();
  }

  void initializeDepositCards() {
    depositBonusModel.value?.depositCards = RxList<DepositBonusCardModel>.from([
      // Modified: Convert List to RxList using RxList.from()
      DepositBonusCardModel(
        depositOrder: '1st'.obs,
        depositLabel: 'Deposit'.obs,
        mainPercentage: '30'.obs,
        extraPercentage: '2'.obs,
        upToPercentage: '32%'.obs,
      ),
      DepositBonusCardModel(
        depositOrder: '2nd'.obs,
        depositLabel: 'Deposit'.obs,
        mainPercentage: '30'.obs,
        extraPercentage: '2'.obs,
        upToPercentage: '32%'.obs,
      ),
      DepositBonusCardModel(
        depositOrder: '3rd'.obs,
        depositLabel: 'Deposit'.obs,
        mainPercentage: '40'.obs,
        extraPercentage: '2'.obs,
        upToPercentage: '42%'.obs,
      ),
    ]);
    depositBonusModel.refresh();
  }

  void onWithdrawalPressed() {
    // Navigate to withdrawal screen
    print('Withdrawal button pressed');
  }

  void onDepositPressed() {
    // Navigate to deposit screen
    print('Deposit button pressed');
  }

  void onDepositNowPressed() {
    // Navigate to deposit now screen
    Get.toNamed(AppRoutes.walletDepositScreen);
  }

  void onViewMorePressed() {
    // Navigate to view more screen
    Get.toNamed(AppRoutes.jBet88DepositPromotionScreen);
  }

  void onClosePressed() {
    Get.back();
  }

  void onHeaderClosePressed() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
