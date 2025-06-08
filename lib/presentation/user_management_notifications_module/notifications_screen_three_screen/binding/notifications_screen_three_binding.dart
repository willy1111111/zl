import 'package:get/get.dart';
import '../controller/notifications_screen_three_controller.dart';
import '../../../core/app_export.dart';

class NotificationsScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsScreenThreeController());
  }
}
