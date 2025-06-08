import 'package:get/get.dart';

import '../../../core/app_export.dart';

class MoneyRainPromotionModel {
  Rx<String>? balance;
  Rx<bool>? isMoneyRainModalVisible;
  Rx<int>? selectedSideMenuIndex;

  MoneyRainPromotionModel({
    this.balance,
    this.isMoneyRainModalVisible,
    this.selectedSideMenuIndex,
  });
}
