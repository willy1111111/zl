import 'package:get/get.dart';
import '../controller/add_bank_account_pix_controller.dart';
import '../../../core/app_export.dart';

class AddBankAccountPixBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddBankAccountPixController>(
      () => AddBankAccountPixController(),
    );
  }
}
