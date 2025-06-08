import '../../../core/app_export.dart';

/// This class is used in the [wallet_deposit_type_selection_screen] screen with GetX.
class WalletDepositTypeSelectionModel {
  // Observable variables for reactive state management
  Rx<String> electronicWalletIcon = ImageConstant.img27x41.obs;
  Rx<String> bankAccountIcon = ImageConstant.img36x44.obs;
  Rx<String> arrowIcon = ImageConstant.imgFrame309.obs;
  Rx<String> electronicWalletTitle = "Electronic wallet".obs;
  Rx<String> bankAccountTitle = "Bank Account".obs;
  Rx<String> modalTitle = "Select deposit type".obs;

  // Simple constructor with no parameters
  WalletDepositTypeSelectionModel();
}
