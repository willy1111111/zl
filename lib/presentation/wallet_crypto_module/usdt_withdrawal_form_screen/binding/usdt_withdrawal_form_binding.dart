import 'package:get/get.dart';
import '../controller/usdt_withdrawal_form_controller.dart';
import '../../../core/app_export.dart';

class UsdtWithdrawalFormBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UsdtWithdrawalFormController>(
      () => UsdtWithdrawalFormController(),
    );
  }
}
