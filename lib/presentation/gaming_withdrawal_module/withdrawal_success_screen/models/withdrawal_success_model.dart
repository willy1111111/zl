import '../../../core/app_export.dart';

class WithdrawalSuccessModel {
  Rx<String> amount = ''.obs;
  Rx<String> withdrawalAccount = ''.obs;
  Rx<String> withdrawalMethod = ''.obs;
  Rx<bool> isWithdrawalCompleted = false.obs;

  WithdrawalSuccessModel();
}
