import 'package:get/get.dart';
import '../controller/spin_game_withdrawal_controller.dart';
import '../../../core/app_export.dart';

class SpinGameWithdrawalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SpinGameWithdrawalController>(
      () => SpinGameWithdrawalController(),
    );
  }
}
