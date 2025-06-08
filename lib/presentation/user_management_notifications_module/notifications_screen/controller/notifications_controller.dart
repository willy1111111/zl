import '../../../core/app_export.dart';
import '../models/notification_item_model.dart';

class NotificationsController extends GetxController {
  RxList<NotificationItemModel> notifications = <NotificationItemModel>[].obs;
  RxBool isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadNotifications();
  }

  void loadNotifications() {
    notifications.value = [
      NotificationItemModel(
        iconPath: ImageConstant.img9952afd552e65e6a078a18745fa7e6a71.obs,
        overlayIconPath: ImageConstant.imgVectorBlueGray40020x22.obs,
        title: 'Withdrawal issues'.obs,
        type: 'Suggestion'.obs,
        message: 'My money is missing my mone...'.obs,
        date: '2023-03-05'.obs,
        hasNotificationDot: true.obs,
      ),
      NotificationItemModel(
        iconPath: ImageConstant.imgGroup942.obs,
        title: 'System notification'.obs,
        type: 'Merchant'.obs,
        message: 'Information preview Information preview'.obs,
        date: '2023-03-05'.obs,
        hasNotificationDot: true.obs,
      ),
      NotificationItemModel(
        iconPath: ImageConstant.imgGroup943.obs,
        title: 'Username'.obs,
        type: 'Merchant'.obs,
        message: 'Information preview Information preview'.obs,
        date: '2023-03-04'.obs,
        hasNotificationDot: false.obs,
      ),
      NotificationItemModel(
        iconPath: ImageConstant.imgVectorLightGreenA70001.obs,
        title: 'System notification'.obs,
        type: 'Merchant'.obs,
        message: 'Information preview Information preview'.obs,
        date: '2023-03-03'.obs,
        hasNotificationDot: true.obs,
        hasCustomBackground: true.obs,
      ),
    ];
  }

  void onFloatingActionButtonPressed() {
    // Handle floating action button press
    print('Floating action button pressed');
  }

  void onNotificationTap(NotificationItemModel notification) {
    // Handle notification item tap
    print('Notification tapped: ${notification.title?.value}');
  }
}
