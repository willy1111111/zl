import 'package:get/get.dart';
import '../controller/system_maintenance_controller.dart';
import '../../../../core/app_export.dart';

class SystemMaintenanceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SystemMaintenanceController>(
      () => SystemMaintenanceController(),
    );
  }
}
