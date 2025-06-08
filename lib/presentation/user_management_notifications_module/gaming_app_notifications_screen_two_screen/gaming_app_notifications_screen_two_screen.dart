import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import './controller/gaming_app_notifications_screen_two_controller.dart';
import './widgets/notification_card_widget.dart';

class GamingAppNotificationsScreenTwo
    extends GetWidget<GamingAppNotificationsScreenTwoController> {
  GamingAppNotificationsScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(86.h),
        child: CustomAppBar(
          title: 'Notifications',
          balance: '₱1980.00',
          showBalance: true,
          onBackPressed: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.h),
        child: Obx(() => Column(
              children: [
                ...controller.notifications
                    .map((notification) => Padding(
                          padding: EdgeInsets.only(bottom: 16.h),
                          child: NotificationCardWidget(
                            notification: notification,
                            onExpandPressed: () => controller
                                .toggleNotificationExpansion(notification),
                          ),
                        ))
                    .toList(),
              ],
            )),
      ),
    );
  }
}
