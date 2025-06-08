import 'package:get/get.dart';
import '../controller/payment_status_controller.dart';
import '../../../core/app_export.dart';

class PaymentStatusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaymentStatusController>(
      () => PaymentStatusController(),
    );
  }
}
