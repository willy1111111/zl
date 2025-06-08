import 'package:get/get.dart';
import '../controller/withdrawal_history_empty_controller.dart';
import '../../../core/app_export.dart';

class WithdrawalHistoryEmptyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WithdrawalHistoryEmptyController>(
      () => WithdrawalHistoryEmptyController(),
    );
  }
}
