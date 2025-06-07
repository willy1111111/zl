import 'package:get/get.dart';
import '../controller/system_maintenance_screen_three_controller.dart';
import '../../../../core/app_export.dart';

class SystemMaintenanceScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SystemMaintenanceScreenThreeController());
  }
}
