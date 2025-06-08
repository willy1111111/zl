import 'package:get/get.dart';
import '../controller/account_record_controller.dart';
import '../../../core/app_export.dart';

class AccountRecordBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AccountRecordController>(
      () => AccountRecordController(),
    );
  }
}
