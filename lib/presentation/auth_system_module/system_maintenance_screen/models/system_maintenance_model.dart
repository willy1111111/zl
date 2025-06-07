import '../../../../core/app_export.dart';

/// This class is used in the [SystemMaintenanceScreen] screen with GetX.

class SystemMaintenanceModel {
  Rx<String>? title;
  Rx<String>? maintenanceDate;
  Rx<String>? maintenanceTime;
  Rx<String>? headerText;
  Rx<String>? messagePartOne;
  Rx<String>? messagePartTwo;
  Rx<String>? brandName;
  Rx<String>? loadingText;

  SystemMaintenanceModel({
    this.title,
    this.maintenanceDate,
    this.maintenanceTime,
    this.headerText,
    this.messagePartOne,
    this.messagePartTwo,
    this.brandName,
    this.loadingText,
  }) {
    title = title ?? 'System maintenance notification'.obs;
    maintenanceDate = maintenanceDate ?? '12'.obs;
    maintenanceTime = maintenanceTime ?? '2023 04:00 ~ 05:00'.obs;
    headerText = headerText ?? 'Dear members:'.obs;
    messagePartOne = messagePartOne ??
        'In order to ensure the stability of the server, we will '.obs;
    messagePartTwo = messagePartTwo ??
        'shut down the server for maintenance.\nDuring this period you will not be able to log in normally. We apologize for the inconvenience!'
            .obs;
    brandName = brandName ?? 'Jbet88.co'.obs;
    loadingText = loadingText ?? 'Please wait..'.obs;
  }
}
