import 'package:get/get.dart';
import '../controller/help_invitation_modal_controller.dart';
import '../../../core/app_export.dart';

class HelpInvitationModalBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HelpInvitationModalController());
  }
}
