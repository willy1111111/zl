import 'package:get/get.dart';
import '../controller/deposit_record_list_controller.dart';
import '../../../core/app_export.dart';

class DepositRecordListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositRecordListController());
  }
}
