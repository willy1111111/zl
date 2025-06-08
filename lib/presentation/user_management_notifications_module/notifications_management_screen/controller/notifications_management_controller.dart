import '../../../core/app_export.dart';
import '../models/notification_item_model.dart';

class NotificationsManagementController extends GetxController {
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
        title: 'System notification'.obs,
        subtitle: 'Information preview Information preview'.obs,
        categoryLabel: 'Merchant'.obs,
        date: '2023-03-05'.obs,
        iconPath: ImageConstant.imgGroup942.obs,
        hasRedDot: true.obs,
        isSelected: false.obs,
      ),
      NotificationItemModel(
        id: '2'.obs,
        title: 'Username'.obs,
        subtitle: 'Information preview Information preview'.obs,
        categoryLabel: 'Merchant'.obs,
        date: '2023-03-04'.obs,
        iconPath: ImageConstant.imgGroup943.obs,
        hasRedDot: false.obs,
        isSelected: true.obs,
      ),
      NotificationItemModel(
        id: '3'.obs,
        title: 'System notification'.obs,
        subtitle: 'Information preview Information preview'.obs,
        categoryLabel: 'Merchant'.obs,
        date: '2023-03-03'.obs,
        iconPath: ImageConstant.imgVectorLightGreenA70001.obs,
        hasRedDot: true.obs,
        isSelected: false.obs,
        hasIconBackground: true.obs,
      ),
    ];
    _updateSelectAllState();
  }

  void toggleNotificationSelection(int index, bool isSelected) {
    notifications[index].isSelected?.value = isSelected;
    notifications.refresh();
    _updateSelectAllState();
  }

  void toggleSelectAll() {
    isSelectAllChecked.value = !isSelectAllChecked.value;
    for (var notification in notifications) {
      notification.isSelected?.value = isSelectAllChecked.value;
    }
    notifications.refresh();
  }

  void deleteSelectedNotifications() {
    notifications
        .removeWhere((notification) => notification.isSelected?.value ?? false);
    _updateSelectAllState();
    Get.snackbar(
      'Success',
      'Selected notifications deleted',
      backgroundColor: appTheme.colorFF85D4,
      colorText: appTheme.whiteCustom,
    );
  }

  void handleFloatingActionButton(String imagePath) {
    Get.snackbar(
      'Action',
      'Floating action button pressed: $imagePath',
      backgroundColor: appTheme.colorFF2528,
      colorText: appTheme.whiteCustom,
    );
  }

  void _updateSelectAllState() {
    bool allSelected = notifications.isNotEmpty &&
        notifications
            .every((notification) => notification.isSelected?.value ?? false);
    isSelectAllChecked.value = allSelected;
  }
}
