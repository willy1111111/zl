import 'package:get/get.dart';

import '../../../core/app_export.dart';
import '../controller/ticket_event_confirmation_dialog_controller.dart';

/// A binding class for the TicketEventConfirmationDialogScreen.
///
/// This class ensures that the TicketEventConfirmationDialogController is created when the
/// TicketEventConfirmationDialogScreen is first loaded.
class TicketEventConfirmationDialogBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TicketEventConfirmationDialogController());
  }
}
