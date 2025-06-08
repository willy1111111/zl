import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import './controller/notice_notifications_controller.dart';
import './models/notice_notifications_model.dart';
import './widgets/notification_item_widget.dart';

class NoticeNotificationsScreen
    extends GetWidget<NoticeNotificationsController> {
  const NoticeNotificationsScreen({Key? key}) : super(key: key);

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
      appBarType: CustomAppBarType.navigation,
      title: 'Notice',
      statusBarImage: ImageConstant.img1Black900,
      onBackTap: () => Get.back(),
      backgroundColor: appTheme.colorFF1B1C,
      height: 86.h,
    );
  }

  Widget _buildBody() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.only(top: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildNotificationsList(),
        ],
      ),
    );
  }

  Widget _buildNotificationsList() {
    return Obx(() => Expanded(
          child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            itemCount: controller.notifications.length,
            separatorBuilder: (context, index) => SizedBox(height: 10.h),
            itemBuilder: (context, index) {
              NoticeNotificationsModel notification =
                  controller.notifications[index];
              return NotificationItemWidget(
                notification: notification,
                onDetailsTap: () => controller.onDetailsTap(notification),
              );
            },
          ),
        ));
  }
}
