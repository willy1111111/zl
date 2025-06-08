import 'package:get/get.dart';
import '../controller/ticket_event_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class TicketEventDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketEventDashboardController());
  }
}
