import 'package:get/get.dart';
import '../controller/bank_account_settings_screen_two_controller.dart';
import '../../../core/app_export.dart';

class BankAccountSettingsScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankAccountSettingsScreenTwoController());
  }
}
