import 'package:get/get.dart';
import '../controller/bank_account_settings_screen_three_controller.dart';
import '../../../core/app_export.dart';

class BankAccountSettingsScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BankAccountSettingsScreenThreeController());
  }
}
