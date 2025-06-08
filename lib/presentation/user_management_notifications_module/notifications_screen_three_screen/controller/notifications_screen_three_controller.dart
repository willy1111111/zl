import '../../../core/app_export.dart';
import '../models/notification_item_model.dart';
import '../models/notifications_screen_three_model.dart';

class NotificationsScreenThreeController extends GetxController {
  Rx<NotificationsScreenThreeModel> notificationsScreenThreeModel =
      NotificationsScreenThreeModel().obs;

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
        title: 'Withdrawal issues'.obs,
        message: 'My money is missing my mone..'.obs,
        category: 'Suggestion'.obs,
        date: '2023-03-05'.obs,
        iconPath: ImageConstant.img9952afd552e65e6a078a18745fa7e6a71.obs,
        overlayIconPath: ImageConstant.imgVectorBlueGray40020x22.obs,
        hasRedBadge: true.obs,
        isSelected: false.obs,
      ),
      NotificationItemModel(
        id: '2'.obs,
        title: 'System notification'.obs,
        message: 'Information preview Information preview'.obs,
        category: 'Merchant'.obs,
        date: '2023-03-05'.obs,
        iconPath: ImageConstant.imgGroup942.obs,
        hasRedBadge: true.obs,
        isSelected: false.obs,
      ),
      NotificationItemModel(
        id: '3'.obs,
        title: 'Username'.obs,
        message: 'Information preview Information preview'.obs,
        category: 'Merchant'.obs,
        date: '2023-03-04'.obs,
        iconPath: ImageConstant.imgGroup943.obs,
        hasRedBadge: false.obs,
        isSelected: true.obs,
      ),
      NotificationItemModel(
        id: '4'.obs,
        title: 'System notification'.obs,
        message: 'Information preview Information preview'.obs,
        category: 'Merchant'.obs,
        date: '2023-03-03'.obs,
        iconPath: ImageConstant.imgVectorLightGreenA70001.obs,
        hasRedBadge: true.obs,
        isSelected: false.obs,
        hasCustomBackground: true.obs,
      ),
    ];

    _updateSelectAllState();
  }

  void toggleNotificationSelection(int index, bool isSelected) {
    if (index < notifications.length) {
      notifications[index].isSelected?.value = isSelected;
      notifications.refresh();
      _updateSelectAllState();
    }
  }

  void toggleSelectAll() {
    isSelectAllChecked.value = !isSelectAllChecked.value;

    for (var notification in notifications) {
      notification.isSelected?.value = isSelectAllChecked.value;
    }
    notifications.refresh();
  }

  void _updateSelectAllState() {
    int selectedCount = notifications
        .where((notification) => notification.isSelected?.value ?? false)
        .length;

    isSelectAllChecked.value =
        selectedCount == notifications.length && notifications.isNotEmpty;
  }

  void deleteSelectedNotifications() {
    notifications
        .removeWhere((notification) => notification.isSelected?.value ?? false);
    _updateSelectAllState();

    Get.snackbar(
      'Success',
      'Selected notifications deleted successfully',
      snackPosition: SnackPosition.BOTTOM,
    );
  }

  void onBalancePressed() {
    Get.snackbar(
      'Balance',
      'Balance section tapped',
      snackPosition: SnackPosition.TOP,
    );
  }

  void onFloatingActionButtonPressed(String imagePath) {
    Get.snackbar(
      'Action',
      'Floating action button pressed: $imagePath',
      snackPosition: SnackPosition.BOTTOM,
    );
  }
}
