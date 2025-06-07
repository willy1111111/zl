import 'package:get/get.dart';
import '../controller/income_dashboard_screen_two_controller.dart';
import '../../../core/app_export.dart';

class IncomeDashboardScreenTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IncomeDashboardScreenTwoController());
  }
}
