import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/gaming_withdrawal_confirmation_controller.dart';

class GamingWithdrawalConfirmationScreen
    extends GetWidget<GamingWithdrawalConfirmationController> {
  const GamingWithdrawalConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: SizedBox(
        width: double.maxFinite,
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  // Background Image
                  CustomImageView(
                    imagePath: ImageConstant.imgImage1137,
                    height: 1132.h,
                    width: 375.h,
                    fit: BoxFit.cover,
                  ),

                  // Main Content
                  Positioned(
                    top: 125.h,
                    left: 15.h,
                    child: _buildWithdrawalCard(),
                  ),

                  // Bottom Icon
                  Positioned(
                    top: 655.h,
                    left: 172.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup848,
                      height: 32.h,
                      width: 32.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWithdrawalCard() {
    return Container(
      width: 345.h,
      height: 520.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF3F444B), Color(0xFF3F444B)],
        ),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.h),
          topRight: Radius.circular(20.h),
          bottomLeft: Radius.circular(12.h),
          bottomRight: Radius.circular(12.h),
        ),
      ),
      child: Stack(
        children: [
          // Background Gradient Section
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 345.h,
              height: 140.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xFF30B824), Color(0xFF062730)],
                ),
                borderRadius: BorderRadius.circular(12.h),
              ),
              child: Stack(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgF1,
                    height: 140.h,
                    width: 345.h,
                    fit: BoxFit.cover,
                    radius: BorderRadius.circular(12.h),
                  ),
                  Positioned(
                    top: 62.h,
                    left: 0,
                    child: Container(
                      width: 345.h,
                      height: 78.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF3F444B), Color(0xFF3F444B)],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Treasure Chest and Coins
          Positioned(
            top: 55.h,
            left: 111.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgTdr22,
              height: 79.h,
              width: 84.h,
            ),
          ),
          Positioned(
            top: 22.h,
            left: 121.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1100,
              height: 121.h,
              width: 121.h,
            ),
          ),
          Positioned(
            top: 86.h,
            left: 192.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgImage1104,
              height: 39.h,
              width: 41.h,
            ),
          ),

          // Main Title
          Positioned(
            top: 122.h,
            left: 53.h,
            child: SizedBox(
              width: 239.h,
              height: 43.h,
              child: Obx(
                () => Text(
                  controller.gamingWithdrawalConfirmationModel.value?.mainTitle
                          ?.value ??
                      'Get ₱500 for free',
                  style: TextStyleHelper.instance.headline26Black
                      .copyWith(height: 1.42),
                ),
              ),
            ),
          ),

          // Quick Cash Withdrawal Text
          Positioned(
            top: 167.h,
            left: 107.h,
            child: SizedBox(
              width: 132.h,
              height: 19.h,
              child: Obx(
                () => Text(
                  controller.gamingWithdrawalConfirmationModel.value
                          ?.quickCashText?.value ??
                      'Quick cash withdrawl',
                  style: TextStyleHelper.instance.body14Regular
                      .copyWith(color: appTheme.whiteCustom, height: 1.21),
                ),
              ),
            ),
          ),

          // Amount Display
          Positioned(
            top: 177.h,
            left: 128.h,
            child: SizedBox(
              width: 143.h,
              height: 65.h,
              child: Obx(
                () => Text(
                  controller.gamingWithdrawalConfirmationModel.value?.amount
                          ?.value ??
                      '₱92.59',
                  style: TextStyleHelper.instance.display40Black
                      .copyWith(height: 1.43),
                ),
              ),
            ),
          ),

          // Money Icon
          Positioned(
            top: 189.h,
            left: 74.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgGroup12734,
              height: 38.h,
              width: 40.h,
            ),
          ),

          // Withdrawal Details
          Positioned(
            top: 241.h,
            left: 19.h,
            child: Text(
              'Withdrawal account：',
              style:
                  TextStyleHelper.instance.body14Regular.copyWith(height: 1.21),
            ),
          ),
          Positioned(
            top: 263.h,
            left: 21.h,
            child: Text(
              'Withdrawal method：',
              style:
                  TextStyleHelper.instance.body14Regular.copyWith(height: 1.21),
            ),
          ),
          Positioned(
            top: 241.h,
            left: 249.h,
            child: Obx(
              () => Text(
                controller.gamingWithdrawalConfirmationModel.value
                        ?.withdrawalAccount?.value ??
                    '9409303930',
                style: TextStyleHelper.instance.body14Regular
                    .copyWith(height: 1.21),
              ),
            ),
          ),
          Positioned(
            top: 264.h,
            left: 236.h,
            child: Obx(
              () => Text(
                controller.gamingWithdrawalConfirmationModel.value
                        ?.withdrawalMethod?.value ??
                    'Account wallet',
                style: TextStyleHelper.instance.body14Regular
                    .copyWith(height: 1.21),
              ),
            ),
          ),

          // Status Panel
          Positioned(
            top: 290.h,
            left: 13.h,
            child: _buildStatusPanel(),
          ),

          // Get Bonus Button
          Positioned(
            top: 425.h,
            left: 237.h,
            child: GestureDetector(
              onTap: () => controller.onGetBonusTap(),
              child: SizedBox(
                width: 98.h,
                height: 29.h,
                child: Stack(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUnion,
                      height: 29.h,
                      width: 98.h,
                    ),
                    Positioned(
                      top: -2.h,
                      left: 6.h,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgMaskGroup,
                        height: 22.h,
                        width: 22.h,
                      ),
                    ),
                    Positioned(
                      top: 2.h,
                      left: 30.h,
                      child: Text(
                        'Get Bonus',
                        style: TextStyleHelper.instance.body12Bold
                            .copyWith(height: 1.17),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Invite Friends Button
          Positioned(
            top: 455.h,
            left: 10.h,
            child: GestureDetector(
              onTap: () => controller.onInviteFriendsTap(),
              child: Container(
                width: 325.h,
                height: 40.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                  ),
                  borderRadius: BorderRadius.circular(20.h),
                ),
                child: Center(
                  child: Text(
                    'Invite friends to help',
                    style: TextStyleHelper.instance.body14Bold
                        .copyWith(height: 1.21),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusPanel() {
    return Container(
      width: 319.h,
      height: 125.h,
      decoration: BoxDecoration(
        color: appTheme.colorFF3032,
        borderRadius: BorderRadius.circular(12.h),
      ),
      child: Stack(
        children: [
          // Payment Request Status
          Positioned(
            top: 16.h,
            left: 14.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgSubtract,
              height: 20.h,
              width: 20.h,
            ),
          ),
          Positioned(
            top: 16.h,
            left: 55.h,
            child: Text(
              'Payment request submitted',
              style: TextStyleHelper.instance.body14Regular
                  .copyWith(color: appTheme.colorFF85D4, height: 1.21),
            ),
          ),

          // Task Progress
          Positioned(
            top: 53.h,
            left: 14.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgSubtract,
              height: 20.h,
              width: 20.h,
            ),
          ),
          Positioned(
            top: 54.h,
            left: 53.h,
            child: Obx(
              () => Text(
                controller.gamingWithdrawalConfirmationModel.value
                        ?.taskProgressText?.value ??
                    '₱7.64 Remaining task progress',
                style: TextStyleHelper.instance.body14Regular
                    .copyWith(color: appTheme.colorFF85D4, height: 1.21),
              ),
            ),
          ),

          // Withdrawal Success
          Positioned(
            top: 91.h,
            left: 14.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgSubtractBlueGray400,
              height: 20.h,
              width: 20.h,
            ),
          ),
          Positioned(
            top: 91.h,
            left: 56.h,
            child: SizedBox(
              width: 197.h,
              height: 19.h,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '₱100.00',
                      style: TextStyleHelper.instance.body14Regular
                          .copyWith(color: appTheme.colorFFFF57, height: 1.21),
                    ),
                    TextSpan(
                      text: '  ',
                      style: TextStyleHelper.instance.body14Regular
                          .copyWith(color: appTheme.colorFF98A7, height: 1.21),
                    ),
                    TextSpan(
                      text: 'Withdraw successfully',
                      style: TextStyleHelper.instance.body14Regular
                          .copyWith(color: appTheme.colorFFC0C8, height: 1.21),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
