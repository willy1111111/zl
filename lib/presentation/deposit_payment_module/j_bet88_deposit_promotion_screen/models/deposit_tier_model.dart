import 'package:get/get.dart';
import '../../../core/app_export.dart';

class DepositTierModel {
  Rx<String>? tierNumber;
  Rx<String>? tierType;
  Rx<String>? extraPercentage;
  Rx<String>? bonusPercentage;
  Rx<String>? upToPercentage;
  Rx<bool>? isSelected;

  DepositTierModel({
    this.tierNumber,
    this.tierType,
    this.extraPercentage,
    this.bonusPercentage,
    this.upToPercentage,
    this.isSelected,
  });
}
