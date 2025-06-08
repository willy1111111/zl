import 'package:get/get.dart';
import '../controller/withdrawal_confirmation_controller.dart';
import '../../../core/app_export.dart';

class WithdrawalConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WithdrawalConfirmationController>(
      () => WithdrawalConfirmationController(),
    );
  }
}
