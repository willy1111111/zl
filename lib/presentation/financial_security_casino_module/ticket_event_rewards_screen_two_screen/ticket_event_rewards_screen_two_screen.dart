import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_completion_message.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_ticket_bonus_card.dart';
import './controller/ticket_event_rewards_screen_two_controller.dart';
import './widgets/task_item_widget.dart';

class TicketEventRewardsScreenTwo
    extends GetWidget<TicketEventRewardsScreenTwoController> {
  const TicketEventRewardsScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          _buildMainContent(),
          Obx(() => controller.showModal.value
              ? _buildCongratulationsModal()
              : SizedBox.shrink()),
        ],
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
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          _buildProfileSection(),
          _buildInfoBanner(),
          _buildTabNavigation(),
          _buildTasksList(),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }

  Widget _buildProfileSection() {
    return CustomTicketBonusCard(
      userId: '939038393',
      bonusAmount: '₱ 123456789.00',
      marginTop: 6.h,
      marginBottom: 16.h,
    );
  }

  Widget _buildInfoBanner() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      padding: EdgeInsets.symmetric(horizontal: 10.h, vertical: 3.h),
      decoration: BoxDecoration(
        color: appTheme.colorFF2528,
        borderRadius: BorderRadius.circular(11.h),
      ),
      child: Text(
        'Completing tasks below earns ticket',
        style: TextStyleHelper.instance.body12Bold2,
      ),
    );
  }

  Widget _buildTabNavigation() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h, vertical: 16.h),
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
                Expanded(
                  child: GestureDetector(
                    onTap: () => controller.selectTab(0),
                    child: Container(
                      height: 38.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.h),
                      ),
                      child: Center(
                        child: Obx(() => Text(
                              'Earn Ticket',
                              style: TextStyleHelper.instance.title16Bold
                                  .copyWith(
                                      color:
                                          controller.selectedTabIndex.value == 0
                                              ? Color(0xFF1E2024)
                                              : appTheme.whiteCustom),
                            )),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => controller.selectTab(1),
                    child: Container(
                      height: 38.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.h),
                      ),
                      child: Center(
                        child: Obx(() => Text(
                              'My Ticket',
                              style: TextStyleHelper.instance.title16Bold
                                  .copyWith(
                                      color:
                                          controller.selectedTabIndex.value == 1
                                              ? Color(0xFF1E2024)
                                              : appTheme.whiteCustom),
                            )),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Obx(() => AnimatedPositioned(
                duration: Duration(milliseconds: 300),
                left: controller.selectedTabIndex.value == 0 ? 0 : 172.h,
                top: 0,
                child: Container(
                  width: 172.h,
                  height: 38.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF85D4,
                    borderRadius: BorderRadius.circular(16.h),
                  ),
                ),
              )),
          Positioned(
            top: -2.h,
            right: -2.h,
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
                  style: TextStyleHelper.instance.body14Bold2,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTasksList() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(() => ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: controller.taskItems.length,
            itemBuilder: (context, index) {
              return TaskItemWidget(
                taskModel: controller.taskItems[index],
              );
            },
          )),
    );
  }

  Widget _buildCongratulationsModal() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: appTheme.blackCustom.withAlpha(128),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: CustomImageView(
              imagePath: ImageConstant.img2,
              width: 375.h,
              height: 403.h,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
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
              height: 313.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(12.h),
              ),
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  SizedBox(height: 4.h),
                  Text(
                    'Congratulations!',
                    style: TextStyleHelper.instance.title18Bold,
                  ),
                  SizedBox(height: 24.h),
                  _buildLuckyWheelContainer(),
                  SizedBox(height: 24.h),
                  CustomCompletionMessage(
                    rewardText: '+1 Lucky wheel ticket',
                    alignment: TextAlign.center,
                  ),
                  SizedBox(height: 24.h),
                  GestureDetector(
                    onTap: () => controller.closeModal(),
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
                          style: TextStyleHelper.instance.title16Bold
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

  Widget _buildLuckyWheelContainer() {
    return Container(
      height: 149.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 16.h,
            child: Container(
              width: 118.h,
              height: 91.h,
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
          ),
          CustomImageView(
            imagePath: ImageConstant
                .img06728263ef34542eeb5f4df0d35ba2d62c75d4d9add9cnkb7zs4,
            width: 147.h,
            height: 149.h,
          ),
          Positioned(
            top: 24.h,
            child: Container(
              width: 110.h,
              height: 70.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x76161000), Color(0xFFFF3F45)],
                ),
                borderRadius: BorderRadius.circular(10.h),
                border: Border.all(
                  width: 2.h,
                  color: appTheme.colorFFFFFF,
                ),
              ),
              child: Center(
                child: Text(
                  'luck wheel',
                  style: TextStyleHelper.instance.title16Bold
                      .copyWith(color: appTheme.whiteCustom),
                ),
              ),
            ),
          ),
          Positioned(
            top: 8.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgLunpp1,
              width: 54.h,
              height: 55.h,
            ),
          ),
          Positioned(
            top: 0,
            right: 32.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
              width: 58.h,
              height: 32.h,
            ),
          ),
          Positioned(
            top: 16.h,
            right: 8.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
              width: 54.h,
              height: 30.h,
            ),
          ),
          Positioned(
            bottom: 16.h,
            left: 8.h,
            child: CustomImageView(
              imagePath: ImageConstant
                  .imgB004fb626b5f18af2ca758019021608038ed6f301879eorlkphfw12002,
              width: 55.h,
              height: 31.h,
            ),
          ),
        ],
      ),
    );
  }
}
