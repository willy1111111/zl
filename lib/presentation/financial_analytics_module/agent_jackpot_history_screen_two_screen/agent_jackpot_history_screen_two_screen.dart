import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_jackpot_card.dart';
import './controller/agent_jackpot_history_screen_two_controller.dart';
import './widgets/jackpot_history_item_widget.dart';

class AgentJackpotHistoryScreenTwo
    extends GetWidget<AgentJackpotHistoryScreenTwoController> {
  AgentJackpotHistoryScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF2529,
      body: Stack(
        children: [
          // Background Image
          CustomImageView(
            imagePath: ImageConstant.imgImage1063,
            height: 964.h,
            width: 375.h,
            fit: BoxFit.cover,
          ),

          // Main Content Frame
          Positioned(
            top: 7.h,
            left: 0,
            child: Container(
              width: 375.h,
              height: 925.h,
              color: appTheme.blackCustom,
            ),
          ),

          // History Modal Bottom Sheet
          Positioned(
            top: 166.h,
            left: 2.h,
            child: Container(
              width: 371.h,
              height: 639.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF292F,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.h),
                  topRight: Radius.circular(22.h),
                ),
              ),
              child: Stack(
                children: [
                  // Close Button
                  Positioned(
                    top: 12.h,
                    right: 7.h,
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup2131329954,
                        width: 28.h,
                        height: 28.h,
                      ),
                    ),
                  ),

                  // History Title
                  Positioned(
                    top: 16.h,
                    left: 160.h,
                    child: Text(
                      'History',
                      style: TextStyleHelper.instance.title16BoldArial,
                    ),
                  ),

                  // White Line Separator
                  Positioned(
                    top: 48.h,
                    left: -2.h,
                    child: Container(
                      width: 375.h,
                      height: 1.h,
                      color: appTheme.whiteCustom,
                    ),
                  ),

                  // Agent Jackpot Card
                  Positioned(
                    top: 60.h,
                    left: 15.h,
                    child: CustomJackpotCard(
                      title: 'AGENT JACKPOT',
                      amount: '₱15,666,523.70',
                      titleColor: appTheme.colorFFFFC8,
                      leftIconPath: ImageConstant.imgGrasscpirlbv1,
                      rightIconPath: ImageConstant.imgGrasscpirlbv2,
                      decorativeImagePath: ImageConstant.imgEllipse624,
                      backgroundColor: appTheme.colorFF2528,
                      borderRadius: 10.h,
                      width: 345.h,
                      height: 79.h,
                    ),
                  ),

                  // Date Range
                  Positioned(
                    top: 147.h,
                    left: 15.h,
                    child: Text(
                      'Date:2024.03.09-2024.03.116',
                      style: TextStyleHelper.instance.body12Arial
                          .copyWith(color: appTheme.whiteCustom),
                    ),
                  ),

                  // History Table
                  Positioned(
                    top: 175.h,
                    left: 15.h,
                    child: Container(
                      width: 345.h,
                      height: 440.h,
                      decoration: BoxDecoration(
                        color: appTheme.colorFF2528,
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      child: Stack(
                        children: [
                          // Background Ellipse
                          Positioned(
                            top: 64.h,
                            left: 257.h,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEllipse626,
                              width: 88.h,
                              height: 303.h,
                            ),
                          ),

                          // Table Headers
                          _buildTableHeaders(),

                          // Table Rows
                          Positioned(
                            top: 40.h,
                            left: 0,
                            child: Container(
                              width: 345.h,
                              height: 400.h,
                              child: Obx(() => ListView.builder(
                                    padding: EdgeInsets.zero,
                                    itemCount: controller.historyItems.length,
                                    itemBuilder: (context, index) {
                                      return JackpotHistoryItemWidget(
                                        historyItem:
                                            controller.historyItems[index],
                                        index: index,
                                      );
                                    },
                                  )),
                            ),
                          ),
                        ],
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

  Widget _buildTableHeaders() {
    return Stack(
      children: [
        // # Header
        Positioned(
          top: 17.h,
          left: 21.h,
          child: Text(
            '#',
            style: TextStyleHelper.instance.body12Arial,
          ),
        ),

        // User Header
        Positioned(
          top: 17.h,
          left: 68.h,
          child: Text(
            'user',
            style: TextStyleHelper.instance.body12Arial,
          ),
        ),

        // Direct Invite Quantity Header
        Positioned(
          top: 9.h,
          left: 154.h,
          child: Text(
            'Direct Invite\nQuantity',
            style: TextStyleHelper.instance.body12Arial,
          ),
        ),

        // Prize Header
        Positioned(
          top: 17.h,
          left: 285.h,
          child: Text(
            'prize',
            style: TextStyleHelper.instance.body12Arial,
          ),
        ),
      ],
    );
  }
}
