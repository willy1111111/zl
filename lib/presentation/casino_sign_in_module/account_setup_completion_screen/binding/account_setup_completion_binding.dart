import 'package:get/get.dart';
import '../controller/account_setup_completion_controller.dart';
import '../../../../../core/app_export.dart';

class AccountSetupCompletionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountSetupCompletionController>(
      () => AccountSetupCompletionController(),
    );
  }
}
