import '../../../core/app_export.dart';
import '../models/gaming_app_notifications_model.dart';
import '../models/notification_item_model.dart';

class GamingAppNotificationsController extends GetxController {
  Rx<GamingAppNotificationsModel> gamingAppNotificationsModelObj =
      GamingAppNotificationsModel().obs;

  RxList<NotificationItemModel> notificationItems =
      <NotificationItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeNotifications();
  }

  void initializeNotifications() {
    notificationItems.value = [
      NotificationItemModel(
        timestamp: '2024-01-27 01:00:00'.obs,
        autoDeleteText: 'Automatically delete within 30 days'.obs,
        title: 'Withdrawal issues'.obs,
        content: 'My money is missing my money is missing my money'.obs,
        hasNewReply: true.obs,
        newReplyTimestamp: '2024-04-15 16:59:59'.obs,
        isExpanded: true.obs,
        expandIcon: ImageConstant.imgComponent7BlueGray400.obs,
        notificationIcon: ImageConstant.imgGroup12780.obs,
        replyIcon: ImageConstant.imgUnion1.obs,
      ),
      NotificationItemModel(
        timestamp: '2024-01-27 01:00:00'.obs,
        autoDeleteText: 'Automatically delete within 30 days'.obs,
        title: 'Game issues'.obs,
        content: 'Failed to enter the gameFailed to enter the game\nFailed'.obs,
        hasNewReply: false.obs,
        isExpanded: true.obs,
        expandIcon: ImageConstant.imgComponent7BlueGray400.obs,
      ),
      NotificationItemModel(
        timestamp: '2024-01-27 01:00:00'.obs,
        autoDeleteText: 'Automatically delete within 30 days'.obs,
        title: 'Game issues'.obs,
        content: 'Failed to enter the gameFailed to enter the game\nFailed'.obs,
        hasNewReply: false.obs,
        isExpanded: true.obs,
        expandIcon: ImageConstant.imgComponent7BlueGray400.obs,
      ),
    ];
  }

  void toggleNotificationExpansion(int index) {
    if (index < notificationItems.length) {
      bool currentState = notificationItems[index].isExpanded?.value ?? false;
      notificationItems[index].isExpanded?.value = !currentState;
      notificationItems.refresh();
    }
  }

  void onFloatingActionButtonPressed() {
    // Handle floating action button press
    print('Floating action button pressed');
  }

  @override
  void onClose() {
    super.onClose();
  }
}
