import 'package:get/get.dart';
import '../controller/jetso_casino_home_controller.dart';
import '../../../../../core/app_export.dart';

class JetsoCasinoHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JetsoCasinoHomeController());
  }
}
