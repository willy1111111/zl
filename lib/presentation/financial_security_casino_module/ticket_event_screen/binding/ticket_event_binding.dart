import 'package:get/get.dart';
import '../controller/ticket_event_controller.dart';
import '../../../core/app_export.dart';

class TicketEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketEventController());
  }
}
