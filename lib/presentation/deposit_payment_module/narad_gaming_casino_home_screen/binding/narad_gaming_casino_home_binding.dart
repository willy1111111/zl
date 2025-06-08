import 'package:get/get.dart';
import '../controller/narad_gaming_casino_home_controller.dart';
import '../../../core/app_export.dart';

class NaradGamingCasinoHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NaradGamingCasinoHomeController());
  }
}
