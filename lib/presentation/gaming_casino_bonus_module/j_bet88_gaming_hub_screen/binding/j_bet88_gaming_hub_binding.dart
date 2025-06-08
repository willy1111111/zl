import 'package:get/get.dart';

import '../controller/j_bet88_gaming_hub_controller.dart';

import '../../../core/app_export.dart';

class JBet88GamingHubBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JBet88GamingHubController());
  }
}
