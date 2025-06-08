import 'package:get/get.dart';
import '../../../core/app_export.dart';

/// This class is used in the [notifications_screen] screen with GetX.

class NotificationsModel {
  Rx<String> balanceAmount = '₱1980.00'.obs;
  Rx<bool> isLoading = false.obs;

  NotificationsModel();
}
