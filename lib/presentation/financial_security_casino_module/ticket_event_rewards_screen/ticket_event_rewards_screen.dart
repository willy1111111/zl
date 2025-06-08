import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_ticket_bonus_card.dart';
import './controller/ticket_event_rewards_controller.dart';
import './widgets/task_card_widget.dart';

class TicketEventRewardsScreen extends GetWidget<TicketEventRewardsController> {
  const TicketEventRewardsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.h),
                _buildProfileSection(),
                SizedBox(height: 16.h),
                _buildTaskInfoBanner(),
                SizedBox(height: 16.h),
                _buildTabNavigation(),
                SizedBox(height: 24.h),
                _buildTaskList(),
                SizedBox(height: 100.h),
              ],
            ),
          ),
          Obx(() {
            return controller.showCongratulationsModal.value
                ? _buildCongratulationsModal()
                : SizedBox.shrink();
          }),
        ],
      ),
    );
  }

  CustomAppBar _buildAppBar() {
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
      showStatusBar: true,
      statusBarIcon: ImageConstant.img1,
    );
  }

  Widget _buildProfileSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: CustomTicketBonusCard(
        userId: controller.ticketEventRewardsModel.value?.userId?.value ??
            '939038393',
        bonusAmount:
            controller.ticketEventRewardsModel.value?.bonusAmount?.value ??
                '₱ 123456789.00',
        marginBottom: 16.h,
      ),
    );
  }

  Widget _buildTaskInfoBanner() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(11.h),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.h),
        child: Text(
          'Completing tasks below earns ticket',
          style: TextStyleHelper.instance.body12BoldArial
              .copyWith(color: appTheme.colorFFC0C8),
        ),
      ),
    );
  }

  Widget _buildTabNavigation() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Stack(
        children: [
          Container(
            height: 38.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF2B32,
              borderRadius: BorderRadius.circular(16.h),
            ),
            child: Row(
              children: [
                Obx(() {
                  return AnimatedContainer(
                    duration: Duration(milliseconds: 300),
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
                        style: TextStyleHelper.instance.title16BoldArial
                            .copyWith(
                                color: controller.selectedTabIndex.value == 0
                                    ? Color(0xFF1E2024)
                                    : appTheme.whiteCustom),
                      ),
                    ),
                  );
                }),
                Expanded(
                  child: GestureDetector(
                    onTap: () => controller.onTabChanged(1),
                    child: Container(
                      height: 38.h,
                      child: Center(
                        child: Text(
                          'My Ticket',
                          style: TextStyleHelper.instance.title16BoldArial
                              .copyWith(
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
          ),
          Positioned(
            top: -6.h,
            right: 29.h,
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
          ),
        ],
      ),
    );
  }

  Widget _buildTaskList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(() {
        return Column(
          children: [
            ...controller.taskItems.map((task) {
              int index = controller.taskItems.indexOf(task);
              return Padding(
                padding: EdgeInsets.only(bottom: 16.h),
                child: TaskCardWidget(
                  taskItem: task,
                  onButtonPressed: () => controller.onTaskButtonPressed(index),
                ),
              );
            }).toList(),
            Padding(
              padding: EdgeInsets.only(left: 48.h),
              child: Container(
                width: 207.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.circular(8.h),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.color408888,
                      blurRadius: 4.h,
                      offset: Offset(0, 4.h),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(12.h),
                child: Text(
                  'Invite Registration',
                  style: TextStyleHelper.instance.body14BoldArial
                      .copyWith(color: appTheme.whiteCustom, height: 1.14),
                ),
              ),
            ),
          ],
        );
      }),
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
            fit: BoxFit.cover,
          ),
          Positioned(
            top: 252.h,
            left: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img1375x375,
              width: 375.h,
              height: 375.h,
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: 328.h,
              margin: EdgeInsets.symmetric(horizontal: 24.h),
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(12.h),
              ),
              padding: EdgeInsets.all(16.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Congratulations!',
                    style: TextStyleHelper.instance.title18BoldArial,
                  ),
                  SizedBox(height: 24.h),
                  _buildGoldenEggDisplay(),
                  SizedBox(height: 24.h),
                  _buildRewardMessage(),
                  SizedBox(height: 32.h),
                  _buildGotItButton(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildGoldenEggDisplay() {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 118.h,
          height: 91.h,
          decoration: BoxDecoration(
            color: appTheme.colorB25D4E,
            borderRadius: BorderRadius.circular(59.h),
            boxShadow: [
              BoxShadow(
                color: appTheme.colorFF8888,
                blurRadius: 40.h,
                offset: Offset(0, 4.h),
              ),
            ],
          ),
        ),
        Stack(
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
                    colors: [Color(0x006F1EE4), Color(0xFFA666F8)],
                  ),
                  borderRadius: BorderRadius.circular(10.h),
                  border: Border.all(
                    color: appTheme.colorFFFFFB,
                    width: 2.h,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Golden Egg',
                    style: TextStyleHelper.instance.body14BoldArial
                        .copyWith(color: appTheme.whiteCustom),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 12.h,
              left: 42.h,
              child: CustomImageView(
                imagePath: ImageConstant.imgImage378,
                width: 60.h,
                height: 55.h,
              ),
            ),
            Positioned(
              top: 25.h,
              left: 60.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
                width: 58.h,
                height: 32.h,
              ),
            ),
            Positioned(
              top: 3.h,
              left: 92.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
                width: 54.h,
                height: 30.h,
              ),
            ),
            Positioned(
              top: 18.h,
              left: -10.h,
              child: CustomImageView(
                imagePath: ImageConstant
                    .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
                width: 55.h,
                height: 31.h,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildRewardMessage() {
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
            text: ' Earn +2 Golden Egg ticket',
            style: TextStyleHelper.instance.textStyle16
                .copyWith(color: appTheme.colorFFFFC6),
          ),
        ],
      ),
    );
  }

  Widget _buildGotItButton() {
    return GestureDetector(
      onTap: () => controller.onGotItPressed(),
      child: Container(
        width: double.infinity,
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
    );
  }
}
