import 'package:get/get.dart';
import '../controller/agent_income_modal_controller.dart';
import '../../../../../core/app_export.dart';

class AgentIncomeModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentIncomeModalController());
  }
}
