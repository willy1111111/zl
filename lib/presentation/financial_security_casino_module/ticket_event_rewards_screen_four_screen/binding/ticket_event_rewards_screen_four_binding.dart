import 'package:get/get.dart';
import '../controller/ticket_event_rewards_screen_four_controller.dart';
import '../../../core/app_export.dart';

class TicketEventRewardsScreenFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketEventRewardsScreenFourController());
  }
}
