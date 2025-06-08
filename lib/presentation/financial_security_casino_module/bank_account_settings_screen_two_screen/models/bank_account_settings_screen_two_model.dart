import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [BankAccountSettingsScreenTwo] screen with GetX.

class BankAccountSettingsScreenTwoModel {
  Rx<String> title = "Account editor".obs;
  Rx<String> cancelText = "Cancel".obs;
  Rx<String> addAccountButtonText = "Add Bank Account".obs;
  Rx<String> privacyNoticeText =
      "For your privacy and security, some information cannot be modified after confirmation. If you need help, please contact customer service。"
          .obs;

  BankAccountSettingsScreenTwoModel();
}
