import 'package:get/get.dart';
import '../controller/jbet88_user_dashboard_controller.dart';
import '../../../../../core/app_export.dart';

class Jbet88UserDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Jbet88UserDashboardController());
  }
}
