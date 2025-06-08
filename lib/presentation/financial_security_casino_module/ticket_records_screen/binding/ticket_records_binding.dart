import 'package:get/get.dart';
import '../controller/ticket_records_controller.dart';
import '../../../core/app_export.dart';

class TicketRecordsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketRecordsController());
  }
}
