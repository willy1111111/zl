import 'package:get/get.dart';
import '../controller/withdrawal_history_controller.dart';
import '../../../core/app_export.dart';

class WithdrawalHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawalHistoryController());
  }
}
