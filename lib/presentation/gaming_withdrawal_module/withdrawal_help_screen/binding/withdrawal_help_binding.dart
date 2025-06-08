import 'package:get/get.dart';
import '../controller/withdrawal_help_controller.dart';
import '../../../core/app_export.dart';

class WithdrawalHelpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawalHelpController());
  }
}
