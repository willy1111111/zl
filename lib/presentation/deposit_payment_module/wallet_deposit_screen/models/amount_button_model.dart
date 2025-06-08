import 'package:get/get.dart';
import '../../../core/app_export.dart';

class AmountButtonModel {
  Rx<String>? amount;
  Rx<String>? bonus;
  Rx<bool>? hasHotBadge;

  AmountButtonModel({
    this.amount,
    this.bonus,
    this.hasHotBadge,
  });
}
