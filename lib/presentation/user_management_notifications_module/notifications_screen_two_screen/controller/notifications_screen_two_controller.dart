import '../models/notifications_screen_two_model.dart';
import '../../../core/app_export.dart';

class NotificationsScreenTwoController extends GetxController {
  RxList<NotificationModel> notifications = <NotificationModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeNotifications();
  }

  void initializeNotifications() {
    notifications.value = [
      NotificationModel(
        timestamp: '2024-01-27 01:00:00'.obs,
        autoDeleteInfo: 'Automatically delete within 7 days'.obs,
        title: 'Invitation bonus has been distributed！'.obs,
        bonusAmount: '₱2'.obs,
        description: 'Your invitation bonus'.obs,
        additionalText:
            ' has been distributed.\n\nYou will earn ₱2 for each invitee who completes registration, and you will earn\nan additional ₱5 for depositing any amount.\n\nContinue to win P58 '
                .obs,
        viewEventText: 'View event→'.obs,
      ),
      NotificationModel(
        timestamp: '2024-01-27 01:00:00'.obs,
        autoDeleteInfo: 'Automatically delete within 7 days'.obs,
        title: 'Invitation bonus has been distributed！'.obs,
        bonusAmount: '₱5'.obs,
        description: 'Your invitation bonus'.obs,
        additionalText:
            ' has been distributed.\n\nYou will earn ₱2 for each invitee who completes registration, and you will earn\nan additional ₱5 for depositing any amount.\n\nContinue to win P58 '
                .obs,
        viewEventText: 'View event→'.obs,
      ),
    ];
  }

  void onViewEventTap(int index) {
    // Handle view event tap
    Get.snackbar(
      'Event',
      'Viewing event for notification ${index + 1}',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.colorFFFFFF,
    );
  }
}
