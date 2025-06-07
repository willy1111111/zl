import 'package:get/get.dart';
import '../controller/vip_cashback_eligible_controller.dart';
import '../../../../core/app_export.dart';

class VipCashbackEligibleBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipCashbackEligibleController());
  }
}
