import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gaming_app_notifications_screen_three_controller.dart';
import './widgets/notification_card_widget.dart';

class GamingAppNotificationsScreenThree
    extends GetWidget<GamingAppNotificationsScreenThreeController> {
  GamingAppNotificationsScreenThree({Key? key}) : super(key: key);

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
    return Padding(
      padding: EdgeInsets.all(16.h),
      child: Column(
        children: [
          Expanded(
            child: _buildNotificationsList(),
          ),
          _buildAllLoadedText(),
        ],
      ),
    );
  }

  Widget _buildNotificationsList() {
    return Obx(() => ListView.separated(
          itemCount: controller.notifications.length,
          separatorBuilder: (context, index) => SizedBox(height: 16.h),
          itemBuilder: (context, index) {
            return NotificationCardWidget(
              notification: controller.notifications[index],
              onSelectionChanged: (isSelected) =>
                  controller.toggleNotificationSelection(index, isSelected),
              onOptionsPressed: () =>
                  controller.onNotificationOptionsPressed(index),
            );
          },
        ));
  }

  Widget _buildAllLoadedText() {
    return Padding(
      padding: EdgeInsets.only(top: 32.h),
      child: Text(
        'All loaded',
        style: TextStyleHelper.instance.body14Bold
            .copyWith(color: appTheme.colorFFABB6),
      ),
    );
  }

  Widget _buildFloatingActionButtons() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildFloatingActionButton(ImageConstant.imgGroup12706,
            () => controller.onFloatingAction1Pressed()),
        SizedBox(height: 16.h),
        _buildFloatingActionButton(ImageConstant.imgGroup12707,
            () => controller.onFloatingAction2Pressed()),
        SizedBox(height: 16.h),
        _buildFloatingActionButton(ImageConstant.imgGroup911,
            () => controller.onFloatingAction3Pressed()),
        SizedBox(height: 120.h),
      ],
    );
  }

  Widget _buildFloatingActionButton(String imagePath, VoidCallback onPressed) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 40.h,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.h),
          boxShadow: [
            BoxShadow(
              color: appTheme.blackCustom.withAlpha(77),
              blurRadius: 8.h,
              offset: Offset(0, 2.h),
            ),
          ],
        ),
        child: CustomImageView(
          imagePath: imagePath,
          height: 40.h,
          width: 40.h,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildBottomBar() {
    return Obx(() => CustomBottomBar(
          type: CustomBottomBarType.selection,
          isSelectAllChecked: controller.isSelectAllChecked.value,
          onSelectAllChanged: () => controller.toggleSelectAll(),
          onDeletePressed: () => controller.onDeletePressed(),
          selectAllText: 'Select all',
          deleteText: 'Delete',
          height: 64.h,
        ));
  }
}
