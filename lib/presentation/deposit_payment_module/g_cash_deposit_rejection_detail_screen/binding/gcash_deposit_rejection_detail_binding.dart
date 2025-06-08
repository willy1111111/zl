import 'package:get/get.dart';
import '../controller/gcash_deposit_rejection_detail_controller.dart';
import '../../../core/app_export.dart';

class GCashDepositRejectionDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GCashDepositRejectionDetailController());
  }
}
