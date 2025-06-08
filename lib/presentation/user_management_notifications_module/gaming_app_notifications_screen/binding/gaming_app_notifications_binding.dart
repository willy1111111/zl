import 'package:get/get.dart';
import '../controller/gaming_app_notifications_controller.dart';
import '../../../core/app_export.dart';

class GamingAppNotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GamingAppNotificationsController());
  }
}
