import 'package:get/get.dart';
import '../controller/deposit_record_method_filter_controller.dart';
import '../../../core/app_export.dart';

class DepositRecordMethodFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositRecordMethodFilterController());
  }
}
