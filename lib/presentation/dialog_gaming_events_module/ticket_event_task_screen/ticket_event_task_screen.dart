import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_banner_image_row.dart';
import '../../../../widgets/custom_bottom_navigation_bar.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_game_card.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_promo_app_bar.dart';
import '../../../../widgets/custom_sidebar.dart';
import './controller/ticket_event_task_controller.dart';
import './widgets/task_item_widget.dart';

class TicketEventTaskScreen extends StatelessWidget {
  TicketEventTaskScreen({Key? key}) : super(key: key);

  final TicketEventTaskController controller =
      Get.put(TicketEventTaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Main Content
          SingleChildScrollView(
            child: Column(
              children: [
                // Custom Promo App Bar
                CustomPromoAppBar(
                  onDownloadPressed: () => controller.onDownloadPressed(),
                  onClosePressed: () => controller.onClosePressed(),
                ),

                // Logo and Balance Section
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 15.h,
                    right: 15.h,
                    top: 8.h,
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLogowj931,
                        height: 28.h,
                        width: 78.h,
                      ),
                      Spacer(),
                      CustomCurrencyDisplay(
                        amount: '₱1980.00',
                        onActionTap: () => controller.onRefreshBalance(),
                      ),
                    ],
                  ),
                ),

                // Action Buttons
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    left: 15.h,
                    right: 15.h,
                    top: 5.h,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Withdrawal',
                          variant: CustomButtonVariant.orange,
                          leftIcon: ImageConstant.imgVectorWhiteA700,
                          height: 36.h,
                          borderRadius: 2.h,
                          onPressed: () => controller.onWithdrawalPressed(),
                        ),
                      ),
                      SizedBox(width: 5.h),
                      Expanded(
                        child: CustomButton(
                          text: 'Deposit',
                          variant: CustomButtonVariant.orange,
                          leftIcon: ImageConstant.imgVectorWhiteA70011x16,
                          height: 36.h,
                          borderRadius: 2.h,
                          onPressed: () => controller.onDepositPressed(),
                        ),
                      ),
                    ],
                  ),
                ),

                // Promotional Banner
                Container(
                  margin: EdgeInsets.only(
                    left: 15.h,
                    right: 15.h,
                    top: 8.h,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgMaskGroup,
                    height: 130.h,
                    width: 345.h,
                  ),
                ),

                // Notification Banner
                Container(
                  margin: EdgeInsets.only(
                    left: 15.h,
                    right: 15.h,
                    top: 17.h,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 6.h,
                    vertical: 8.h,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2528,
                    borderRadius: BorderRadius.circular(17.h),
                  ),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant
                            .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
                        height: 19.h,
                        width: 24.h,
                      ),
                      SizedBox(width: 8.h),
                      Expanded(
                        child: Text(
                          '🔥The recharge of the🔥',
                          style: TextStyleHelper.instance.body14BoldArial2,
                        ),
                      ),
                      Text(
                        'The recharge',
                        style: TextStyleHelper.instance.body14BoldArial2,
                      ),
                      SizedBox(width: 8.h),
                      CustomImageView(
                        imagePath: ImageConstant.img1,
                        height: 16.h,
                        width: 16.h,
                      ),
                    ],
                  ),
                ),

                // Main Content with Sidebar and Games
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 16.h),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Custom Sidebar
                      Obx(
                        () => CustomSidebar(
                          sidebarItems: controller.sidebarItems,
                          selectedIndex: controller.selectedSidebarIndex.value,
                          onItemTap: (index, item) =>
                              controller.onSidebarItemTap(index, item),
                        ),
                      ),

                      // Right Content
                      Expanded(
                        child: Column(
                          children: [
                            // VIP Banners
                            Container(
                              margin: EdgeInsets.only(left: 6.h),
                              child: CustomBannerImageRow(
                                imagePaths: [
                                  ImageConstant.img,
                                  ImageConstant.img56x94,
                                  ImageConstant.imgVip,
                                ],
                              ),
                            ),

                            // Games Grid
                            Container(
                              margin: EdgeInsets.only(
                                left: 6.h,
                                top: 10.h,
                              ),
                              child: Obx(() => GridView.builder(
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    padding: EdgeInsets.zero,
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      crossAxisSpacing: 9.h,
                                      mainAxisSpacing: 9.h,
                                      childAspectRatio: 0.75,
                                    ),
                                    itemCount: controller.gameItems.length,
                                    itemBuilder: (context, index) {
                                      return CustomGameCard(
                                        gameImagePath: controller
                                                .gameItems[index]
                                                .gameImagePath
                                                ?.value ??
                                            '',
                                        title: controller.gameItems[index].title
                                                ?.value ??
                                            '',
                                        overlayImagePath: controller
                                            .gameItems[index]
                                            .overlayImagePath
                                            ?.value,
                                        showNotificationDot: controller
                                                .gameItems[index]
                                                .showNotificationDot
                                                ?.value ??
                                            false,
                                        onTap: () =>
                                            controller.onGameTap(index),
                                      );
                                    },
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 150.h),
              ],
            ),
          ),

          // Floating Action Button
          Positioned(
            left: 160.h,
            bottom: 134.h,
            child: GestureDetector(
              onTap: () => controller.onFabPressed(),
              child: Container(
                width: 56.h,
                height: 56.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF242A,
                  borderRadius: BorderRadius.circular(28.h),
                ),
                child: Center(
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup13043,
                    height: 49.h,
                    width: 53.h,
                  ),
                ),
              ),
            ),
          ),

          // Custom Bottom Navigation Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Obx(
              () => CustomBottomNavigationBar(
                items: controller.bottomNavItems,
                selectedIndex: controller.selectedBottomIndex.value,
                onTap: (index) => controller.onBottomNavTap(index),
              ),
            ),
          ),

          // Ticket Event Dialog Overlay
          Obx(() {
            if (controller.showTicketDialog.value) {
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: appTheme.color660000,
                child: Center(
                  child: Container(
                    width: 375.h,
                    height: 812.h,
                    child: Stack(
                      children: [
                        // Background Image
                        Positioned(
                          top: 9.h,
                          left: 0,
                          child: CustomImageView(
                            imagePath: ImageConstant.img1403x375,
                            height: 403.h,
                            width: 375.h,
                          ),
                        ),

                        // Close Button
                        Positioned(
                          top: 21.h,
                          right: 26.h,
                          child: GestureDetector(
                            onTap: () => controller.onCloseDialog(),
                            child: Container(
                              width: 32.h,
                              height: 32.h,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgGroup,
                                height: 32.h,
                                width: 32.h,
                              ),
                            ),
                          ),
                        ),

                        // Event Images
                        Positioned(
                          left: 124.h,
                          top: 15.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgImage360,
                            height: 78.h,
                            width: 136.h,
                          ),
                        ),

                        Positioned(
                          left: 35.h,
                          top: 63.h,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgImage23,
                            height: 70.h,
                            width: 306.h,
                          ),
                        ),

                        // Event Title
                        Positioned(
                          left: 109.h,
                          top: 67.h,
                          child: Container(
                            child: Stack(
                              children: [
                                Text(
                                  'TICKET EVENT',
                                  style: TextStyleHelper
                                      .instance.headline26RegularLilitaOne
                                      .copyWith(height: 1.15),
                                ),
                                ShaderMask(
                                  shaderCallback: (bounds) => LinearGradient(
                                    colors: [
                                      Color(0xFFFFFBDB),
                                      Color(0xFFFFC82F)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ).createShader(bounds),
                                  child: Text(
                                    'TICKET EVENT',
                                    style: TextStyleHelper
                                        .instance.headline26RegularLilitaOne
                                        .copyWith(
                                            color: appTheme.whiteCustom,
                                            height: 1.15),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        // Event Description
                        Positioned(
                          left: 41.h,
                          top: 134.h,
                          child: Container(
                            width: 295.h,
                            child: Text(
                              'Complete the task to claim your ticket',
                              style: TextStyleHelper.instance.body14BlackArial
                                  .copyWith(height: 1.43),
                            ),
                          ),
                        ),

                        // Progress Bar
                        Positioned(
                          left: 49.h,
                          top: 161.h,
                          child: Container(
                            width: 280.h,
                            height: 12.h,
                            decoration: BoxDecoration(
                              color: appTheme.color999FB0,
                              borderRadius: BorderRadius.circular(6.h),
                            ),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 35.h,
                                height: 12.h,
                                decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: [
                                      Color(0xFFFFF80E),
                                      Color(0xFFFF7A00)
                                    ],
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                  ),
                                  borderRadius: BorderRadius.circular(6.h),
                                ),
                              ),
                            ),
                          ),
                        ),

                        // Progress Percentage
                        Positioned(
                          right: 49.h,
                          top: 158.h,
                          child: Text(
                            '10.00%',
                            style: TextStyleHelper.instance.body12BoldArial2,
                          ),
                        ),

                        // Task List
                        Positioned(
                          left: 20.h,
                          top: 192.h,
                          child: Container(
                            width: 335.h,
                            child: Obx(() => ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: controller.taskItems.length,
                                  separatorBuilder: (context, index) =>
                                      SizedBox(height: 5.h),
                                  itemBuilder: (context, index) {
                                    return TaskItemWidget(
                                      taskItem: controller.taskItems[index],
                                      onButtonPressed: () =>
                                          controller.onTaskButtonPressed(index),
                                    );
                                  },
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }
            return SizedBox.shrink();
          }),
        ],
      ),
    );
  }
}
