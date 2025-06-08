import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import './controller/gaming_platform_notifications_controller.dart';
import './widgets/notification_card_widget.dart';

class GamingPlatformNotificationsScreen
    extends GetWidget<GamingPlatformNotificationsController> {
  GamingPlatformNotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Notifications',
      balance: '₱1980.00',
      showBalance: true,
      onBackPressed: () => Get.back(),
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.maxFinite,
      child: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  _buildNotificationsList(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationsList() {
    return Obx(() => Column(
          children: List.generate(
            controller.notifications.length,
            (index) {
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: NotificationCardWidget(
                  notificationModel: controller.notifications[index],
                ),
              );
            },
          ),
        ));
  }
}
