import 'package:get/get.dart';
import '../models/system_maintenance_screen_four_model.dart';
import '../../../../core/app_export.dart';

class SystemMaintenanceScreenFourController extends GetxController {
  SystemMaintenanceScreenFourModel systemMaintenanceScreenFourModel =
      SystemMaintenanceScreenFourModel();

  RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeMaintenanceData();
  }

  void _initializeMaintenanceData() {
    systemMaintenanceScreenFourModel.maintenanceTime.value =
        '12/11/2023 04:00 ~ 05:00';
    systemMaintenanceScreenFourModel.websiteName.value = 'Jbet88.co';
    systemMaintenanceScreenFourModel.loadingText.value = 'Please wait..';
  }

  @override
  void onClose() {
    super.onClose();
  }
}
