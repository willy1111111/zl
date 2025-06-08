import 'package:get/get.dart';
import '../controller/casino_home_controller.dart';
import '../../../core/app_export.dart';

class CasinoHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CasinoHomeController());
  }
}
