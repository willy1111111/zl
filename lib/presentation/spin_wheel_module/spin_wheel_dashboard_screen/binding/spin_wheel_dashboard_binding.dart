import 'package:get/get.dart';
import '../controller/spin_wheel_dashboard_controller.dart';

import '../../../core/app_export.dart';

class SpinWheelDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SpinWheelDashboardController());
  }
}
