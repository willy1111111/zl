import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_ticket_bonus_card.dart';
import './controller/ticket_event_rewards_screen_three_controller.dart';
import './widgets/task_item_widget.dart';

class TicketEventRewardsScreenThree
    extends GetWidget<TicketEventRewardsScreenThreeController> {
  TicketEventRewardsScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: SizedBox(
        width: double.maxFinite,
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: EdgeInsets.all(16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildUserProfileSection(),
                        SizedBox(height: 24.h),
                        _buildTaskInfoBanner(),
                        SizedBox(height: 16.h),
                        _buildTabNavigation(),
                        SizedBox(height: 24.h),
                        _buildTaskList(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            _buildNotificationBadge(),
            Obx(() => controller.showCongratulationsModal.value
                ? _buildCongratulationsModal()
                : SizedBox.shrink()),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: 'Ticket Event',
      leadingIcon: ImageConstant.imgStroke,
      onLeadingPressed: () => Get.back(),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 15.h),
          child: CustomImageView(
            imagePath: ImageConstant.imgFrame14117,
            width: 24.h,
            height: 24.h,
          ),
        ),
      ],
      backgroundColor: appTheme.colorFF1B1C,
      showStatusBar: true,
      statusBarIcon: ImageConstant.img1,
    );
  }

  Widget _buildUserProfileSection() {
    return CustomTicketBonusCard(
      userId: '939038393',
      bonusAmount: '₱ 123456789.00',
      profileImagePath: ImageConstant.img87131,
      decorationImagePath: ImageConstant.img10161,
      label: 'Total Ticket Bonus:',
    );
  }

  Widget _buildNotificationBadge() {
    return Positioned(
      top: 146.h,
      right: 30.h,
      child: Container(
        width: 20.h,
        height: 20.h,
        decoration: BoxDecoration(
          color: appTheme.colorFFF335,
          borderRadius: BorderRadius.circular(10.h),
        ),
        child: Center(
          child: Text(
            '9',
            style: TextStyleHelper.instance.body14BoldArial
                .copyWith(color: appTheme.whiteCustom),
          ),
        ),
      ),
    );
  }

  Widget _buildTaskInfoBanner() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(12.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(11.h),
      ),
      child: Text(
        'Completing tasks below earns ticket',
        style: TextStyleHelper.instance.body12BoldArial
            .copyWith(color: appTheme.colorFFC0C8),
      ),
    );
  }

  Widget _buildTabNavigation() {
    return Container(
      height: 38.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF2B32,
        borderRadius: BorderRadius.circular(16.h),
      ),
      child: Row(
        children: [
          Obx(() => GestureDetector(
                onTap: () => controller.selectedTabIndex.value = 0,
                child: Container(
                  width: 172.h,
                  height: 38.h,
                  decoration: BoxDecoration(
                    color: controller.selectedTabIndex.value == 0
                        ? Color(0xFF85D420)
                        : appTheme.transparentCustom,
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                  child: Center(
                    child: Text(
                      'Earn Ticket',
                      style: TextStyleHelper.instance.title16BoldArial.copyWith(
                          color: controller.selectedTabIndex.value == 0
                              ? Color(0xFF1E2024)
                              : appTheme.whiteCustom),
                    ),
                  ),
                ),
              )),
          Expanded(
            child: GestureDetector(
              onTap: () => controller.selectedTabIndex.value = 1,
              child: Container(
                height: 38.h,
                child: Center(
                  child: Text(
                    'My Ticket',
                    style: TextStyleHelper.instance.title16BoldArial.copyWith(
                        color: controller.selectedTabIndex.value == 1
                            ? Color(0xFF1E2024)
                            : appTheme.whiteCustom),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTaskList() {
    return Obx(() => Column(
          children: controller.taskItems
              .map((task) => Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: TaskItemWidget(taskModel: task),
                  ))
              .toList(),
        ));
  }

  Widget _buildCongratulationsModal() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.blackCustom.withAlpha(128),
      child: Center(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24.h),
          width: 328.h,
          decoration: BoxDecoration(
            color: appTheme.colorFF1E20,
            borderRadius: BorderRadius.circular(12.h),
          ),
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.img2,
                width: 328.h,
                height: 403.h,
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.img1375x375,
                  width: 328.h,
                  height: 375.h,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(24.h),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Congratulations!',
                      style: TextStyleHelper.instance.title18BoldArial,
                    ),
                    SizedBox(height: 32.h),
                    _buildCashVoucherDisplay(),
                    SizedBox(height: 32.h),
                    _buildCompletionMessage(),
                    SizedBox(height: 32.h),
                    _buildGotItButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCashVoucherDisplay() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 118.h,
          height: 91.h,
          margin: EdgeInsets.only(top: 22.h, left: 14.h),
          decoration: BoxDecoration(
            color: appTheme.color5D4E00,
            borderRadius: BorderRadius.circular(59.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.color888888,
                blurRadius: 40.h,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
        ),
        Container(
          width: 147.h,
          height: 149.h,
          child: Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant
                    .img06728263ef34542eeb5f4df0d35ba2d62c75d4d9add9cnkb7zs4,
                width: 147.h,
                height: 149.h,
              ),
              Positioned(
                top: 22.h,
                left: 18.h,
                child: Container(
                  width: 110.h,
                  height: 70.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0x00EC3232),
                        appTheme.colorFFFFBA,
                      ],
                    ),
                    border: Border.all(
                      color: appTheme.colorFFFFFF,
                      width: 2.h,
                    ),
                    borderRadius: BorderRadius.circular(10.h),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: -35.h,
                        left: 18.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgCash1,
                          width: 73.h,
                          height: 88.h,
                        ),
                      ),
                      Positioned(
                        bottom: 8.h,
                        left: 0,
                        right: 0,
                        child: Text(
                          'Cash Voucher',
                          textAlign: TextAlign.center,
                          style: TextStyleHelper.instance.body14BoldArial
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 25.h,
                right: 0,
                child: CustomImageView(
                  imagePath: ImageConstant
                      .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
                  width: 54.h,
                  height: 30.h,
                ),
              ),
              Positioned(
                top: 40.h,
                left: -2.h,
                child: CustomImageView(
                  imagePath: ImageConstant
                      .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12003,
                  width: 47.h,
                  height: 31.h,
                ),
              ),
              Positioned(
                top: -12.h,
                right: 24.h,
                child: CustomImageView(
                  imagePath: ImageConstant
                      .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
                  width: 58.h,
                  height: 32.h,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCompletionMessage() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: TextStyleHelper.instance.title16BoldArial.copyWith(height: 1.5),
        children: [
          TextSpan(
            text: 'You have completed it and received ',
            style: TextStyleHelper.instance.textStyle16
                .copyWith(color: appTheme.colorFF8089),
          ),
          TextSpan(
            text: '+1 Cash Voucher',
            style: TextStyleHelper.instance.textStyle16
                .copyWith(color: appTheme.colorFFFFC6),
          ),
        ],
      ),
    );
  }

  Widget _buildGotItButton() {
    return CustomButton(
      text: 'Got it',
      onPressed: () => controller.closeCongratulationsModal(),
      variant: CustomButtonVariant.primary,
      backgroundColor: appTheme.colorFFFF7A,
      width: double.infinity,
      height: 44.h,
    );
  }
}
