import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/rewards_congratulations_controller.dart';

class ProfileCardWidget extends StatelessWidget {
  final String userName;
  final String userId;
  final String balance;
  final String vipLevel;

  ProfileCardWidget({
    Key? key,
    required this.userName,
    required this.userId,
    required this.balance,
    required this.vipLevel,
  }) : super(key: key);

  var controller = Get.find<RewardsCongratulationsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 345.h,
      height: 192.h,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.133, 0),
          end: Alignment(1, 1),
          colors: [Color(0xFF76CD00), Color(0xFF478A03)],
        ),
        borderRadius: BorderRadius.circular(8.h),
        border: Border.all(color: appTheme.colorFF85D4, width: 1.h),
      ),
      child: Stack(
        children: [
          // Background images
          CustomImageView(
            imagePath: ImageConstant.img22,
            height: 163.h,
            width: 294.h,
            fit: BoxFit.cover,
          ),

          Positioned(
            top: 60.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle412,
              height: 131.h,
              width: 343.h,
            ),
          ),

          Positioned(
            top: 60.h,
            left: 1.h,
            child: CustomImageView(
              imagePath: ImageConstant.imgMaskGroup131x343,
              height: 131.h,
              width: 343.h,
            ),
          ),

          // Profile content container
          Positioned(
            top: 5.h,
            left: 6.h,
            child: Container(
              width: 333.h,
              height: 182.h,
              decoration: BoxDecoration(
                border: Border.all(color: appTheme.colorFF85D4, width: 1.h),
                borderRadius: BorderRadius.circular(8.h),
              ),
              child: Stack(
                children: [
                  // User avatar
                  Positioned(
                    top: 10.h,
                    left: 9.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgGroup466,
                      height: 40.h,
                      width: 40.h,
                    ),
                  ),

                  // Notification icon
                  Positioned(
                    top: 35.h,
                    left: 165.h,
                    child: CustomImageView(
                      imagePath: ImageConstant.img1BlueGray100,
                      height: 10.h,
                      width: 10.h,
                    ),
                  ),

                  // User info
                  Positioned(
                    top: 12.h,
                    left: 55.h,
                    child: Text(
                      userName,
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(color: appTheme.colorFFE6E6, height: 1.21),
                    ),
                  ),

                  Positioned(
                    top: 30.h,
                    left: 55.h,
                    child: Text(
                      userId,
                      style: TextStyleHelper.instance.body14Black
                          .copyWith(height: 1.43),
                    ),
                  ),

                  // Balance info
                  Positioned(
                    top: 71.h,
                    left: 9.h,
                    child: Text(
                      'Balance',
                      style: TextStyleHelper.instance.body14Bold
                          .copyWith(height: 1.21),
                    ),
                  ),

                  Positioned(
                    top: 96.h,
                    left: 9.h,
                    child: Text(
                      '₱ $balance',
                      style: TextStyleHelper.instance.headline24Black
                          .copyWith(height: 0.75, shadows: [
                        Shadow(
                          offset: Offset(0, 2.h),
                          blurRadius: 2.h,
                          color: appTheme.blackCustom,
                        ),
                      ]),
                    ),
                  ),

                  // Withdrawal button
                  Positioned(
                    top: 134.h,
                    left: 9.h,
                    child: GestureDetector(
                      onTap: () => controller.onWithdrawalPressed(),
                      child: Container(
                        width: 136.h,
                        height: 36.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFFFFC61E), Color(0xFFFF9F00)],
                          ),
                          borderRadius: BorderRadius.circular(18.h),
                          border: Border.all(
                              color: appTheme.colorFFFFC6, width: 1.h),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVector11x16,
                              height: 11.h,
                              width: 16.h,
                            ),
                            SizedBox(width: 21.h),
                            Text(
                              'Withdrawal',
                              style: TextStyleHelper.instance.body14Black
                                  .copyWith(height: 1.43),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // Deposit button
                  Positioned(
                    top: 134.h,
                    left: 155.h,
                    child: GestureDetector(
                      onTap: () => controller.onDepositPressed(),
                      child: Container(
                        width: 124.h,
                        height: 36.h,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF76CD00), Color(0xFF478A03)],
                          ),
                          borderRadius: BorderRadius.circular(18.h),
                          border: Border.all(
                              color: appTheme.colorFF85D4, width: 1.h),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorWhiteA70011x16,
                              height: 11.h,
                              width: 16.h,
                            ),
                            SizedBox(width: 22.h),
                            Text(
                              'Deposit',
                              style: TextStyleHelper.instance.body14Black
                                  .copyWith(height: 1.43),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  // VIP badge
                  Positioned(
                    top: 10.h,
                    left: 245.h,
                    child: Container(
                      width: 79.h,
                      height: 28.h,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF363C41), Color(0xFF2B3035)],
                        ),
                        borderRadius: BorderRadius.circular(14.h),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgV4,
                            height: 24.h,
                            width: 24.h,
                          ),
                          SizedBox(width: 10.h),
                          Text(
                            vipLevel,
                            style: TextStyleHelper.instance.body14Bold
                                .copyWith(height: 1.21),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Special button
          Positioned(
            top: 75.h,
            left: 233.h,
            child: GestureDetector(
              onTap: () => controller.onSpecialButtonPressed(),
              child: Container(
                width: 112.h,
                height: 45.h,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment(0.91, 0),
                    end: Alignment(0, 0),
                    colors: [
                      Color(0xFF478A03),
                      appTheme.colorFF76CD,
                      Color(0xFF478A03)
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(22.h),
                    bottomLeft: Radius.circular(18.h),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 2.h),
                      blurRadius: 3.h,
                      color: appTheme.blackCustom,
                    ),
                  ],
                ),
                child: Center(
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGroup839,
                    height: 24.h,
                    width: 24.h,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
