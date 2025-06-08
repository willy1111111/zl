import 'package:get/get.dart';
import '../controller/my_ticket_rewards_controller.dart';
import '../../../core/app_export.dart';

class MyTicketRewardsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyTicketRewardsController());
  }
}
