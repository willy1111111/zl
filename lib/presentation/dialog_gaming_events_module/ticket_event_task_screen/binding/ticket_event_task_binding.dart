import 'package:get/get.dart';
import '../controller/ticket_event_task_controller.dart';
import '../../../core/app_export.dart';

class TicketEventTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketEventTaskController());
  }
}
