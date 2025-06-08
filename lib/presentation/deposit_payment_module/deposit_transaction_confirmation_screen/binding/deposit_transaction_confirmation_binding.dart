import 'package:get/get.dart';
import '../controller/deposit_transaction_confirmation_controller.dart';
import '../../../core/app_export.dart';

class DepositTransactionConfirmationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DepositTransactionConfirmationController());
  }
}
