import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [WalletDepositConfirmationScreen] screen with GetX.

class WalletDepositConfirmationModel {
  // Observable variables for reactive state management
  Rx<String> confirmationTitle = "Confirmation".obs;
  Rx<String> successMessage = "Success！please go to the deposit page".obs;
  Rx<String> buttonText = "GO".obs;

  // Simple constructor with no parameters
  WalletDepositConfirmationModel();
}
