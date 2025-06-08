import 'package:get/get.dart';
import '../controller/gaming_platform_notifications_controller.dart';
import '../../../core/app_export.dart';

class GamingPlatformNotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingPlatformNotificationsController());
  }
}
