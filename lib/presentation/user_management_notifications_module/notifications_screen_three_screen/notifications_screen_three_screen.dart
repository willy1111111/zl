import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/notifications_screen_three_controller.dart';
import './widgets/notification_item_widget.dart';

class NotificationsScreenThree
    extends GetWidget<NotificationsScreenThreeController> {
  NotificationsScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: _buildBody(),
      bottomNavigationBar: _buildBottomBar(),
      floatingActionButton: _buildFloatingActionButtons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Notifications',
      balance: '₱1980.00',
      showBalance: true,
      onBackPressed: () => Get.back(),
      onBalancePressed: () => controller.onBalancePressed(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        Expanded(
          child: Obx(() => ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: controller.notifications.length,
                itemBuilder: (context, index) {
                  return NotificationItemWidget(
                    notificationModel: controller.notifications[index],
                    onSelectionChanged: (isSelected) => controller
                        .toggleNotificationSelection(index, isSelected),
                  );
                },
              )),
        ),
        _buildAllLoadedText(),
      ],
    );
  }

  Widget _buildAllLoadedText() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: Text(
        'All loaded',
        style: TextStyleHelper.instance.body14BoldArial
            .copyWith(color: appTheme.colorFFABB6),
      ),
    );
  }

  Widget _buildFloatingActionButtons() {
    return Container(
      margin: EdgeInsets.only(bottom: 56.h),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildFloatingActionButton(ImageConstant.imgGroup12706),
          SizedBox(height: 16.h),
          _buildFloatingActionButton(ImageConstant.imgGroup12707),
          SizedBox(height: 16.h),
          _buildFloatingActionButton(ImageConstant.imgGroup911),
        ],
      ),
    );
  }

  Widget _buildFloatingActionButton(String imagePath) {
    return GestureDetector(
      onTap: () => controller.onFloatingActionButtonPressed(imagePath),
      child: CustomImageView(
        imagePath: imagePath,
        height: 40.h,
        width: 40.h,
      ),
    );
  }

  Widget _buildBottomBar() {
    return CustomBottomBar(
      type: CustomBottomBarType.selection,
      isSelectAllChecked: controller.isSelectAllChecked.value,
      onSelectAllChanged: () => controller.toggleSelectAll(),
      onDeletePressed: () => controller.deleteSelectedNotifications(),
      selectAllText: 'Select all',
      deleteText: 'Delete',
      height: 64.h,
    );
  }
}
