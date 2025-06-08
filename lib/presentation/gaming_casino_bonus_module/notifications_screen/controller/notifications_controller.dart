import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/notification_item_model.dart';

class NotificationsController extends GetxController {
  RxList<NotificationItemModel> notificationsList =
      <NotificationItemModel>[].obs;
  ScrollController scrollController = ScrollController();

  @override
  void onInit() {
    super.onInit();
    initializeNotifications();
  }

  @override
  void onClose() {
    scrollController.dispose();
    super.onClose();
  }

  void initializeNotifications() {
    notificationsList.value = [
      NotificationItemModel(
        icon: ImageConstant.imgGroup942.obs,
        title: 'System notification'.obs,
        subtitle: 'Information preview Information preview'.obs,
        source: 'Merchant'.obs,
        date: '2023-03-05'.obs,
        hasRedDot: true.obs,
        hasCustomBackground: false.obs,
      ),
      NotificationItemModel(
        icon: ImageConstant.imgGroup943.obs,
        title: 'Username'.obs,
        subtitle: 'Information preview Information preview'.obs,
        source: 'Merchant'.obs,
        date: '2023-03-04'.obs,
        hasRedDot: false.obs,
        hasCustomBackground: false.obs,
      ),
      NotificationItemModel(
        icon: ImageConstant.imgVector.obs,
        title: 'System notification'.obs,
        subtitle: 'Information preview Information preview'.obs,
        source: 'Merchant'.obs,
        date: '2023-03-03'.obs,
        hasRedDot: true.obs,
        hasCustomBackground: true.obs,
      ),
    ];
  }

  void onBalancePressed() {
    // Handle balance tap action
  }

  void onNotificationTap(int index) {
    // Handle notification item tap
    if (notificationsList[index].hasRedDot?.value ?? false) {
      notificationsList[index].hasRedDot?.value = false;
      notificationsList.refresh();
    }
  }

  void scrollToTop() {
    if (scrollController.hasClients) {
      scrollController.animateTo(
        0,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
