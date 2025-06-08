import 'package:get/get.dart';
import '../../../../../core/app_export.dart';

class VipUpgradeRewardsModel {
  Rx<String>? title;
  Rx<String>? currencyAmount;

  VipUpgradeRewardsModel({
    this.title,
    this.currencyAmount,
  }) {
    title = title ?? 'Vip'.obs;
    currencyAmount = currencyAmount ?? '₱19800.00'.obs;
  }
}
