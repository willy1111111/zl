import 'package:get/get.dart';
import '../controller/spin_wheel_withdrawal_confirmation_controller.dart';
import '../../../core/app_export.dart';

class SpinWheelWithdrawalConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpinWheelWithdrawalConfirmationController>(
      () => SpinWheelWithdrawalConfirmationController(),
    );
  }
}
