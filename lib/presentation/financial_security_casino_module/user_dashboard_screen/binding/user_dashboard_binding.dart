import 'package:get/get.dart';
import '../controller/user_dashboard_controller.dart';
import '../../../core/app_export.dart';

class UserDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserDashboardController());
  }
}
