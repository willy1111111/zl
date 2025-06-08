import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [TicketEventConfirmationDialogScreen] screen with GetX.

class TicketEventConfirmationDialogModel {
  Rx<String> confirmationTitle = "Confirmation".obs;
  Rx<String> confirmationMessage =
      "This ticket can be claimed only using the APP.".obs;
  Rx<String> cancelButtonText = "Cancel".obs;
  Rx<String> downloadButtonText = "Download".obs;

  TicketEventConfirmationDialogModel();
}
