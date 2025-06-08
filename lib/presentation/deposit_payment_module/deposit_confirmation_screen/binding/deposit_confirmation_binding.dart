import 'package:get/get.dart';
import '../controller/deposit_confirmation_controller.dart';
import '../../../core/app_export.dart';

class DepositConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositConfirmationController());
  }
}
