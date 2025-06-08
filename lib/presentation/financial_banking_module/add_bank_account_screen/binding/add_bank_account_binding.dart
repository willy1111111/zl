import 'package:get/get.dart';
import '../controller/add_bank_account_controller.dart';
import '../../../core/app_export.dart';

class AddBankAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddBankAccountController>(
      () => AddBankAccountController(),
    );
  }
}
