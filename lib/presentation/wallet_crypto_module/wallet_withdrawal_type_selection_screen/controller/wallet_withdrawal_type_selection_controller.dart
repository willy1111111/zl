import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/wallet_withdrawal_type_selection_model.dart';
import '../models/withdrawal_type_model.dart';

class WalletWithdrawalTypeSelectionController extends GetxController {
  Rx<WalletWithdrawalTypeSelectionModel> walletWithdrawalTypeSelectionModel =
      WalletWithdrawalTypeSelectionModel().obs;

  RxList<WithdrawalTypeModel> withdrawalTypes = <WithdrawalTypeModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    initializeWithdrawalTypes();
  }

  void initializeWithdrawalTypes() {
    withdrawalTypes.value = [
      WithdrawalTypeModel(
        id: '1'.obs,
        title: 'Electronic wallet'.obs,
        iconPath: ImageConstant.imgWhiteA700.obs,
        arrowIconPath: ImageConstant.imgFrame309.obs,
        addIconPath: ImageConstant.imgVector.obs,
        gradientColors: Rx<List<Color>>([Color(0xFFFFC51D), Color(0xFFD07A02)]),
        addButtonColor: Color(0xFFF5C046).obs,
      ),
      WithdrawalTypeModel(
        id: '2'.obs,
        title: 'Bank Account'.obs,
        iconPath: ImageConstant.imgFrame2131329936.obs,
        arrowIconPath: ImageConstant.imgFrame309.obs,
        addIconPath: ImageConstant.imgVector.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF4EB6EA), Color(0xFF1F51B9)]),
        addButtonColor: Color(0xFF56A2FF).obs,
      ),
      WithdrawalTypeModel(
        id: '3'.obs,
        title: 'Crypto  Wallet'.obs,
        iconPath: ImageConstant.imgFrame2131329936WhiteA700.obs,
        arrowIconPath: ImageConstant.imgFrame309.obs,
        addIconPath: ImageConstant.imgVector.obs,
        gradientColors: Rx<List<Color>>([Color(0xFF6FC300), Color(0xFF3F7703)]),
        addButtonColor: Color(0xFF96D248).obs,
      ),
    ];
  }

  void onElectronicWalletTap() {
    Get.toNamed(AppRoutes.electronicWalletWithdrawalScreen);
  }

  void onBankAccountTap() {
    Get.toNamed(AppRoutes.walletBankAccountsWithdrawalScreen);
  }

  void onCryptoWalletTap() {
    Get.toNamed(AppRoutes.cryptoWalletWithdrawalScreen);
  }
}
