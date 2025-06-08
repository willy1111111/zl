import 'package:get/get.dart';
import '../controller/money_rain_game_controller.dart';

import '../../../core/app_export.dart';

class MoneyRainGameBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MoneyRainGameController>(
      () => MoneyRainGameController(),
    );
  }
}
