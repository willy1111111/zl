import 'package:get/get.dart';
import '../controller/g_cash_deposit_detail_controller.dart';
import '../../../core/app_export.dart';

class GCashDepositDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GCashDepositDetailController());
  }
}
