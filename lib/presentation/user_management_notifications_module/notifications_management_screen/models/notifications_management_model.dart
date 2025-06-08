import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [NotificationsManagementScreen] screen with GetX.

class NotificationsManagementModel {
  Rx<String>? title;
  Rx<String>? balance;
  Rx<bool>? showBalance;
  Rx<bool>? isSelectAllEnabled;

  NotificationsManagementModel({
    this.title,
    this.balance,
    this.showBalance,
    this.isSelectAllEnabled,
  });
}
