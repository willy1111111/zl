import 'package:get/get.dart';
import '../models/gaming_platform_notifications_model.dart';
import '../../../core/app_export.dart';

class GamingPlatformNotificationsController extends GetxController {
  RxList<GamingPlatformNotificationsModel> notifications =
      <GamingPlatformNotificationsModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeNotifications();
  }

  void _initializeNotifications() {
    notifications.value = [
      GamingPlatformNotificationsModel(
        date: '2024-01-27 01:00:00'.obs,
        deleteInfo: 'Automatically delete within 30 days'.obs,
        title: 'Withdrawal issues'.obs,
        description:
            'My money is missing my money is missing my money is missing my money is missing .my money is missing my money is missing.My money is missing my money is missing'
                .obs,
        hasNewReply: true.obs,
        replyDate: '2024-04-15 16:59:59'.obs,
        supportResponse:
            'Dear Teams, we have received your question!\nWe have not found any abnormalities in the game.\nYou can try to check whether the network is normal.\nGood luck!'
                .obs,
        showStatusIcon: false.obs,
      ),
      GamingPlatformNotificationsModel(
        date: '2024-01-27 01:00:00'.obs,
        deleteInfo: 'Automatically delete within 30 days'.obs,
        title: 'Game issues'.obs,
        description:
            'Failed to enter the gameFailed to enter the game\nFailed to enter the gameFailed to enter the game\nFailed to enter the gameFailed to enter the gameFailed to enter the game'
                .obs,
        hasNewReply: false.obs,
        replyDate: '2024-04-15 16:59:59'.obs,
        supportResponse:
            'Dear Teams, we have received your question!\nWe have not found any abnormalities in the game.\nYou can try to check whether the network is normal.\nGood luck!'
                .obs,
        showStatusIcon: true.obs,
      ),
      GamingPlatformNotificationsModel(
        date: '2024-01-27 01:00:00'.obs,
        deleteInfo: 'Automatically delete within 30 days'.obs,
        title: 'Game issues'.obs,
        description:
            'Failed to enter the gameFailed to enter the game\nFailed to enter the gameFailed to enter the game\nFailed to enter the gameFailed to enter the gameFailed to enter the game'
                .obs,
        hasNewReply: false.obs,
        replyDate: '2024-04-15 16:59:59'.obs,
        supportResponse:
            'Dear Teams, we have received your question!\nWe have not found any abnormalities in the game.\nYou can try to check whether the network is normal.\nGood luck!'
                .obs,
        showStatusIcon: false.obs,
      ),
    ];
  }

  void onNotificationTap(GamingPlatformNotificationsModel notification) {
    // Handle notification tap
  }

  void onMoreOptionsTap(GamingPlatformNotificationsModel notification) {
    // Handle more options tap
  }
}
