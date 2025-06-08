import 'package:get/get.dart';
import '../controller/gaming_app_notifications_screen_two_controller.dart';
import '../../../core/app_export.dart';

class GamingAppNotificationsScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingAppNotificationsScreenTwoController());
  }
}
