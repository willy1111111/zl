import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/ticket_event_dashboard_controller.dart';

class TicketEventDashboardScreen
    extends GetWidget<TicketEventDashboardController> {
  const TicketEventDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 24.h),
              _buildUserProfileSection(),
              SizedBox(height: 16.h),
              _buildTaskCompletionNotice(),
              SizedBox(height: 16.h),
              _buildActionButtons(),
              SizedBox(height: 48.h),
              _buildEmptyState(),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 78.h,
      backgroundColor: appTheme.colorFF1B1C,
      title: 'Ticket Event',
      showBackButton: true,
      backButtonPath: ImageConstant.imgStroke,
      onBackPressed: () => Get.back(),
      showMenuButton: true,
      menuButtonPath: ImageConstant.imgFrame14117,
      onMenuPressed: () => controller.onMenuPressed(),
    );
  }

  Widget _buildUserProfileSection() {
    return Obx(() => Row(
          children: [
            Container(
              width: 60.h,
              height: 60.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF2528,
                border: Border.all(color: appTheme.colorFF85D4),
                borderRadius: BorderRadius.circular(30.h),
              ),
              child: Center(
                child: CustomImageView(
                  imagePath:
                      controller.ticketEventModel.value?.profileImage?.value ??
                          ImageConstant.img87131,
                  height: 36.h,
                  width: 36.h,
                ),
              ),
            ),
            SizedBox(width: 16.h),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.ticketEventModel.value?.userId?.value ??
                        '939038393',
                    style: TextStyleHelper.instance.body14SemiBoldInter,
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    'Total Ticket Bonus:',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    controller
                            .ticketEventModel.value?.totalTicketBonus?.value ??
                        '₱ 123456789.00',
                    style: TextStyleHelper.instance.title18BlackArial
                        .copyWith(color: appTheme.colorFFFFC6),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img10161,
              width: 112.h,
              height: 114.h,
            ),
          ],
        ));
  }

  Widget _buildTaskCompletionNotice() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(11.h),
      ),
      padding: EdgeInsets.all(12.h),
      child: Text(
        'Completing tasks below earns ticket',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFFC0C8),
      ),
    );
  }

  Widget _buildActionButtons() {
    return Obx(() => Container(
          height: 38.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF2B32,
            borderRadius: BorderRadius.circular(16.h),
          ),
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => controller.onEarnTicketPressed(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: (controller.selectedTab.value == 0)
                          ? Color(0xFF1E2024)
                          : appTheme.transparentCustom,
                      borderRadius: BorderRadius.circular(16.h),
                    ),
                    child: Center(
                      child: Text(
                        'Earn Ticket',
                        style: TextStyleHelper.instance.title16BoldArial
                            .copyWith(color: appTheme.whiteCustom),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () => controller.onMyTicketPressed(),
                  child: Container(
                    decoration: BoxDecoration(
                      color: (controller.selectedTab.value == 1)
                          ? Color(0xFF85D420)
                          : appTheme.transparentCustom,
                      borderRadius: BorderRadius.circular(16.h),
                    ),
                    child: Center(
                      child: Text(
                        'My Ticket',
                        style: TextStyleHelper.instance.title16BoldArial
                            .copyWith(
                                color: (controller.selectedTab.value == 1)
                                    ? Color(0xFF1E2024)
                                    : appTheme.whiteCustom),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget _buildEmptyState() {
    return Column(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgGroup278,
          width: 240.h,
          height: 184.h,
        ),
        SizedBox(height: 24.h),
        Text(
          'Oops! There is no data yet!',
          style: TextStyleHelper.instance.body14BoldArial
              .copyWith(color: appTheme.colorFF8089),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
