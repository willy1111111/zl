import 'package:get/get.dart';
import '../controller/lucky_wheel_ticket_event_controller.dart';
import '../../../core/app_export.dart';

class LuckyWheelTicketEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LuckyWheelTicketEventController());
  }
}
