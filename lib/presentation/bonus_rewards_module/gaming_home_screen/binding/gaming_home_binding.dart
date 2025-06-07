import 'package:get/get.dart';
import '../controller/gaming_home_controller.dart';
import '../../../../../core/app_export.dart';

class GamingHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingHomeController());
  }
}
