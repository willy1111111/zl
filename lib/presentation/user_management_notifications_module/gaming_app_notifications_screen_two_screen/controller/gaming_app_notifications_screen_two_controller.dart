import 'package:get/get.dart';
import '../models/gaming_app_notifications_screen_two_model.dart';
import '../models/notification_item_model.dart';
import '../../../core/app_export.dart';

class GamingAppNotificationsScreenTwoController extends GetxController {
  Rx<GamingAppNotificationsScreenTwoModel>
      gamingAppNotificationsScreenTwoModelObj =
      GamingAppNotificationsScreenTwoModel().obs;

  RxList<NotificationItemModel> notifications = <NotificationItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeNotifications();
  }

  void initializeNotifications() {
    notifications.value = [
      NotificationItemModel(
        timestamp: '2024-01-27 01:00:00'.obs,
        deleteInfo:
            'Automatically delete within 30 daysAutomatically delete'.obs,
        title: 'Withdrawal issues'.obs,
        userMessage:
            'My money is missing my money is missing my money is missing my money is missing .my money is missing my money is missing.My money is missing my money is missing'
                .obs,
        hasNewReply: true.obs,
        replyTimestamp: '2024-04-15 16:59:59'.obs,
        supportReply:
            'Dear Teams, we have received your question!\nWe have not found any abnormalities in the game.\nYou can try to check whether the network is normal.\nGood luck!'
                .obs,
        isExpanded: false.obs,
        hasReplyBadge: true.obs,
      ),
      NotificationItemModel(
        timestamp: '2024-01-27 01:00:00'.obs,
        deleteInfo: 'Automatically delete within 30 days'.obs,
        title: 'Game issues'.obs,
        userMessage:
            'Failed to enter the gameFailed to enter the game\nFailed to enter the gameFailed to enter the game\nFailed to enter the gameFailed to enter the gameFailed to enter the game'
                .obs,
        hasNewReply: false.obs,
        replyTimestamp: '2024-04-15 16:59:59'.obs,
        supportReply:
            'Dear Teams, we have received your question!\nWe have not found any abnormalities in the game.\nYou can try to check whether the network is normal.\nGood luck!'
                .obs,
        isExpanded: false.obs,
        hasScrollIndicator: true.obs,
        hasReplyBadge: false.obs,
      ),
      NotificationItemModel(
        timestamp: '2024-01-27 01:00:00'.obs,
        deleteInfo: 'Automatically delete within 30 days'.obs,
        title: 'Game issues'.obs,
        userMessage:
            'Failed to enter the gameFailed to enter the game\nFailed to enter the gameFailed to enter the game\nFailed to enter the gameFailed to enter the gameFailed to enter the game'
                .obs,
        hasNewReply: false.obs,
        replyTimestamp: '2024-04-15 16:59:59'.obs,
        supportReply:
            'Dear Teams, we have received your question!\nWe have not found any abnormalities in the game.\nYou can try to check whether the network is normal.\nGood luck!'
                .obs,
        isExpanded: false.obs,
        hasReplyBadge: false.obs,
        supportIconVariant: 'blue_gray'.obs,
      ),
    ];
  }

  void toggleNotificationExpansion(NotificationItemModel notification) {
    notification.isExpanded?.value = !(notification.isExpanded?.value ?? false);
  }
}
