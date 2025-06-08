import 'package:get/get.dart';
import '../controller/ticket_event_rewards_screen_two_controller.dart';
import '../../../core/app_export.dart';

class TicketEventRewardsScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketEventRewardsScreenTwoController());
  }
}
