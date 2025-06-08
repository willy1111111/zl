import 'package:get/get.dart';
import '../controller/gaming_ticket_spin_wheel_controller.dart';
import '../../../../core/app_export.dart';

class GamingTicketSpinWheelBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GamingTicketSpinWheelController>(
      () => GamingTicketSpinWheelController(),
    );
  }
}
