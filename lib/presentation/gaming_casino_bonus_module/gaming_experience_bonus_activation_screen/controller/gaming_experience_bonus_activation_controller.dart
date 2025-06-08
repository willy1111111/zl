import '../models/gaming_experience_bonus_activation_model.dart';

import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GamingExperienceBonusActivationController extends GetxController {
  Rx<GamingExperienceBonusActivationModel>
      gamingExperienceBonusActivationModelObj =
      GamingExperienceBonusActivationModel().obs;

  RxString bonusAmount = '৳12.00'.obs;
  RxBool isPhoneVerified = true.obs;
  RxBool isDepositCompleted = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void onDepositPressed() {
    // Handle deposit button press
    // Navigate to deposit screen or show deposit options
    print('Deposit button pressed');
  }

  void onClosePressed() {
    Get.back();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
