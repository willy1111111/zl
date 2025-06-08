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
      appBar: CustomAppBar(
        title: 'notifications',
        capitalizeTitle: true,
        height: 86.h,
        showBalance: true,
        balanceAmount: '₱1980.00',
        onBalancePressed: () => controller.onBalancePressed(),
        onBackPressed: () => Get.back(),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(() => ListView.separated(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.h, vertical: 16.h),
                  itemCount: controller.notificationsList.length,
                  separatorBuilder: (context, index) => SizedBox(height: 10.h),
                  itemBuilder: (context, index) {
                    return NotificationItemWidget(
                      notificationItem: controller.notificationsList[index],
                      onTap: () => controller.onNotificationTap(index),
                    );
                  },
                )),
          ),
          Container(
            padding: EdgeInsets.only(bottom: 42.h),
            child: Text(
              'All loaded',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.colorFF8089),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.only(bottom: 117.h),
        child: GestureDetector(
          onTap: () => controller.scrollToTop(),
          child: SizedBox(
            width: 40.h,
            height: 40.h,
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse121,
                  height: 40.h,
                  width: 40.h,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 7.h,
                  left: 10.h,
                  child: CustomImageView(
                    imagePath: ImageConstant.imgStroke,
                    width: 20.h,
                    height: 11.h,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
