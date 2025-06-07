import 'package:get/get.dart';
import '../controller/system_maintenance_screen_two_controller.dart';
import '../../../../core/app_export.dart';

class SystemMaintenanceScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SystemMaintenanceScreenTwoController());
  }
}
