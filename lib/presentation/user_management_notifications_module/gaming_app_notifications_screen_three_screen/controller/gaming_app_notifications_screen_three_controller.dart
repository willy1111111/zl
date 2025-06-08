import 'package:get/get.dart';
import '../models/notification_item_model.dart';
import '../../../core/app_export.dart';

class GamingAppNotificationsScreenThreeController extends GetxController {
  RxList<NotificationItemModel> notifications = <NotificationItemModel>[].obs;
  RxBool isSelectAllChecked = false.obs;

  @override
  void onInit() {
    super.onInit();
    _initializeNotifications();
  }

  void _initializeNotifications() {
    notifications.value = [
      NotificationItemModel(
        id: '1'.obs,
        date: '2024-01-27 01:00:00'.obs,
        deleteInfo: 'Automatically delete within 30 days'.obs,
        title: 'Withdrawal issues'.obs,
        description: 'My money is missing my money is missing my money'.obs,
        hasReply: true.obs,
        replyDate: '2024-04-15 16:59:59'.obs,
        isSelected: false.obs,
      ),
      NotificationItemModel(
        id: '2'.obs,
        date: '2024-01-27 01:00:00'.obs,
        deleteInfo: 'Automatically delete within 30 days'.obs,
        title: 'Game issues'.obs,
        description:
            'Failed to enter the gameFailed to enter the game\nFailed'.obs,
        hasReply: false.obs,
        isSelected: true.obs,
      ),
      NotificationItemModel(
        id: '3'.obs,
        date: '2024-01-27 01:00:00'.obs,
        deleteInfo: 'Automatically delete within 30 days'.obs,
        title: 'Game issues'.obs,
        description:
            'Failed to enter the gameFailed to enter the game\nFailed'.obs,
        hasReply: false.obs,
        isSelected: false.obs,
      ),
    ];
    _updateSelectAllState();
  }

  void toggleNotificationSelection(int index, bool isSelected) {
    if (index >= 0 && index < notifications.length) {
      notifications[index].isSelected?.value = isSelected;
      notifications.refresh();
      _updateSelectAllState();
    }
  }

  void toggleSelectAll() {
    bool newSelectAllState = !isSelectAllChecked.value;
    isSelectAllChecked.value = newSelectAllState;

    for (var notification in notifications) {
      notification.isSelected?.value = newSelectAllState;
    }
    notifications.refresh();
  }

  void _updateSelectAllState() {
    bool allSelected = notifications.isNotEmpty &&
        notifications
            .every((notification) => notification.isSelected?.value ?? false);
    isSelectAllChecked.value = allSelected;
  }

  void onBalancePressed() {
    // Handle balance section tap
    Get.snackbar('Balance', 'Balance section tapped');
  }

  void onNotificationOptionsPressed(int index) {
    // Handle notification options menu
    Get.snackbar('Options', 'Options for notification ${index + 1}');
  }

  void onFloatingAction1Pressed() {
    // Handle first floating action button
    Get.snackbar('Action', 'Floating action 1 pressed');
  }

  void onFloatingAction2Pressed() {
    // Handle second floating action button
    Get.snackbar('Action', 'Floating action 2 pressed');
  }

  void onFloatingAction3Pressed() {
    // Handle third floating action button
    Get.snackbar('Action', 'Floating action 3 pressed');
  }

  void onDeletePressed() {
    List<NotificationItemModel> selectedNotifications = notifications
        .where((notification) => notification.isSelected?.value ?? false)
        .toList();

    if (selectedNotifications.isNotEmpty) {
      // Remove selected notifications
      notifications.removeWhere(
          (notification) => notification.isSelected?.value ?? false);
      _updateSelectAllState();
      Get.snackbar(
          'Success', '${selectedNotifications.length} notification(s) deleted');
    } else {
      Get.snackbar('Info', 'No notifications selected');
    }
  }
}
