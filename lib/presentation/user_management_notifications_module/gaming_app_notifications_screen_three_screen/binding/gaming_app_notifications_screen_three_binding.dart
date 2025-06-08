import 'package:get/get.dart';
import '../controller/gaming_app_notifications_screen_three_controller.dart';
import '../../../core/app_export.dart';

class GamingAppNotificationsScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GamingAppNotificationsScreenThreeController>(
      () => GamingAppNotificationsScreenThreeController(),
    );
  }
}
