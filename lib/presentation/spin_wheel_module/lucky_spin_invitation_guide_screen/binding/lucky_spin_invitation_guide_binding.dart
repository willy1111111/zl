import 'package:get/get.dart';
import '../controller/lucky_spin_invitation_guide_controller.dart';

import '../../../core/app_export.dart';

class LuckySpinInvitationGuideBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LuckySpinInvitationGuideController());
  }
}
