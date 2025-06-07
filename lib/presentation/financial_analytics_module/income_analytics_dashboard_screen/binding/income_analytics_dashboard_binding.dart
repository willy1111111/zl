import 'package:get/get.dart';
import '../controller/income_analytics_dashboard_controller.dart';
import '../../../core/app_export.dart';

class IncomeAnalyticsDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => IncomeAnalyticsDashboardController());
  }
}
