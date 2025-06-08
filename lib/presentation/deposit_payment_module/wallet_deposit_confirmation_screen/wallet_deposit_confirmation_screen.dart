import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import './controller/wallet_deposit_confirmation_controller.dart';

class WalletDepositConfirmationScreen
    extends GetWidget<WalletDepositConfirmationController> {
  const WalletDepositConfirmationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.colorFF0000,
      body: Stack(
        children: [
          // Background Content (Blurred/Dimmed)
          Container(
            width: double.infinity,
            height: double.infinity,
            color: appTheme.color800000,
          ),

          // Confirmation Modal
          Positioned(
            left: 24.h,
            top: 259.h,
            child: Container(
              width: 328.h,
              height: 167.h,
              decoration: BoxDecoration(
                color: appTheme.colorFF1E20,
                borderRadius: BorderRadius.circular(12.h),
              ),
              child: Column(
                children: [
                  // Modal Header
                  Padding(
                    padding: EdgeInsets.only(
                      top: 11.h,
                      bottom: 24.h,
                      left: 20.h,
                      right: 20.h,
                    ),
                    child: Text(
                      'Confirmation',
                      style: TextStyleHelper.instance.title18Bold
                          .copyWith(color: appTheme.colorFFFFFF, height: 1.17),
                      textAlign: TextAlign.center,
                    ),
                  ),

                  // Modal Content
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 31.h),
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20.h),
                        child: Center(
                          child: Text(
                            'Success！please go to the deposit page',
                            style: TextStyleHelper.instance.title16Bold
                                .copyWith(
                                    color: appTheme.colorFF8089, height: 1.25),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),

                  // Modal Footer with GO Button
                  Container(
                    width: double.infinity,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: appTheme.colorFF2528,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.h),
                        bottomRight: Radius.circular(12.h),
                      ),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () => controller.onGoButtonPressed(),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16.h,
                            vertical: 8.h,
                          ),
                          child: Text(
                            'GO',
                            style: TextStyleHelper.instance.title20Bold
                                .copyWith(height: 1.15),
                          ),
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
    );
  }
}
