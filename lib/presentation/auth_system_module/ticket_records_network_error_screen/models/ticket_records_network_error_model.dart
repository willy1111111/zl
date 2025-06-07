import 'package:get/get.dart';
import '../../../../core/app_export.dart';

/// This class is used in the [TicketRecordsNetworkErrorScreen] screen with GetX.

class TicketRecordsNetworkErrorModel {
  Rx<String>? errorMessage;
  Rx<String>? reloadButtonText;
  Rx<String>? screenTitle;

  TicketRecordsNetworkErrorModel({
    this.errorMessage,
    this.reloadButtonText,
    this.screenTitle,
  }) {
    errorMessage = errorMessage ??
        'The network is not working, please refresh or try again'.obs;
    reloadButtonText = reloadButtonText ?? 'Reload'.obs;
    screenTitle = screenTitle ?? 'Ticket Records'.obs;
  }
}
