import 'package:get/get.dart';
import '../controller/gaming_app_share_controller.dart';
import '../../../core/app_export.dart';

class GamingAppShareBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingAppShareController());
  }
}
