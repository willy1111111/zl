import '../controller/reconnection_dialog_controller.dart';
import '../../../../core/app_export.dart';

/// A binding class for the ReconnectionDialogScreen.
///
/// This class ensures that the ReconnectionDialogController is created when
/// ReconnectionDialogScreen is first called.
class ReconnectionDialogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ReconnectionDialogController());
  }
}