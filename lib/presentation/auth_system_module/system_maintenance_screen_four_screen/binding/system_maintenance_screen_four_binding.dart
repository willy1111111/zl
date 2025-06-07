import 'package:get/get.dart';
import '../controller/system_maintenance_screen_four_controller.dart';
import '../../../../core/app_export.dart';

class SystemMaintenanceScreenFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SystemMaintenanceScreenFourController());
  }
}
