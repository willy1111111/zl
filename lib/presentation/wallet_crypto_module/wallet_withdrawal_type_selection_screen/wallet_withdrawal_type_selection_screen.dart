import 'package:flutter/material.dart';

import '../../../../core/app_export.dart';
import './controller/wallet_withdrawal_type_selection_controller.dart';
import './widgets/withdrawal_type_option_widget.dart';

class WalletWithdrawalTypeSelectionScreen
    extends GetWidget<WalletWithdrawalTypeSelectionController> {
  const WalletWithdrawalTypeSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.blackCustom,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
              left: 15.h,
              top: 226.h,
              child: Container(
                width: 345.h,
                height: 360.h,
                decoration: BoxDecoration(
                  color: appTheme.colorFF2528,
                  borderRadius: BorderRadius.circular(8.h),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 32.h,
                      top: 24.h,
                      child: Container(
                        width: 280.h,
                        height: 26.h,
                        child: Text(
                          'SELECT WITHDRAWAL TYPE',
                          style: TextStyleHelper.instance.title20BoldArial2
                              .copyWith(height: 1.15),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 22.h,
                      top: 70.h,
                      child: Obx(() => WithdrawalTypeOptionWidget(
                            withdrawalType: controller.withdrawalTypes[0],
                            onTap: () => controller.onElectronicWalletTap(),
                          )),
                    ),
                    Positioned(
                      left: 22.h,
                      top: 163.h,
                      child: Obx(() => WithdrawalTypeOptionWidget(
                            withdrawalType: controller.withdrawalTypes[1],
                            onTap: () => controller.onBankAccountTap(),
                          )),
                    ),
                    Positioned(
                      left: 22.h,
                      top: 256.h,
                      child: Obx(() => WithdrawalTypeOptionWidget(
                            withdrawalType: controller.withdrawalTypes[2],
                            onTap: () => controller.onCryptoWalletTap(),
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
