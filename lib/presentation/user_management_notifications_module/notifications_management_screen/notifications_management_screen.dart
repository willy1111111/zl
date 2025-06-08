import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_bottom_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/notifications_management_controller.dart';
import './widgets/notification_item_widget.dart';

class NotificationsManagementScreen
    extends GetWidget<NotificationsManagementController> {
  const NotificationsManagementScreen({Key? key}) : super(key: key);

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
              child: Column(
                children: [
                  Obx(() => ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: controller.notifications.length,
                        itemBuilder: (context, index) {
                          return NotificationItemWidget(
                            notification: controller.notifications[index],
                            onSelectionChanged: (isSelected) {
                              controller.toggleNotificationSelection(
                                  index, isSelected);
                            },
                          );
                        },
                      )),
                  SizedBox(height: 32.h),
                  Text(
                    'All loaded',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.colorFFABB6),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 120.h),
          _buildFloatingActionButton(ImageConstant.imgGroup12706),
          SizedBox(height: 16.h),
          _buildFloatingActionButton(ImageConstant.imgGroup12707),
          SizedBox(height: 16.h),
          _buildFloatingActionButton(ImageConstant.imgGroup911),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: CustomBottomBar(
        type: CustomBottomBarType.selection,
        isSelectAllChecked: controller.isSelectAllChecked.value,
        onSelectAllChanged: () => controller.toggleSelectAll(),
        onDeletePressed: () => controller.deleteSelectedNotifications(),
        selectAllText: 'Select all',
        deleteText: 'Delete',
        height: 64.h,
      ),
    );
  }

  Widget _buildFloatingActionButton(String imagePath) {
    return GestureDetector(
      onTap: () => controller.handleFloatingActionButton(imagePath),
      child: CustomImageView(
        imagePath: imagePath,
        height: 40.h,
        width: 40.h,
      ),
    );
  }
}
