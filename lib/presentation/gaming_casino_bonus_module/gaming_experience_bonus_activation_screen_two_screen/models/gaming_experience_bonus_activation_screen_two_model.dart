import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [GamingExperienceBonusActivationScreenTwo] screen with GetX.

class GamingExperienceBonusActivationScreenTwoModel {
  // Observable variables for reactive state management
  Rx<String>? bonusAmount;
  Rx<String>? experienceTitle;
  Rx<String>? verificationTitle;
  Rx<String>? depositTitle;
  Rx<String>? verifyButtonText;
  Rx<String>? depositButtonText;
  Rx<bool>? isPhoneVerified;
  Rx<bool>? isDepositCompleted;
  Rx<bool>? canActivateBonus;

  // Simple constructor with no parameters
  GamingExperienceBonusActivationScreenTwoModel({
    this.bonusAmount,
    this.experienceTitle,
    this.verificationTitle,
    this.depositTitle,
    this.verifyButtonText,
    this.depositButtonText,
    this.isPhoneVerified,
    this.isDepositCompleted,
    this.canActivateBonus,
  });
}
