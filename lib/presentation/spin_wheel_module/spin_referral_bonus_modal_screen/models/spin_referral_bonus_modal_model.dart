import '../../../core/app_export.dart';

/// This class is used in the [SpinReferralBonusModalScreen] screen with GetX.

class SpinReferralBonusModalModel {
  Rx<String> userAvatarPath = ImageConstant.imgImage80x80.obs;
  Rx<String> backgroundImagePath = ImageConstant.imgImage1137.obs;
  Rx<String> spinIconPath = ImageConstant.imgFrame213133043440x40.obs;
  Rx<String> title = "Helping you succeed".obs;
  Rx<String> bonusText = "+1 Free Spin".obs;
  Rx<String> phoneNumber = "[+99*****39 ]".obs;
  Rx<String> buttonText = "Get it".obs;
  Rx<bool> isModalVisible = true.obs;

  SpinReferralBonusModalModel();
}
