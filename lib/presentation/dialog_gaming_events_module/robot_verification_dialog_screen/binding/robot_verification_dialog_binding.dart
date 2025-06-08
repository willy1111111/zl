import 'package:get/get.dart';
import '../controller/robot_verification_dialog_controller.dart';

/// A binding class for the RobotVerificationDialogScreen.
///
/// This class ensures that the RobotVerificationDialogController is created when the
/// RobotVerificationDialogScreen is first loaded.
class RobotVerificationDialogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RobotVerificationDialogController());
  }
}