import 'package:get/get.dart';
import '../controller/agent_referral_program_controller.dart';
import '../../../../core/app_export.dart';

class AgentReferralProgramBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AgentReferralProgramController());
  }
}
