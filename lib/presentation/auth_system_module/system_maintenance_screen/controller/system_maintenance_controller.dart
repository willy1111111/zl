import 'package:get/get.dart';
import '../models/system_maintenance_model.dart';
import '../../../../core/app_export.dart';

class SystemMaintenanceController extends GetxController {
  Rx<SystemMaintenanceModel?> systemMaintenanceModel =
      Rx<SystemMaintenanceModel?>(null);

  @override
  void onInit() {
    super.onInit();
    systemMaintenanceModel.value = SystemMaintenanceModel();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
