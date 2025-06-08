import 'package:get/get.dart';
import '../controller/j_bet88_deposit_promotion_controller.dart';
import '../../../core/app_export.dart';

class JBet88DepositPromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JBet88DepositPromotionController());
  }
}
