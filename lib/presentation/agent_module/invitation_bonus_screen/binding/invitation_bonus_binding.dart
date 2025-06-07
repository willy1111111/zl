import 'package:get/get.dart';
import '../controller/invitation_bonus_controller.dart';
import '../../../../core/app_export.dart';

class InvitationBonusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => InvitationBonusController());
  }
}
