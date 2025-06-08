import 'package:get/get.dart';
import '../controller/notifications_information_controller.dart';
import '../../../core/app_export.dart';

class NotificationsInformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsInformationController());
  }
}
