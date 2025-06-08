import 'package:get/get.dart';
import '../controller/j_bet88_gaming_hub_screen_three_controller.dart';

import '../../../core/app_export.dart';

class JBet88GamingHubScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JBet88GamingHubScreenThreeController());
  }
}
