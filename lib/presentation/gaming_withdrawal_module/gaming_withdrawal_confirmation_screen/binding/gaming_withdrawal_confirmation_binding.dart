import 'package:get/get.dart';
import '../controller/gaming_withdrawal_confirmation_controller.dart';
import '../../../core/app_export.dart';

class GamingWithdrawalConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingWithdrawalConfirmationController());
  }
}
