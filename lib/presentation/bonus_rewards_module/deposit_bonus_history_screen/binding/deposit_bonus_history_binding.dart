import 'package:get/get.dart';
import '../controller/deposit_bonus_history_controller.dart';
import '../../../../../core/app_export.dart';

class DepositBonusHistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DepositBonusHistoryController>(
      () => DepositBonusHistoryController(),
    );
  }
}
