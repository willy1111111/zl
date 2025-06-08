import 'package:get/get.dart';
import '../controller/gaming_casino_mobile_app_home_controller.dart';

import '../../../core/app_export.dart';

class GamingCasinoMobileAppHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingCasinoMobileAppHomeController());
  }
}
