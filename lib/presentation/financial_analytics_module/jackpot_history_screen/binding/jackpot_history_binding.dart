import 'package:get/get.dart';
import '../controller/jackpot_history_controller.dart';
import '../../../core/app_export.dart';

class JackpotHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JackpotHistoryController());
  }
}
