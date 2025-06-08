import 'package:get/get.dart';
import '../controller/betting_record_history_controller.dart';
import '../../../core/app_export.dart';

class BettingRecordHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BettingRecordHistoryController());
  }
}
