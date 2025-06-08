import 'package:get/get.dart';
import '../controller/bank_account_settings_controller.dart';
import '../../../core/app_export.dart';

class BankAccountSettingsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(
      () => BankAccountSettingsController(),
    );
  }
}
