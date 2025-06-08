import 'package:get/get.dart';
import '../controller/ticket_claim_info_controller.dart';
import '../../../../core/app_export.dart';

class TicketClaimInfoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TicketClaimInfoController>(
      () => TicketClaimInfoController(),
    );
  }
}
