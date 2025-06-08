import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_view.dart';
import '../../widgets/custom_input_field.dart';
import './controller/teams_center_dashboard_controller.dart';
import './widgets/feature_menu_item_widget.dart';
import './widgets/menu_item_widget.dart';
import './widgets/record_item_widget.dart';

class TeamsCenterDashboardScreen extends StatelessWidget {
  TeamsCenterDashboardScreen({Key? key}) : super(key: key);

  final TeamsCenterDashboardController controller =
      Get.put(TeamsCenterDashboardController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF1E20,
      body: SingleChildScrollView(
        child: SizedBox(
          width: 375.h,
          height: 812.h,
          child: Stack(
            children: [
              // Status Bar Background
              Positioned(
                top: 0,
                left: 0,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGroup724,
                  width: 375.h,
                  height: 193.h,
                  fit: BoxFit.cover,
                ),
              ),

              // Status Bar
              Positioned(
                top: 7.h,
                left: 10.h,
                child: CustomImageView(
                  imagePath: ImageConstant.img1,
                  width: 356.h,
                  height: 13.h,
                ),
              ),

              // Main Balance Card
              Positioned(
                top: 45.h,
                left: 15.h,
                child: Container(
                  width: 345.h,
                  height: 192.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(8.h),
                    border: Border.all(color: appTheme.colorFF85D4),
                  ),
                  child: Stack(
                    children: [
                      // Background Images
                      CustomImageView(
                        imagePath: ImageConstant.img22,
                        width: 294.h,
                        height: 163.h,
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        top: 60.h,
                        left: 1.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgRectangle412,
                          width: 343.h,
                          height: 131.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 60.h,
                        left: 1.h,
                        child: CustomImageView(
                          imagePath: ImageConstant.imgMaskGroup,
                          width: 343.h,
                          height: 131.h,
                          fit: BoxFit.cover,
                        ),
                      ),

                      // Card Content
                      Padding(
                        padding: EdgeInsets.all(6.h),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // User Info Section
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgGroup466,
                                      width: 40.h,
                                      height: 40.h,
                                    ),
                                    SizedBox(width: 12.h),
                                    Obx(() => Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              controller
                                                      .teamsCenterDashboardModel
                                                      .value
                                                      ?.userName
                                                      ?.value ??
                                                  'User name',
                                              style: TextStyleHelper
                                                  .instance.body14Bold
                                                  .copyWith(
                                                      color:
                                                          appTheme.colorFFE6E6),
                                            ),
                                            Text(
                                              controller
                                                      .teamsCenterDashboardModel
                                                      .value
                                                      ?.userNumber
                                                      ?.value ??
                                                  '98955464616',
                                              style: TextStyleHelper
                                                  .instance.body14Black,
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.img1BlueGray100,
                                  width: 10.h,
                                  height: 10.h,
                                ),
                              ],
                            ),

                            SizedBox(height: 32.h),

                            // Balance Section
                            Obx(() => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Balance',
                                      style:
                                          TextStyleHelper.instance.body14Bold,
                                    ),
                                    SizedBox(height: 4.h),
                                    Text(
                                      controller.teamsCenterDashboardModel.value
                                              ?.balance?.value ??
                                          '₱ 1324.00',
                                      style: TextStyleHelper
                                          .instance.headline24Black
                                          .copyWith(shadows: [
                                        Shadow(
                                          offset: Offset(0, 2),
                                          blurRadius: 2,
                                          color: appTheme.blackCustom,
                                        ),
                                      ]),
                                    ),
                                  ],
                                )),

                            SizedBox(height: 24.h),

                            // Action Buttons
                            Row(
                              children: [
                                CustomButton(
                                  text: 'Withdrawal',
                                  iconPath: ImageConstant.imgVectorWhiteA700,
                                  variant: CustomButtonVariant.gradient,
                                  width: 140.h,
                                  height: 36.h,
                                  onPressed: () =>
                                      controller.onWithdrawalPressed(),
                                ),
                                SizedBox(width: 12.h),
                                CustomButton(
                                  text: 'Deposit',
                                  iconPath: ImageConstant.imgVector,
                                  variant: CustomButtonVariant.gradient,
                                  width: 120.h,
                                  height: 36.h,
                                  backgroundColor: appTheme.colorFF76CD,
                                  onPressed: () =>
                                      controller.onDepositPressed(),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // VIP Badge
              Positioned(
                top: 55.h,
                right: 24.h,
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(14.h),
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.h),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgV4,
                        width: 24.h,
                        height: 24.h,
                      ),
                      SizedBox(width: 8.h),
                      Obx(() => Text(
                            controller.teamsCenterDashboardModel.value?.vipLevel
                                    ?.value ??
                                'VIP 4',
                            style: TextStyleHelper.instance.body14Bold,
                          )),
                    ],
                  ),
                ),
              ),

