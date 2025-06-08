import 'package:get/get.dart';
import '../../../core/app_export.dart';

class AmountOptionModel {
  Rx<String>? amount;
  Rx<String>? bonus;
  Rx<bool>? isSelected;
  Rx<bool>? hasHotBadge;

  AmountOptionModel({
    this.amount,
    this.bonus,
    this.isSelected,
    this.hasHotBadge,
  });
}
