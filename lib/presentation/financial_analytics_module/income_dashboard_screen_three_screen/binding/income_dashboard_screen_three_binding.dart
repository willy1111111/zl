import 'package:get/get.dart';
import '../controller/income_dashboard_screen_three_controller.dart';
import '../../../core/app_export.dart';

class IncomeDashboardScreenThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IncomeDashboardScreenThreeController());
  }
}
