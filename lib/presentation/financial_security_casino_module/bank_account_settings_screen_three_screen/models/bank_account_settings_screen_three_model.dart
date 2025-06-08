import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [BankAccountSettingsScreenThree] screen with GetX.
class BankAccountSettingsScreenThreeModel {
  Rx<String> settingTitle = "Setting".obs;
  Rx<String> balanceAmount = "₱1980.00".obs;
  Rx<String> addBankAccountText = "Add Bank Account".obs;
  Rx<String> privacyNoticeText =
      "For your privacy and security, some information cannot be modified after confirmation. If you need help, please contact customer service。"
          .obs;
  Rx<String> generalTabText = "General".obs;
  Rx<String> bankAccountTabText = "Bank Account".obs;
  Rx<String> securityTabText = "Security".obs;
  Rx<bool> isAddButtonEnabled = true.obs;

  BankAccountSettingsScreenThreeModel();
}
