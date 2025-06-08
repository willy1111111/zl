import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../widgets/custom_image_view.dart';
import './controller/wallet_deposit_type_selection_controller.dart';

class WalletDepositTypeSelectionScreen
    extends GetWidget<WalletDepositTypeSelectionController> {
  WalletDepositTypeSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Center(
        child: Container(
          width: 375.h,
          height: 812.h,
          color: appTheme.blackCustom,
          child: Stack(
            children: [
              // Modal Dialog
              Positioned(
                left: 15.h,
                top: 240.h,
                child: Container(
                  width: 345.h,
                  height: 246.h,
                  decoration: BoxDecoration(
                    color: appTheme.colorFF2528,
                    borderRadius: BorderRadius.circular(8.h),
                  ),
                  padding: EdgeInsets.all(16.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Modal Title
                      Text(
                        'Select deposit type',
                        style: TextStyleHelper.instance.title16BoldArial
                            .copyWith(height: 1.19),
                      ),
                      SizedBox(height: 32.h),

                      // Deposit Options Container
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Electronic Wallet Option
                          _buildDepositOption(
                            iconPath: ImageConstant.img27x41,
                            title: 'Electronic wallet',
                            gradientColors: [
                              Color(0xFFFFC61E),
                              Color(0xFFFF9F00)
                            ],
                            onTap: () => controller.onElectronicWalletTap(),
                          ),

                          // Bank Account Option
                          _buildDepositOption(
                            iconPath: ImageConstant.img36x44,
                            title: 'Bank Account',
                            gradientColors: [
                              Color(0xFF76CD00),
                              Color(0xFF478A03)
                            ],
                            onTap: () => controller.onBankAccountTap(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDepositOption({
    required String iconPath,
    required String title,
    required List<Color> gradientColors,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          // Icon Circle
          Container(
            width: 78.h,
            height: 78.h,
            decoration: BoxDecoration(
              color: appTheme.colorFF8089,
              shape: BoxShape.circle,
              border: Border.all(
                color: appTheme.colorFF2528,
                width: 6.h,
              ),
            ),
            child: Center(
              child: CustomImageView(
                imagePath: iconPath,
                height: iconPath.contains('27x41') ? 41.h : 44.h,
                width: iconPath.contains('27x41') ? 27.h : 36.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(height: 2.h),

          // Card
          Transform.translate(
            offset: Offset(0, -32.h),
            child: Container(
              width: 144.h,
              height: 117.h,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: gradientColors,
                ),
                borderRadius: BorderRadius.circular(6.h),
                boxShadow: [
                  BoxShadow(
                    color: appTheme.blackCustom,
                    offset: Offset(0, 4.h),
                    blurRadius: 4.h,
                  ),
                ],
              ),
              padding: EdgeInsets.only(
                top: 32.h,
                left: 8.h,
                right: 8.h,
                bottom: 16.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    title,
                    style: TextStyleHelper.instance.title16BoldArial
                        .copyWith(height: 1.19),
                  ),
                  SizedBox(height: 16.h),
                  CustomImageView(
                    imagePath: ImageConstant.imgFrame309,
                    height: 9.h,
                    width: 18.h,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
