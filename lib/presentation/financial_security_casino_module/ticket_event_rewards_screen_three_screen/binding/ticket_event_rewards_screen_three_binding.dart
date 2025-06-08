import 'package:get/get.dart';
import '../controller/ticket_event_rewards_screen_three_controller.dart';
import '../../../core/app_export.dart';

class TicketEventRewardsScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketEventRewardsScreenThreeController());
  }
}
