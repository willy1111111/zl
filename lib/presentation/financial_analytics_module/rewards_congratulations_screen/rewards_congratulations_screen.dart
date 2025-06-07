import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/rewards_congratulations_controller.dart';
import './widgets/congratulations_overlay_widget.dart';
import './widgets/profile_card_widget.dart';
import './widgets/promotional_item_widget.dart';
import './widgets/settings_item_widget.dart';
import './widgets/teams_record_widget.dart';

class RewardsCongratulationsScreen extends StatelessWidget {
  RewardsCongratulationsScreen({Key? key}) : super(key: key);

  // Initialize the controller using Get.put()
  final RewardsCongratulationsController controller =
      Get.put(RewardsCongratulationsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Obx(() {
        return Stack(
          children: [
            // Main content
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Background and status bar
                  _buildBackgroundSection(),

                  // Main content
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Profile card
                        SizedBox(height: 45.h),
                        ProfileCardWidget(
                          userName:
                              controller.rewardsModel.value?.userName?.value ??
                                  'User name',
                          userId:
                              controller.rewardsModel.value?.userId?.value ??
                                  '98955464616',
                          balance:
                              controller.rewardsModel.value?.balance?.value ??
                                  '1324.00',
                          vipLevel:
                              controller.rewardsModel.value?.vipLevel?.value ??
                                  'VIP 4',
                        ),

                        SizedBox(height: 19.h),

                        // Teams center title
                        Text(
                          'Teams center',
                          style: TextStyleHelper.instance.title16Bold
                              .copyWith(height: 1.12),
                        ),

                        SizedBox(height: 12.h),

                        // Teams center records
                        TeamsRecordWidget(),

                        SizedBox(height: 10.h),

                        // Promotional section
                        Container(
                          width: 345.h,
                          padding: EdgeInsets.all(9.h),
                          decoration: BoxDecoration(
                            color: appTheme.colorFF2528,
                            borderRadius: BorderRadius.circular(8.h),
                          ),
                          child: Column(
                            children: [
                              ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controller.promotionalItems.length,
                                separatorBuilder: (context, index) => Container(
                                  height: 1.h,
                                  color: appTheme.colorFF292F,
                                  margin: EdgeInsets.symmetric(vertical: 10.h),
                                ),
                                itemBuilder: (context, index) {
                                  return PromotionalItemWidget(
                                    item: controller.promotionalItems[index],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 10.h),

                        // Settings section
                        Container(
                          width: 345.h,
                          padding: EdgeInsets.all(15.h),
                          decoration: BoxDecoration(
                            color: appTheme.colorFF2528,
                            borderRadius: BorderRadius.circular(8.h),
                          ),
                          child: Column(
                            children: [
                              ListView.separated(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controller.settingsItems.length,
                                separatorBuilder: (context, index) => Container(
                                  height: 1.h,
                                  color: appTheme.colorFF282F,
                                  margin: EdgeInsets.symmetric(vertical: 17.h),
                                ),
                                itemBuilder: (context, index) {
                                  return SettingsItemWidget(
                                    item: controller.settingsItems[index],
                                  );
                                },
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                            height: 100.h), // Bottom padding for navigation
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Congratulations overlay
            if (controller.showCongratulationsOverlay.value)
              CongratulationsOverlayWidget(
                amount: controller.congratulationsAmount.value,
                onConfirm: () => controller.hideCongratulationsOverlay(),
              ),
          ],
        );
      }),
    );
  }

  Widget _buildBackgroundSection() {
    return Stack(
      children: [
        // Background vector
        CustomImageView(
          imagePath: ImageConstant.imgGroup724,
          height: 193.h,
          width: 375.h,
          fit: BoxFit.cover,
        ),

        // Status bar vector
        Positioned(
          top: 7.h,
          left: 10.h,
          child: CustomImageView(
            imagePath: ImageConstant.img1Black900,
            height: 13.h,
            width: 356.h,
          ),
        ),
      ],
    );
  }
}
