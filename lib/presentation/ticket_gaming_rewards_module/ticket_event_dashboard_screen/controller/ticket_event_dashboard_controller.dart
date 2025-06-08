import 'package:get/get.dart';
import '../models/ticket_event_dashboard_model.dart';
import '../../../core/app_export.dart';

class TicketEventDashboardController extends GetxController {
  Rx<TicketEventDashboardModel?> ticketEventModel =
      Rx<TicketEventDashboardModel?>(null);
  RxInt selectedTab = 0.obs;

  @override
  void onInit() {
    super.onInit();
    ticketEventModel.value = TicketEventDashboardModel();
  }

  void onMenuPressed() {
    // Handle menu button press
  }

  void onEarnTicketPressed() {
    selectedTab.value = 0;
    // Handle earn ticket button press
  }

  void onMyTicketPressed() {
    selectedTab.value = 1;
    // Handle my ticket button press
  }

  @override
  void onClose() {
    super.onClose();
  }
}
