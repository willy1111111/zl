import 'package:get/get.dart';
import '../controller/narad_money_rain_promotion_controller.dart';

import '../../../core/app_export.dart';

class NaradMoneyRainPromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NaradMoneyRainPromotionController());
  }
}
