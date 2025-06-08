import '../../../core/app_export.dart';
import '../models/notice_notifications_model.dart';

class NoticeNotificationsController extends GetxController {
  RxList<NoticeNotificationsModel> notifications =
      <NoticeNotificationsModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeNotifications();
  }

  void initializeNotifications() {
    notifications.value = [
      NoticeNotificationsModel(
        id: '1'.obs,
        title: 'Cash Back'.obs,
        icon: ImageConstant.img9952afd552e65e6a078a18745fa7e6a71.obs,
        overlayIcon: null,
        badgeCount: 1.obs,
        hasMultipleBadges: true.obs,
        multipleBadgeCount: 99.obs,
      ),
      NoticeNotificationsModel(
        id: '2'.obs,
        title: 'Notify'.obs,
        icon: ImageConstant.img9952afd552e65e6a078a18745fa7e6a71.obs,
        overlayIcon: ImageConstant.imgGroup827.obs,
        badgeCount: 99.obs,
        hasMultipleBadges: false.obs,
        multipleBadgeCount: null,
      ),
      NoticeNotificationsModel(
        id: '3'.obs,
        title: 'Exclusive'.obs,
        icon: ImageConstant.imgGroup120051.obs,
        overlayIcon: null,
        badgeCount: 1.obs,
        hasMultipleBadges: false.obs,
        multipleBadgeCount: null,
      ),
    ];
  }

  void onDetailsTap(NoticeNotificationsModel notification) {
    // Handle details button tap
    print('Details tapped for: ${notification.title?.value}');
  }
}
