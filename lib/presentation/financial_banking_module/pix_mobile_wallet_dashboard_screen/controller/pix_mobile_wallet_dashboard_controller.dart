import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import '../models/pix_mobile_wallet_dashboard_model.dart';
import '../models/wallet_card_item_model.dart';

class PixMobileWalletDashboardController extends GetxController {
  Rx<PixMobileWalletDashboardModel> pixMobileWalletDashboardModelObj =
      PixMobileWalletDashboardModel().obs;

  RxList<WalletCardItemModel> walletCardsList = <WalletCardItemModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    _initializeWalletCards();
  }

  void _initializeWalletCards() {
    walletCardsList.value = [
      WalletCardItemModel(
        gradientColors: Rx<List<Color>>([Color(0xFF33C38F), Color(0xFF3352C3)]),
        cardImage: ImageConstant
            .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52.obs,
        pixLogo: ImageConstant.imgVector.obs,
        pixMobileText: 'PIX-MOBILE'.obs,
        cardNumber: '******8927'.obs,
        expiryDate: '2023-05-03'.obs,
        showDetails: true.obs,
        isPrimaryCard: true.obs,
      ),
      WalletCardItemModel(
        gradientColors: Rx<List<Color>>([Color(0xFFFF4236), Color(0xFF1B3DF0)]),
        cardImage: ImageConstant
            .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52.obs,
        showDetails: false.obs,
        isPrimaryCard: false.obs,
      ),
      WalletCardItemModel(
        gradientColors: Rx<List<Color>>([Color(0xFFFFBB36), Color(0xFFF01AC1)]),
        cardImage: ImageConstant
            .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52.obs,
        showDetails: false.obs,
        isPrimaryCard: false.obs,
      ),
      WalletCardItemModel(
        gradientColors: Rx<List<Color>>([Color(0xFF3670FF), Color(0xFF19F07C)]),
        cardImage: ImageConstant
            .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52.obs,
        showDetails: false.obs,
        isPrimaryCard: false.obs,
      ),
      WalletCardItemModel(
        gradientColors: Rx<List<Color>>([Color(0xFFD219F0), Color(0xFFFFAF36)]),
        cardImage: ImageConstant
            .img5fd78a7083dbb13838c108e33bfeb03df4321c632efa9arlwcs52.obs,
        showDetails: false.obs,
        isPrimaryCard: false.obs,
      ),
    ];
  }

  void onTapWalletCard(WalletCardItemModel cardModel) {
    // Handle wallet card tap action
    // You can add navigation or other actions here
    print('Wallet card tapped: ${cardModel.cardNumber?.value ?? 'Card'}');
  }
}