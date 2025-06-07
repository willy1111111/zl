import 'package:get/get.dart';
import '../controller/vip_upgrade_requirements_controller.dart';
import '../../../../core/app_export.dart';

class VipUpgradeRequirementsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VipUpgradeRequirementsController());
  }
}
