import 'package:get/get.dart';
import '../controller/withdrawal_limit_progress_controller.dart';
import '../../../core/app_export.dart';

class WithdrawalLimitProgressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WithdrawalLimitProgressController>(
      () => WithdrawalLimitProgressController(),
    );
  }
}
