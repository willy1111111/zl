import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_image_view.dart';
import './controller/gaming_bonus_dashboard_controller.dart';
import './widgets/celebration_section_widget.dart';
import './widgets/deposit_bonus_card_widget.dart';
import './widgets/invite_bonus_card_widget.dart';
import './widgets/notices_dialog_widget.dart';

class GamingBonusDashboardScreen
    extends GetWidget<GamingBonusDashboardController> {
  GamingBonusDashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            // Main Content
            SingleChildScrollView(
              child: Column(
                children: [
                  // App Bar
                  CustomAppBar(
                    title: 'Bonus',
                    balance: '₱1980.00',
                    showBalance: true,
                    onBackPressed: () => Get.back(),
                    onBalancePressed: () => controller.onBalancePressed(),
                  ),

                  // Background Images
                  _buildBackgroundImages(),

                  // Celebration Section
                  CelebrationSectionWidget(),

                  // Bonus Cards List
                  _buildBonusCardsList(),
                ],
              ),
            ),

            // Notices Dialog
            Obx(() => controller.isNoticesDialogVisible.value
                ? NoticesDialogWidget()
                : SizedBox.shrink()),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundImages() {
    return Container(
      height: 348.h,
      width: double.infinity,
      child: Stack(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgGroup724,
            height: 193.h,
            width: 375.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 85.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgImage69,
            height: 348.h,
            width: 375.h,
            alignment: Alignment.topLeft,
          ),
          CustomImageView(
            imagePath: ImageConstant.img1183x375,
            height: 183.h,
            width: 375.h,
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 58.h),
          ),
        ],
      ),
    );
  }

  Widget _buildBonusCardsList() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          SizedBox(height: 32.h),

          // Invite Bonus Card
          Obx(() => InviteBonusCardWidget(
                inviteBonusModel: controller.inviteBonusModel.value,
              )),

          SizedBox(height: 16.h),

          // Deposit Bonus Card
          Obx(() => DepositBonusCardWidget(
                depositBonusModel: controller.depositBonusModel.value,
              )),

          SizedBox(height: 50.h),
        ],
      ),
    );
  }
}
