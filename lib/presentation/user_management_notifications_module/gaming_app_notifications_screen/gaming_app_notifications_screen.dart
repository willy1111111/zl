import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gaming_app_notifications_controller.dart';
import './widgets/notification_item_widget.dart';

class GamingAppNotificationsScreen
    extends GetWidget<GamingAppNotificationsController> {
  const GamingAppNotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
        title: 'Notifications',
        balance: '₱1980.00',
        showBalance: true,
        onBackPressed: () => Get.back(),
      ),
      body: Container(
        width: double.maxFinite,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16.h),
                child: Column(
                  children: [
                    Obx(() => ListView.separated(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: controller.notificationItems.length,
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 16.h),
                          itemBuilder: (context, index) {
                            return NotificationItemWidget(
                              notificationItem:
                                  controller.notificationItems[index],
                              onTap: () =>
                                  controller.toggleNotificationExpansion(index),
                            );
                          },
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => controller.onFloatingActionButtonPressed(),
        child: Container(
          margin: EdgeInsets.only(bottom: 40.h, right: 15.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup911,
            height: 40.h,
            width: 40.h,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
