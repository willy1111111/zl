import 'package:get/get.dart';
import '../controller/gaming_money_rain_promotion_controller.dart';

import '../../../core/app_export.dart';

class GamingMoneyRainPromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingMoneyRainPromotionController());
  }
}
