import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import './controller/notifications_screen_two_controller.dart';
import './widgets/notification_card_widget.dart';

class NotificationsScreenTwo
    extends GetWidget<NotificationsScreenTwoController> {
  NotificationsScreenTwo({Key? key}) : super(key: key);

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
      body: Obx(() => _buildMainContent()),
    );
  }

  Widget _buildMainContent() {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.h,
        left: 15.h,
        right: 15.h,
      ),
      child: ListView.separated(
        itemCount: controller.notifications.length,
        separatorBuilder: (context, index) => SizedBox(height: 12.h),
        itemBuilder: (context, index) {
          return NotificationCardWidget(
            notification: controller.notifications[index],
            onViewEventTap: () => controller.onViewEventTap(index),
          );
        },
      ),
    );
  }
}