              // Success Button
              Positioned(
                top: 120.h,
                right: 15.h,
                child: GestureDetector(
                  onTap: () => controller.onSuccessPressed(),
                  child: Container(
                    width: 112.h,
                    height: 45.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF478A03),
                          appTheme.colorFF76CD,
                          Color(0xFF478A03)
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                      ),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(22.h),
                        bottomLeft: Radius.circular(18.h),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 3,
                          color: appTheme.blackCustom,
                        ),
                      ],
                    ),
                    child: Center(
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup839,
                        width: 24.h,
                        height: 24.h,
                      ),
                    ),
                  ),
                ),
              ),

              // Teams Center Title
              Positioned(
                top: 256.h,
                left: 15.h,
                child: Text(
                  'Teams center',
                  style:
                      TextStyleHelper.instance.title16Bold.copyWith(shadows: [
                    Shadow(
                      offset: Offset(0, 2),
                      blurRadius: 2,
                      color: appTheme.blackCustom,
                    ),
                  ]),
                ),
              ),

              // Records Section
              Positioned(
                top: 284.h,
                left: 15.h,
                child: Container(
                  width: 345.h,
                  height: 81.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2528,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      RecordItemWidget(
                        icon: ImageConstant.imgVector26x26,
                        title: 'Betting\nRecord',
                        onTap: () => controller.onBettingRecordPressed(),
                      ),
                      RecordItemWidget(
                        icon: ImageConstant.imgVector26x20,
                        title: 'Account\nRecord',
                        onTap: () => controller.onAccountRecordPressed(),
                      ),
                      RecordItemWidget(
                        icon: ImageConstant.imgVector25x26,
                        title: 'Deposit Record',
                        onTap: () => controller.onDepositRecordPressed(),
                      ),
                      RecordItemWidget(
                        icon: ImageConstant.imgVector26x24,
                        title: 'Withdrawal Record',
                        onTap: () => controller.onWithdrawalRecordPressed(),
                      ),
                    ],
                  ),
                ),
              ),

              // Main Menu Section
              Positioned(
                top: 375.h,
                left: 15.h,
                child: Container(
                  width: 345.h,
                  height: 280.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2528,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Column(
                    children: [
                      // Invite Item
                      FeatureMenuItemWidget(
                        icon: ImageConstant.imgInvite1,
                        title: 'Invite -',
                        subtitle: 'Reconnend friends\nTo join',
                        highlightText: ' jbet88 and Earn money',
                        onTap: () => controller.onInvitePressed(),
                      ),

                      // Spin Item
                      FeatureMenuItemWidget(
                        icon: ImageConstant.imgGroup12769,
                        title: 'Spin -',
                        subtitle: 'Win real money ',
                        highlightText: '₱500',
                        onTap: () => controller.onSpinPressed(),
                      ),

                      // Cashback Item
                      FeatureMenuItemWidget(
                        icon: ImageConstant.imgGroup120051,
                        title: 'Cashback -',
                        subtitle: 'Weekly ',
                        highlightText: 'Max:20%',
                        onTap: () => controller.onCashbackPressed(),
                      ),

                      // Sign-in Item
                      FeatureMenuItemWidget(
                        icon: ImageConstant
                            .imgAdd2e694b50907790800188bb93242cee3957bd96358f3sm3f1,
                        title: 'Sign-in -',
                        subtitle: 'Continuous login\nContinuous rewards',
                        onTap: () => controller.onSignInPressed(),
                      ),

                      // Gift Code Section
                      Container(
                        padding: EdgeInsets.all(16.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img235,
                              width: 36.h,
                              height: 36.h,
                            ),
                            SizedBox(width: 16.h),
                            Expanded(
                              child: Column(
                                children: [
                                  CustomInputField(
                                    controller: controller.giftCodeController,
                                    hintText: 'Enter the gift code',
                                  ),
                                  SizedBox(height: 4.h),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Gift Code',
                                      style: TextStyleHelper.instance.body13Bold
                                          .copyWith(
                                              color: appTheme.colorFF4B55),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 12.h),
                            CustomButton(
                              text: 'Exchange',
                              variant: CustomButtonVariant.solid,
                              backgroundColor: appTheme.colorFF363C,
                              width: 80.h,
                              height: 34.h,
                              onPressed: () => controller.onExchangePressed(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Extended Menu Section
              Positioned(
                top: 665.h,
                left: 15.h,
                child: Container(
                  width: 345.h,
                  height: 448.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2528,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  child: Obx(() => Column(
                        children: List.generate(
                          controller.menuItems.length,
                          (index) => MenuItemWidget(
                            model: controller.menuItems[index],
                            onTap: () => controller.onMenuItemPressed(index),
                          ),
                        ),
                      )),
                ),
              ),

              // Success Modal
              Obx(() => controller.isSuccessModalVisible.value
                  ? Positioned(
                      top: 308.h,
                      left: 127.h,
                      child: Container(
                        width: 120.h,
                        height: 120.h,
                        decoration: BoxDecoration(
                          color: appTheme.colorFF4B55,
                          border: Border.all(color: appTheme.colorFF282F),
                          borderRadius: BorderRadius.circular(12.h),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorWhiteA70043x50,
                              width: 50.h,
                              height: 43.h,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              'Success',
                              style: TextStyleHelper.instance.title18Bold,
                            ),
                          ],
                        ),
                      ),
                    )
                  : SizedBox()),
            ],
          ),
        ),
      ),
    );
  }
}
