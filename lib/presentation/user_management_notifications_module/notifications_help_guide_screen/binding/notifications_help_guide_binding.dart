import 'package:get/get.dart';
import '../controller/notifications_help_guide_controller.dart';
import '../../../core/app_export.dart';

class NotificationsHelpGuideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NotificationsHelpGuideController());
  }
}
