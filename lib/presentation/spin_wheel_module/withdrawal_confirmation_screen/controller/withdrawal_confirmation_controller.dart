import 'dart:async'; // Modified: Added Timer import
import '../models/withdrawal_confirmation_model.dart';
import '../../../core/app_export.dart';

class WithdrawalConfirmationController extends GetxController {
  Rx<WithdrawalConfirmationModel?> withdrawalConfirmationModel =
      Rx<WithdrawalConfirmationModel?>(null);
  RxString loadingDots = '···'.obs;

  @override
  void onInit() {
    super.onInit();
    withdrawalConfirmationModel.value = WithdrawalConfirmationModel();
    _startLoadingAnimation();
  }

  void _startLoadingAnimation() {
    int dotCount = 3;
    Timer.periodic(Duration(milliseconds: 500), (timer) {
      dotCount = dotCount == 3 ? 1 : dotCount + 1;
      loadingDots.value = '·' * dotCount;
    });
  }

  void onConfirmWithdrawal() {
    // Add loading state
    // Show success dialog
    // Navigate to next screen
    Get.snackbar(
      'Success',
      'Withdrawal confirmed successfully!',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }
}
