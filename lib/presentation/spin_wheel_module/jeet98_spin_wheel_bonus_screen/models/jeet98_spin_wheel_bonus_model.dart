import '../../../core/app_export.dart';

/// This class is used in the [Jeet98SpinWheelBonusScreen] screen with GetX.

class Jeet98SpinWheelBonusModel {
  Rx<String>? backgroundImagePath = ImageConstant.imgImage1139.obs;
  Rx<String>? bannerTitle = 'Get ₱500 for free'.obs;
  Rx<int>? spinCount = 1.obs;
  Rx<bool>? isSpinning = false.obs;
  Rx<bool>? isFloatingAnimationActive = true.obs;

  Jeet98SpinWheelBonusModel({
    this.backgroundImagePath,
    this.bannerTitle,
    this.spinCount,
    this.isSpinning,
    this.isFloatingAnimationActive,
  });
}
