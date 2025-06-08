import 'package:get/get.dart';
import '../controller/withdrawal_success_controller.dart';
import '../../../core/app_export.dart';

class WithdrawalSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawalSuccessController());
  }
}
