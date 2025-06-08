import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import '../../../../widgets/custom_button.dart';
import '../../../../widgets/custom_image_view.dart';
import './controller/withdrawal_confirmation_controller.dart';

class WithdrawalConfirmationScreen
    extends GetWidget<WithdrawalConfirmationController> {
  const WithdrawalConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 375.h,
        height: 812.h,
        child: Stack(
          children: [
            // Background Image
            CustomImageView(
              imagePath: ImageConstant.imgImage1137,
              width: 375.h,
              height: 1132.h,
              fit: BoxFit.cover,
            ),

            // Dark Overlay
            Container(
              width: 375.h,
              height: 812.h,
              color: appTheme.blackCustom,
              child: Stack(
                children: [
                  // Crown Image
                  Positioned(
                    top: 75.h,
                    left: 120.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage360,
                      width: 136.h,
                      height: 78.h,
                    ),
                  ),

                  // Banner Image
                  Positioned(
                    top: 120.h,
                    left: 39.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImage540,
                      width: 298.h,
                      height: 78.h,
                    ),
                  ),

                  // Congratulations Text
                  Positioned(
                    top: 131.h,
                    left: 92.h,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFfffbdb), Color(0xFFffc82f)],
                        ),
                      ),
                      child: Text(
                        'Congratulations!',
                        style: TextStyleHelper.instance.headline26,
                      ),
                    ),
                  ),

                  // Main Content Card
                  Positioned(
                    top: 155.h,
                    left: 15.h,
                    child: Container(
                      width: 345.h,
                      height: 480.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF3f444b), Color(0xFF3f444b)],
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
                          // Withdrawal Account Label
                          Positioned(
                            top: 44.h,
                            left: 19.h,
                            child: Text(
                              'Withdrawal account：',
                              style: TextStyleHelper.instance.body14
                                  .copyWith(color: appTheme.colorFF8089),
                            ),
                          ),

                          // Withdrawal Account Value
                          Positioned(
                            top: 44.h,
                            left: 249.h,
                            child: Obx(() => Text(
                                  controller.withdrawalConfirmationModel.value
                                          ?.withdrawalAccount?.value ??
                                      '9409303930',
                                  style: TextStyleHelper.instance.body14
                                      .copyWith(color: appTheme.colorFF8089),
                                )),
                          ),

                          // Withdrawal Method Label
                          Positioned(
                            top: 66.h,
                            left: 21.h,
                            child: Text(
                              'Withdrawal method：',
                              style: TextStyleHelper.instance.body14
                                  .copyWith(color: appTheme.colorFF8089),
                            ),
                          ),

                          // Withdrawal Method Value
                          Positioned(
                            top: 67.h,
                            left: 236.h,
                            child: Obx(() => Text(
                                  controller.withdrawalConfirmationModel.value
                                          ?.withdrawalMethod?.value ??
                                      'Account wallet',
                                  style: TextStyleHelper.instance.body14
                                      .copyWith(color: appTheme.colorFF8089),
                                )),
                          ),

                          // Waiting Status Card
                          Positioned(
                            top: 98.h,
                            left: 13.h,
                            child: Container(
                              width: 319.h,
                              height: 194.h,
                              decoration: BoxDecoration(
                                color: appTheme.colorFF3032,
                                borderRadius: BorderRadius.circular(12.h),
                              ),
                              child: Stack(
                                children: [
                                  // Waiting Text
                                  Positioned(
                                    top: 9.h,
                                    left: 42.h,
                                    child: Text(
                                      'Waiting for withdrawal',
                                      style:
                                          TextStyleHelper.instance.title22Bold,
                                    ),
                                  ),

                                  // Shield Icon
                                  Positioned(
                                    top: 29.h,
                                    left: 97.h,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgImage744,
                                      width: 126.h,
                                      height: 126.h,
                                    ),
                                  ),

                                  // Loading Indicator
                                  Positioned(
                                    top: 100.h,
                                    left: 173.h,
                                    child: Container(
                                      width: 30.h,
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          begin: Alignment.topCenter,
                                          end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xFFffe239),
                                            Color(0xFFe4a50d)
                                          ],
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(15.h),
                                      ),
                                      child: Positioned(
                                        top: -4.h,
                                        left: 5.h,
                                        child: Obx(() => Text(
                                              controller.loadingDots.value,
                                              style: TextStyleHelper
                                                  .instance.headline26
                                                  .copyWith(
                                                      color:
                                                          appTheme.whiteCustom),
                                            )),
                                      ),
                                    ),
                                  ),

                                  // Money Amount
                                  Positioned(
                                    top: 140.h,
                                    left: 93.h,
                                    child: Row(
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgFrame2131330434,
                                          width: 40.h,
                                          height: 40.h,
                                        ),
                                        SizedBox(width: 8.h),
                                        Obx(() => Text(
                                              controller
                                                      .withdrawalConfirmationModel
                                                      .value
                                                      ?.withdrawalAmount
                                                      ?.value ??
                                                  '₱500.00',
                                              style: TextStyleHelper
                                                  .instance.title20Black,
                                            )),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          // Confirm Button
                          Positioned(
                            top: 316.h,
                            left: 10.h,
                            child: CustomButton(
                              text: 'Confirm withdrawal',
                              width: 325.h,
                              height: 40.h,
                              variant: CustomButtonVariant.gradient,
                              onTap: controller.onConfirmWithdrawal,
                            ),
                          ),

                          // Tips Section
                          Positioned(
                            top: 366.h,
                            left: 14.h,
                            child: Container(
                              width: 307.h,
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Tips:',
                                      style: TextStyleHelper.instance.body14
                                          .copyWith(
                                              color: appTheme.whiteCustom),
                                    ),
                                    TextSpan(
                                      text:
                                          ' After clicking [Confirm withdrawal], the withdrawal will enter the platform review stage.After successful verification，Withdraw  ₱500 to your Cash account',
                                      style: TextStyleHelper.instance.body14
                                          .copyWith(
                                              color: appTheme.colorFF8089),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
