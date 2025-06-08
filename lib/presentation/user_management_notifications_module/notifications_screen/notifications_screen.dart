import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/notifications_controller.dart';
import './widgets/notification_item_widget.dart';

class NotificationsScreen extends GetWidget<NotificationsController> {
  NotificationsScreen({Key? key}) : super(key: key);

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
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  Obx(() => ListView.separated(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.notifications.length,
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 16.h),
                        itemBuilder: (context, index) {
                          return NotificationItemWidget(
                            notificationModel: controller.notifications[index],
                          );
                        },
                      )),
                  SizedBox(height: 32.h),
                  Text(
                    'All loaded',
                    style: TextStyleHelper.instance.body14BoldArial,
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Positioned(
        bottom: 159.h,
        right: 35.h,
        child: GestureDetector(
          onTap: () => controller.onFloatingActionButtonPressed(),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup911,
            height: 40.h,
            width: 40.h,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation
          .endFloat, // Modified: Replaced invalid 'custom' with valid location
    );
  }
}
