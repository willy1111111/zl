import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_banner_image_row.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_currency_display.dart';
import '../../../../widgets/custom_game_card.dart';
import '../../../../widgets/custom_image_view.dart';
import '../../../../widgets/custom_promo_app_bar.dart';
import '../../../../widgets/custom_sidebar.dart';
import './controller/ticket_event_progress_controller.dart';
import './widgets/task_item_widget.dart';

class TicketEventProgressScreen extends StatelessWidget {
  TicketEventProgressScreen({Key? key}) : super(key: key);

  final TicketEventProgressController controller =
      Get.put(TicketEventProgressController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: Stack(
        children: [
          // Main Background Content
          _buildMainContent(),

          // Modal Overlay
          Obx(() {
            return controller.isModalVisible.value
                ? _buildTicketEventModal()
                : SizedBox.shrink();
          }),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return SingleChildScrollView(
      child: Column(
        children: [
          // App Bar
          CustomPromoAppBar(
            headerText: 'MANY BENEFITS FOR NEWCOMERS',
            downloadButtonText: 'Download',
            onClosePressed: () => controller.closePromoBar(),
            onDownloadPressed: () => controller.onDownloadPressed(),
          ),

          SizedBox(height: 8.h),

          // Logo and Balance Section
          _buildLogoAndBalanceSection(),

          SizedBox(height: 5.h),

          // Action Buttons
          _buildActionButtons(),

          SizedBox(height: 14.h),

          // Mask Group Image
          _buildMaskGroupSection(),

          SizedBox(height: 17.h),

          // Notification Bar
          _buildNotificationBar(),

          SizedBox(height: 16.h),

          // Special Game Icons
          _buildSpecialGameIcons(),

          SizedBox(height: 16.h),

          // Main Game Grid with Sidebar
          _buildGameGridWithSidebar(),

          SizedBox(height: 100.h), // Bottom spacing for navigation
        ],
      ),
    );
  }

  Widget _buildLogoAndBalanceSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogowj931,
            width: 78.h,
            height: 28.h,
          ),
          CustomCurrencyDisplay(
            amount: '₱1980.00',
            onActionTap: () => controller.onRefreshBalance(),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: 'Withdrawal',
              variant: CustomButtonVariant.orange,
              leftIcon: ImageConstant.imgVectorWhiteA700,
              height: 36.h,
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
              onPressed: () => controller.onDepositPressed(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMaskGroupSection() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: CustomImageView(
        imagePath: ImageConstant.imgMaskGroup,
        width: 345.h,
        height: 130.h,
      ),
    );
  }

  Widget _buildNotificationBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.h),
      child: Container(
        width: 345.h,
        height: 34.h,
        decoration: BoxDecoration(
          color: appTheme.colorFF2528,
          borderRadius: BorderRadius.circular(17.h),
        ),
        child: Row(
          children: [
            SizedBox(width: 6.h),
            CustomImageView(
              imagePath: ImageConstant
                  .img3b4bde395738f0c8b07d1baa47c5d48f172c19aa158772swckar1,
              width: 24.h,
              height: 19.h,
            ),
            SizedBox(width: 8.h),
            Expanded(
              child: Text(
                '🔥The recharge of th🔥',
                style: TextStyleHelper.instance.body14Bold
                    .copyWith(color: appTheme.colorFF85D4),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.img1,
              width: 16.h,
              height: 16.h,
            ),
            SizedBox(width: 17.h),
            Text(
              'The recharge',
              style: TextStyleHelper.instance.body14Bold
                  .copyWith(color: appTheme.colorFF85D4),
            ),
            SizedBox(width: 6.h),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecialGameIcons() {
    return Padding(
      padding: EdgeInsets.only(left: 72.h),
      child: CustomBannerImageRow(
        imagePaths: [
          ImageConstant.img,
          ImageConstant.img56x94,
          ImageConstant.imgVip,
        ],
      ),
    );
  }

  Widget _buildGameGridWithSidebar() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Sidebar
        _buildSidebar(),

        SizedBox(width: 11.h),

        // Game Grid
        Expanded(
          child: _buildGameGrid(),
        ),

        // Right Side Notifications
        _buildRightNotifications(),
      ],
    );
  }

  Widget _buildSidebar() {
    return Obx(
      () => CustomSidebar(
        sidebarItems: controller.sidebarItems,
        selectedIndex: controller.selectedSidebarIndex.value,
        onItemTap: (index, item) => controller.onSidebarItemTap(index, item),
      ),
    );
  }

  Widget _buildGameGrid() {
    return Container(
      padding: EdgeInsets.only(right: 15.h),
      child: GridView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 9.h,
          crossAxisSpacing: 9.h,
          childAspectRatio: 0.75,
        ),
        itemCount: controller.gameItems.length,
        itemBuilder: (context, index) {
          final gameItem = controller.gameItems[index];
          return CustomGameCard(
            gameImagePath: gameItem.gameImagePath?.value ?? '',
            title: gameItem.title?.value ?? '',
            overlayImagePath: gameItem.overlayImagePath?.value,
            showNotificationDot: gameItem.showNotificationDot?.value ?? false,
            onTap: () => controller.onGameCardTap(index),
          );
        },
      ),
    );
  }

  Widget _buildRightNotifications() {
    return Padding(
      padding: EdgeInsets.only(right: 16.h),
      child: Column(
        children: [
          SizedBox(height: 193.h),
          CustomImageView(
            imagePath: ImageConstant.imgGroup11853,
            width: 50.h,
            height: 50.h,
          ),
          SizedBox(height: 150.h),
          Stack(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgGroup827,
                width: 50.h,
                height: 50.h,
              ),
              Positioned(
                top: 2.h,
                left: 2.h,
                child: Text(
                  '99',
                  style: TextStyleHelper.instance.body12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTicketEventModal() {
    return Container(
      color: appTheme.blackCustom.withAlpha(153),
      child: Center(
        child: Container(
          width: 375.h,
          height: MediaQuery.of(Get.context!).size.height,
          child: Stack(
            children: [
              // Background Image
              Positioned(
                top: 9.h,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.img1403x375,
                  width: 375.h,
                  height: 403.h,
                  fit: BoxFit.cover,
                ),
              ),

              // Close Button
              Positioned(
                top: 21.h,
                right: 26.h,
                child: GestureDetector(
                  onTap: () => controller.closeModal(),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup,
                    width: 32.h,
                    height: 32.h,
                  ),
                ),
              ),

              // Event Title Background
              Positioned(
                top: 15.h,
                left: 124.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage360,
                  width: 136.h,
                  height: 78.h,
                ),
              ),

              // Ribbon Image
              Positioned(
                top: 63.h,
                left: 35.h,
                child: CustomImageView(
                  imagePath: ImageConstant.imgImage23,
                  width: 306.h,
                  height: 70.h,
                ),
              ),

              // Event Title Text
              Positioned(
                top: 67.h,
                left: 109.h,
                child: Text(
                  'TICKET EVENT',
                  style: TextStyleHelper.instance.headline26
                      .copyWith(height: 1.15),
                ),
              ),

              // Task Description
              Positioned(
                top: 134.h,
                left: 41.h,
                child: SizedBox(
                  width: 295.h,
                  child: Text(
                    'Complete the task to claim your ticket',
                    style: TextStyleHelper.instance.body14Black
                        .copyWith(height: 1.43),
                  ),
                ),
              ),

              // Progress Bar
              Positioned(
                top: 161.h,
                left: 49.h,
                child: _buildMainProgressBar(),
              ),

              // Task List
              Positioned(
                top: 192.h,
                left: 20.h,
                child: _buildTaskList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMainProgressBar() {
    return Row(
      children: [
        Container(
          width: 280.h,
          height: 12.h,
          decoration: BoxDecoration(
            color: appTheme.color999FB0,
            borderRadius: BorderRadius.circular(6.h),
          ),
          child: Stack(
            children: [
              Container(
                width: 35.h,
                height: 12.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFFFFF80E), Color(0xFFFF7A00)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                  borderRadius: BorderRadius.circular(6.h),
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 12.h),
        Text(
          '10.00%',
          style: TextStyleHelper.instance.body12Bold
              .copyWith(color: appTheme.whiteCustom),
        ),
      ],
    );
  }

  Widget _buildTaskList() {
    return SizedBox(
      width: 335.h,
      child: Column(
        children: List.generate(
          controller.taskItems.length,
          (index) => Padding(
            padding: EdgeInsets.only(bottom: 5.h),
            child: TaskItemWidget(
              taskItem: controller.taskItems[index],
              onButtonPressed: () => controller.onTaskButtonPressed(index),
            ),
          ),
        ),
      ),
    );
  }
}
