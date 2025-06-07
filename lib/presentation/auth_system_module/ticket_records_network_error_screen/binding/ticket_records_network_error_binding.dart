import 'package:get/get.dart';
import '../controller/ticket_records_network_error_controller.dart';
import '../../../../core/app_export.dart';

class TicketRecordsNetworkErrorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TicketRecordsNetworkErrorController>(
      () => TicketRecordsNetworkErrorController(),
    );
  }
}
