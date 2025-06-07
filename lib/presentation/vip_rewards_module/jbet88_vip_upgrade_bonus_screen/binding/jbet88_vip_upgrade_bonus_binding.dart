import 'package:get/get.dart';
import '../controller/jbet88_vip_upgrade_bonus_controller.dart';
import '../../../../core/app_export.dart';

class Jbet88VipUpgradeBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Jbet88VipUpgradeBonusController());
  }
}
