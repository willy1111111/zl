import 'package:get/get.dart';
import '../controller/treasure_chest_ticket_claim_controller.dart';
import '../../../core/app_export.dart';

class TreasureChestTicketClaimBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TreasureChestTicketClaimController());
  }
}
