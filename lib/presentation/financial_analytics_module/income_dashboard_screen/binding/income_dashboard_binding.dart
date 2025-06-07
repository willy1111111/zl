import 'package:get/get.dart';
import '../controller/income_dashboard_controller.dart';
import '../../../core/app_export.dart';

class IncomeDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IncomeDashboardController());
  }
}
