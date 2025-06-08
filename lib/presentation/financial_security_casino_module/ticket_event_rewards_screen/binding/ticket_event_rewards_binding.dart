import 'package:get/get.dart';
import '../controller/ticket_event_rewards_controller.dart';
import '../../../core/app_export.dart';

class TicketEventRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketEventRewardsController());
  }
}
