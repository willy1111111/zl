import 'package:get/get.dart';
import '../controller/money_rain_gaming_app_controller.dart';

import '../../../core/app_export.dart';

class MoneyRainGamingAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoneyRainGamingAppController());
  }
}
