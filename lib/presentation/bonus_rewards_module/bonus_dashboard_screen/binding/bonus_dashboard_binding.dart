import 'package:get/get.dart';
import '../controller/bonus_dashboard_controller.dart';
import '../../../../../core/app_export.dart';

class BonusDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BonusDashboardController());
  }
}
