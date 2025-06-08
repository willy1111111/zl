import 'package:get/get.dart';
import '../controller/money_rain_promotion_controller.dart';

import '../../../core/app_export.dart';

class MoneyRainPromotionBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoneyRainPromotionController());
  }
}
