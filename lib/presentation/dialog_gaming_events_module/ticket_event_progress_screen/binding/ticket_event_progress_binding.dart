import 'package:get/get.dart';
import '../controller/ticket_event_progress_controller.dart';
import '../../../core/app_export.dart';

class TicketEventProgressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketEventProgressController());
  }
}
