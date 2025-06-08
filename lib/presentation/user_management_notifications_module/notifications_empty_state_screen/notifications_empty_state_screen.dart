import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/notifications_empty_state_controller.dart';

class NotificationsEmptyStateScreen
    extends GetWidget<NotificationsEmptyStateController> {
  NotificationsEmptyStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: _buildEmptyStateContent(),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmptyStateContent() {
    return Container(
      width: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          _buildEmptyStateIllustration(),
          SizedBox(height: 32.h),
          _buildNoEntriesText(),
          Spacer(),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEmptyStateIllustration() {
    return Container(
      child: CustomImageView(
        imagePath: ImageConstant.imgGroup944,
        height: 184.h,
        width: 240.h,
        fit: BoxFit.contain,
      ),
    );
  }

  /// Section Widget
  Widget _buildNoEntriesText() {
    return Text(
      'No entries',
      style: TextStyleHelper.instance.title16BoldArial
          .copyWith(color: appTheme.colorFF8089, height: 1.19),
    );
  }
}
