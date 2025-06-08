import 'package:get/get.dart';
import '../models/spin_game_cash_withdrawal_model.dart';
import '../models/activity_item_model.dart';
import '../../../core/app_export.dart';

class SpinGameCashWithdrawalController extends GetxController {
  Rx<SpinGameCashWithdrawalModel> spinGameCashWithdrawalModel =
      SpinGameCashWithdrawalModel().obs;
  RxList<ActivityItemModel> activityItems = <ActivityItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    spinGameCashWithdrawalModel.value = SpinGameCashWithdrawalModel();
    _initializeActivityItems();
  }

  void _initializeActivityItems() {
    activityItems.value = [
      ActivityItemModel(
        username: 'ai********6'.obs,
        status: 'Just received it'.obs,
        amount: '+₱100'.obs,
      ),
      ActivityItemModel(
        username: 'md********6'.obs,
        status: 'Just received it'.obs,
        amount: '+₱100'.obs,
      ),
      ActivityItemModel(
        username: 'su********0'.obs,
        status: 'Just received it'.obs,
        amount: '+₱100'.obs,
      ),
    ];
  }

  Rx<String> get withdrawalAmount =>
      spinGameCashWithdrawalModel.value.withdrawalAmount ?? '₱92.59'.obs;
  Rx<String> get progressPercentage =>
      spinGameCashWithdrawalModel.value.progressPercentage ?? '70%'.obs;
  Rx<String> get remainingAmount =>
      spinGameCashWithdrawalModel.value.remainingAmount ?? '7.64'.obs;

  void onEarnMoreCashPressed() {
    // Handle earn more cash button action
    // This could navigate to a game screen or show earning opportunities
  }

  void onClosePressed() {
    Get.back();
  }
}
