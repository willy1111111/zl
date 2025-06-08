import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_ticket_bonus_card.dart';
import './controller/ticket_event_rewards_screen_four_controller.dart';
import './widgets/task_card_widget.dart';

class TicketEventRewardsScreenFour
    extends GetWidget<TicketEventRewardsScreenFourController> {
  const TicketEventRewardsScreenFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: CustomAppBar(
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
      ),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 104.h),
              _buildTaskInfoBanner(),
              SizedBox(height: 20.h),
              _buildTabNavigation(),
              SizedBox(height: 20.h),
              _buildUserProfileSection(),
              SizedBox(height: 12.h),
              Expanded(
                child: _buildTaskList(),
              ),
            ],
          ),
          _buildNotificationBadge(),
          Obx(() => controller.showCongratulationsModal.value
              ? _buildCongratulationsModal()
              : SizedBox.shrink()),
        ],
      ),
    );
  }

  Widget _buildTaskInfoBanner() {
    return Padding(
      padding: EdgeInsets.only(left: 15.h),
      child: Row(
        children: [
          Container(
            width: 236.h,
            height: 22.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2528,
              borderRadius: BorderRadius.circular(11.h),
            ),
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Center(
              child: Text(
                'Completing tasks below earns ticket',
                style: TextStyleHelper.instance.body12BoldArial
                    .copyWith(color: appTheme.colorFFC0C8),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabNavigation() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Container(
        width: 345.h,
        height: 38.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2B32,
          borderRadius: BorderRadius.circular(16.h),
        ),
        child: Row(
          children: [
            Container(
              width: 172.h,
              height: 38.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF85D4,
                borderRadius: BorderRadius.circular(16.h),
              ),
              child: Center(
                child: Text(
                  'Earn Ticket',
                  style: TextStyleHelper.instance.title16BoldArial
                      .copyWith(color: appTheme.colorFF1E20),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: () => controller.onTabChanged(),
                  child: Text(
                    'My Ticket',
                    style: TextStyleHelper.instance.title16BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNotificationBadge() {
    return Positioned(
      top: 146.h,
      right: 25.h,
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

  Widget _buildUserProfileSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomTicketBonusCard(
        userId: '939038393',
        bonusAmount: '₱ 123456789.00',
      ),
    );
  }

  Widget _buildTaskList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Obx(
        () => ListView.separated(
          itemCount: controller.taskList.length,
          separatorBuilder: (context, index) => SizedBox(height: 12.h),
          itemBuilder: (context, index) {
            return TaskCardWidget(
              taskModel: controller.taskList[index],
              onButtonTap: () => controller.onTaskButtonPressed(index),
            );
          },
        ),
      ),
    );
  }

  Widget _buildCongratulationsModal() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.blackCustom.withAlpha(128),
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.img2,
            width: 375.h,
            height: 403.h,
            alignment: Alignment.topCenter,
          ),
          Positioned(
            bottom: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img1375x375,
              width: 375.h,
              height: 375.h,
            ),
          ),
          Center(
            child: Container(
              width: 328.h,
              height: 313.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(12.h),
              ),
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  SizedBox(height: 16.h),
                  Text(
                    'Congratulations!',
                    style: TextStyleHelper.instance.title18BoldArial,
                  ),
                  SizedBox(height: 32.h),
                  _buildPackageDisplay(),
                  SizedBox(height: 24.h),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: TextStyleHelper.instance.title16BoldArial,
                      children: [
                        TextSpan(
                          text: 'You have completed it and received ',
                          style: TextStyleHelper.instance.textStyle16
                              .copyWith(color: appTheme.colorFF8089),
                        ),
                        TextSpan(
                          text: 'Earn +1 red package ticket',
                          style: TextStyleHelper.instance.textStyle16
                              .copyWith(color: appTheme.colorFFFFC6),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () => controller.onGotItPressed(),
                    child: Container(
                      width: 296.h,
                      height: 44.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFFFBF00), Color(0xFFFF7A00)],
                        ),
                        borderRadius: BorderRadius.circular(6.h),
                      ),
                      child: Center(
                        child: Text(
                          'Got it',
                          style: TextStyleHelper.instance.title16BoldArial
                              .copyWith(color: appTheme.whiteCustom),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPackageDisplay() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 118.h,
          height: 91.h,
          decoration: BoxDecoration(
            color: appTheme.color5D4E00,
            borderRadius: BorderRadius.circular(59.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.color888888,
                offset: Offset(0, 4.h),
                blurRadius: 40.h,
              ),
            ],
          ),
        ),
        Container(
          width: 110.h,
          height: 70.h,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0x000B783D), Color(0xFF9FB90A)],
            ),
            borderRadius: BorderRadius.circular(10.h),
            border: Border.all(
              width: 2.h,
              color: appTheme.colorFFFFFF,
            ),
          ),
          child: Center(
            child: Text(
              'Red Package',
              style: TextStyleHelper.instance.body14BoldArial
                  .copyWith(color: appTheme.whiteCustom),
            ),
          ),
        ),
        Positioned(
          top: -24.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .img06728263ef34542eeb5f4df0d35ba2d62c75d4d9add9cnkb7zs4,
            width: 147.h,
            height: 149.h,
          ),
        ),
        Positioned(
          top: 8.h,
          right: 8.h,
          child: CustomImageView(
            imagePath: ImageConstant.imgImage413,
            width: 44.h,
            height: 53.h,
          ),
        ),
        Positioned(
          top: 16.h,
          right: 0,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
            width: 54.h,
            height: 30.h,
          ),
        ),
        Positioned(
          top: -8.h,
          right: 16.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
            width: 58.h,
            height: 32.h,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 8.h,
          child: CustomImageView(
            imagePath: ImageConstant
                .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
            width: 55.h,
            height: 31.h,
          ),
        ),
      ],
    );
  }
}
