import 'package:get/get.dart';
import '../controller/jet_bet_casino_home_controller.dart';

import '../../../core/app_export.dart';

class JetBetCasinoHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JetBetCasinoHomeController());
  }
}
