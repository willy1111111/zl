import '../../../core/app_export.dart';

/// This class is used in the [SpinWheelVictoryScreen] screen with GetX.

class SpinWheelVictoryModel {
  Rx<String> prizeTitle = '1 Time Draw'.obs;
  Rx<String> victoryText = "YOU'VE WON!".obs;
  Rx<String> backgroundImage = ImageConstant.imgImage1137.obs;
  Rx<String> wheelMainImage =
      ImageConstant.img2809afbfd6b37f6257baf7463926b9714bea98f71a594yasl3w1.obs;
  Rx<String> wheelCenterImage = ImageConstant.imgImage867.obs;
  Rx<String> wheelFrameImage = ImageConstant.img1332x333.obs;
  Rx<String> wheelBackgroundImage = ImageConstant.img1.obs;
  Rx<String> wheelLayerImage = ImageConstant.img2.obs;
  Rx<bool> isPrizeClaimed = false.obs;
  Rx<bool> isAnimating = true.obs;

  SpinWheelVictoryModel();
}
