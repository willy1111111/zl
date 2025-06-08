import 'package:get/get.dart';
import '../controller/usdt_withdrawal_controller.dart';
import '../../../core/app_export.dart';

class UsdtWithdrawalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsdtWithdrawalController>(
      () => UsdtWithdrawalController(),
    );
  }
}
