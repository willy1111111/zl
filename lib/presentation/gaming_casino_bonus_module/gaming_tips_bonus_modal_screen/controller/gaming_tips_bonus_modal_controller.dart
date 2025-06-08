import 'package:get/get.dart';

import '../../../core/app_export.dart';

class GamingTipsBonusModalController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  /// Closes the modal and navigates back
  void closeModal() {
    Get.back();
  }

  /// Handles deposit button press action
  void onDepositPressed() {
    // Navigate to deposit screen or handle deposit logic
    // You can add specific navigation logic here based on your app's flow
    Get.back();
    // Example: Get.toNamed(AppRoutes.depositScreen);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
