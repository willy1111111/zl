import 'package:get/get.dart';
import '../controller/vip_cashback_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class VipCashbackDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipCashbackDashboardController());
  }
}
