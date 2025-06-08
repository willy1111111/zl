import 'package:get/get.dart';
import '../controller/notifications_screen_two_controller.dart';
import '../../../core/app_export.dart';

class NotificationsScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsScreenTwoController());
  }
}
