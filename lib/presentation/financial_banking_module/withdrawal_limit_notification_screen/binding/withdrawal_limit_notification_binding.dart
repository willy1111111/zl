import 'package:get/get.dart';
import '../controller/withdrawal_limit_notification_controller.dart';
import '../../../core/app_export.dart';

class WithdrawalLimitNotificationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawalLimitNotificationController());
  }
}
