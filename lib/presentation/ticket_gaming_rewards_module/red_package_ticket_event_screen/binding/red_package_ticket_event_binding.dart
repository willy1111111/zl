import 'package:get/get.dart';
import '../controller/red_package_ticket_event_controller.dart';
import '../../../core/app_export.dart';

class RedPackageTicketEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RedPackageTicketEventController());
  }
}
