import '../models/card_matka_game_model.dart';
import '../../../../core/app_export.dart';

/// Controller for [CardMatkaGameScreen]
class CardMatkaGameController extends GetxController {
  CardMatkaGameModel cardMatkaGameModel = CardMatkaGameModel();

  @override
  void onInit() {
    super.onInit();
  }

  /// Handle return button press
  void onReturnPressed() {
    if (Get.previousRoute.isNotEmpty) {
      Get.back();
    } else {
      Get.offAllNamed(AppRoutes.agentDashboardScreen);
    }
  }

  /// Handle deposit button press
  void onDepositPressed() {
    // Navigate to deposit screen or show deposit modal
    Get.snackbar(
      'Deposit',
      'Deposit functionality will be implemented here',
      backgroundColor: appTheme.colorFF76CD,
      colorText: appTheme.whiteCustom,
    );
  }

  /// Handle full screen button press
  void onFullScreenPressed() {
    // Toggle full screen mode
    Get.snackbar(
      'Full Screen',
      'Full screen mode toggled',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }
}
