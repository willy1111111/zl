import 'package:get/get.dart';
import '../../../core/app_export.dart';

class EmailBindingConfirmationController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  void onCancelPressed() {
    Get.back();
  }

  void onConfirmPressed() {
    // Handle email binding confirmation
    Get.back(result: true);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
