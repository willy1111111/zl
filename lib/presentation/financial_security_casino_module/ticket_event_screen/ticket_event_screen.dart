import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_app_bar.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_ticket_bonus_card.dart';
import './controller/ticket_event_controller.dart';
import './widgets/task_item_widget.dart';

class TicketEventScreen extends GetWidget<TicketEventController> {
  const TicketEventScreen({Key? key}) : super(key: key);

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            // User Profile Section
            Padding(
              padding: EdgeInsets.all(16.h),
              child: Column(
                children: [
                  CustomTicketBonusCard(
                    userId: '939038393',
                    bonusAmount: '₱ 123456789.00',
                    profileImagePath: ImageConstant.img87131,
                    decorationImagePath: ImageConstant.img10161,
                    marginBottom: 16.h,
                  ),

                  // Completing Tasks Info
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF2528,
                      borderRadius: BorderRadius.circular(11.h),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
                    child: Text(
                      'Completing tasks below earns ticket',
                      style: TextStyleHelper.instance.body12Bold2
                          .copyWith(height: 1.17),
                    ),
                  ),
                ],
              ),
            ),

            // Tab Navigation
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Container(
                decoration: BoxDecoration(
                  color: appTheme.colorFF2B32,
                  borderRadius: BorderRadius.circular(16.h),
                ),
                child: Row(
                  children: [
                    Obx(() => GestureDetector(
                          onTap: () => controller.selectTab(0),
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
                                style: TextStyleHelper.instance.title16Bold
                                    .copyWith(
                                        color:
                                            controller.selectedTabIndex.value ==
                                                    0
                                                ? Color(0xFF1E2024)
                                                : appTheme.whiteCustom,
                                        height: 1.19),
                              ),
                            ),
                          ),
                        )),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => controller.selectTab(1),
                        child: Container(
                          height: 38.h,
                          child: Stack(
                            children: [
                              Center(
                                child: Text(
                                  'My Ticket',
                                  style: TextStyleHelper.instance.title16Bold
                                      .copyWith(
                                          color: controller
                                                      .selectedTabIndex.value ==
                                                  1
                                              ? Color(0xFF1E2024)
                                              : appTheme.whiteCustom,
                                          height: 1.19),
                                ),
                              ),
                              Positioned(
                                top: -8.h,
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
                                      style: TextStyleHelper
                                          .instance.body14Bold2
                                          .copyWith(height: 1.21),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 24.h),

            // Task List
            Obx(() => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: controller.tasks.length,
                    separatorBuilder: (context, index) =>
                        SizedBox(height: 16.h),
                    itemBuilder: (context, index) {
                      return TaskItemWidget(
                        task: controller.tasks[index],
                        onButtonPressed: () => controller
                            .handleTaskAction(controller.tasks[index]),
                      );
                    },
                  ),
                )),

            SizedBox(height: 24.h),
          ],
        ),
      ),
    );
  }
}
