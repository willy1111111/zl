import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [gaming_experience_bonus_activation_screen] screen with GetX.

class GamingExperienceBonusActivationModel {
  Rx<String> bonusAmount = '৳12.00'.obs;
  Rx<bool> isPhoneVerified = true.obs;
  Rx<bool> isDepositCompleted = false.obs;
  Rx<String> phoneVerificationStatus = 'Completed'.obs;
  Rx<String> depositButtonText = 'Deposit'.obs;

  GamingExperienceBonusActivationModel();
}
