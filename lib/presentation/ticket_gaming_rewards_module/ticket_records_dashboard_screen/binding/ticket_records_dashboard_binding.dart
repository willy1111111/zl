import 'package:get/get.dart';
import '../controller/ticket_records_dashboard_controller.dart';
import '../../../../core/app_export.dart';

class TicketRecordsDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketRecordsDashboardController());
  }
}
