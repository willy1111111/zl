import 'package:get/get.dart';
import '../controller/jet_bet_casino_controller.dart';
import '../../../../../core/app_export.dart';

class JetBetCasinoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JetBetCasinoController());
  }
}
