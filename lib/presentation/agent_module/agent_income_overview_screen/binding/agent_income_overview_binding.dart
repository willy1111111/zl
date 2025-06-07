import 'package:get/get.dart';
import '../controller/agent_income_overview_controller.dart';
import '../../../../core/app_export.dart';

class AgentIncomeOverviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentIncomeOverviewController());
  }
}
