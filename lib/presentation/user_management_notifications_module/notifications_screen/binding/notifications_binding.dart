import 'package:get/get.dart';
import '../controller/notifications_controller.dart';
import '../../../core/app_export.dart';

class NotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsController>(
      () => NotificationsController(),
    );
  }
}
