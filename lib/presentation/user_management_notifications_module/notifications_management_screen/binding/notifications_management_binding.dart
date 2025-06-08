import 'package:get/get.dart';
import '../controller/notifications_management_controller.dart';
import '../../../core/app_export.dart';

class NotificationsManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotificationsManagementController>(
      () => NotificationsManagementController(),
    );
  }
}
