import 'package:get/get.dart';
import '../controller/deposit_record_time_filter_controller.dart';
import '../../../core/app_export.dart';

class DepositRecordTimeFilterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositRecordTimeFilterController());
  }
}
