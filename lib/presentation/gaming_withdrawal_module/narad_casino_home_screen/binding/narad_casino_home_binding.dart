import 'package:get/get.dart';
import '../controller/narad_casino_home_controller.dart';
import '../../../core/app_export.dart';

class NaradCasinoHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NaradCasinoHomeController());
  }
}
