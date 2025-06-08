import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [Jbet88BenefitsPromotionScreen] screen with GetX.

class Jbet88BenefitsPromotionModel {
  // Observable variables for reactive state management
  Rx<String> mainHeading = "Jbet88 is giving away".obs;
  Rx<String> benefitsText = "benefits come".obs;
  Rx<String> callToActionText = "join me and share the 500 cash prize".obs;
  Rx<String> joinButtonText = "Join Now".obs;
  Rx<bool> isAnimationEnabled = true.obs;
  Rx<bool> isFloatingButtonVisible = true.obs;

  // Simple constructor with no parameters
  Jbet88BenefitsPromotionModel();
}
