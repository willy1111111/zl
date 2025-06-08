import 'package:get/get.dart';
import '../controller/notice_notifications_controller.dart';
import '../../../core/app_export.dart';

class NoticeNotificationsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NoticeNotificationsController());
  }
}
